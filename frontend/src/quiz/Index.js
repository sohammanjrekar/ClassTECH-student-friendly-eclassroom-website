import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/quiz/addquiz/'
function Index() {
  const [data, setdata] = useState([])

  let handlechange = (event) => {
    setdata({
      ...data,
      [event.target.name]: event.target.files[0],
    })
  }

  useEffect(() => {
    try {
      axios.get(baseurl).then((res) => {
        setdata(res.data)
      })
    } catch (err) {
      console.log(err)
    }
  }, [])
  console.log(data)
  return (
    <>
      Index quiz
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
                    <p class="card-text">{course.detail}</p>
                    <p class="card-text">
                      <small class="text-body-secondary">
                        {course.add_time}
                      </small>
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

export default Index
