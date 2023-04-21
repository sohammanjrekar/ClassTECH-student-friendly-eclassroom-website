import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/quiz/addquiz/'

function AddQuiz() {
  const [data, setdata] = useState({
    title: '',
    detail: '',
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
    formdata.append('detail', data.detail)
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
        <h1 className="text-center">Add Quiz</h1>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label">
            Title
          </label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder="name@example.com"
            onChange={handlechange}
            name="title"
          />
        </div>
        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">
            Detail
          </label>
          <textarea
            class="form-control"
            id="exampleFormControlTextarea1"
            rows="3"
            onChange={handlechange}
            name="detail"
          ></textarea>
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

export default AddQuiz
