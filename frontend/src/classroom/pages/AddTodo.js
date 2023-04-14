import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/classroom/todo/'
function AddTodo() {
  const [data, setdata] = useState({
    title: '',
    is_finished: false,
    status: '',
  })

  let handlechange = (event) => {
    setdata({
      ...data,
      [event.target.name]: event.target.value,
    })
  }
  const submitform = () => {
    const formdata = new FormData()
    formdata.append('title', data.title)
    formdata.append('is_finished', data.is_finished)
    axios
      .post(baseurl, formdata)
      .then((res) => {
        setdata({
          status: 'true',
        })
      })
      .catch((err) => {
        console.log(err)
        setdata({ status: 'false' })
      })
  }
  return (
    <>
      <div className="container">
        <h1 className="text-center">Add Todo</h1>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label text-left">
            Title
          </label>
          <input
            type="text"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder=""
            name="title"
            onChange={handlechange}
          />
        </div>
        <div class="mb-3">
          <div class="form-check">
            <input
              class="form-check-input"
              type="checkbox"
              value=""
              id="flexCheckDefault"
              name="is_finished"
            />
            <label class="form-check-label" for="flexCheckDefault">
              Is finished
            </label>
          </div>
        </div>
        <div class="mb-3">
          <button
            class="btn btn-primary btn-outline-primary"
            type="submit"
            onClick={submitform}
          >
            Submit
          </button>
        </div>
      </div>
    </>
  )
}

export default AddTodo
