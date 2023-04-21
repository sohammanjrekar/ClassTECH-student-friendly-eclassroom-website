import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
const baseurl = 'http://127.0.0.1:8000/classroom/homework/'
const todourl = 'http://127.0.0.1:8000/classroom/todo/'
const noteurl = 'http://127.0.0.1:8000/classroom/note/'
function Classroom() {
  const [data, setdata] = useState([])
  const [tododata, todosetdata] = useState([])
  const [notedata, notesetdata] = useState([])
  let handlechange = (event) => {
    setdata({
      ...data,
      [event.target.name]: event.target.files[0],
    })
    todosetdata({
      ...tododata,
      [event.target.name]: event.target.files[0],
    })
    notesetdata({
      ...notedata,
      [event.target.name]: event.target.files[0],
    })
  }

  useEffect(() => {
    try {
      axios.get(baseurl).then((res) => {
        setdata(res.data)
      })
      axios.get(todourl).then((res) => {
        todosetdata(res.data)
      })
      axios.get(noteurl).then((res) => {
        notesetdata(res.data)
      })
    } catch (err) {
      console.log(err)
    }
  }, [])
  return (
    <>
      <h1>Homework</h1>
      <div class="row row-cols-1 row-cols-md-2 g-4">
        {data.map((course, index) => (
          <div class="col">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="/5.jpg" class="img-fluid rounded-start" alt="..." />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">{course.title}</h5>
                    <p class="card-text">{course.description}</p>
                    <p class="card-text">
                      <small class="text-body-secondary">
                        {course.subject}
                      </small>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        ))}
      </div>
      <br />
      <br />
      <br />
      <h1 className="text-center my-4">todos</h1>
      <div class="list-group">
        {tododata.map((todo, index) => (
          <Link href="#" class="list-group-item list-group-item-action">
            Task {index + 1} &nbsp; &nbsp; &nbsp; {todo.title}
          </Link>
        ))}
      </div>
      <h1 className="text-center my-4">Note</h1>
      <div class="row row-cols-1 row-cols-md-2 g-4">
        {notedata.map((note, index) => (
          <div class="col">
            <div class="card">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="/5.jpg" class="img-fluid rounded-start" alt="..." />
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">{note.title}</h5>
                    <p class="card-text">{note.description}</p>
                    <p class="card-text">
                      <small class="text-body-secondary">{note.subject}</small>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        ))}
      </div>
    </>
  )
}

export default Classroom
