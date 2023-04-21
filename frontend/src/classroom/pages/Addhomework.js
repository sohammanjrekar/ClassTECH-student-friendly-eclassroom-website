import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/classroom/homework/'
function Addhomework() {
  const [data, setdata] = useState({
    subject: '',
    title: '',
    description: '',
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
    formdata.append('subject', data.subject)
    formdata.append('description', data.description)
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
      {' '}
      <div className="container">
        <h1 className="text-center">Add Homework</h1>
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
          <label for="exampleFormControlInput1" class="form-label text-left">
            Subject
          </label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder=""
            name="subject"
            onChange={handlechange}
          />
        </div>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label text-left">
            Description
          </label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder=""
            name="description"
            onChange={handlechange}
          />
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

export default Addhomework
