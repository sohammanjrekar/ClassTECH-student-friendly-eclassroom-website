import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/quiz/addquestion/'
function AddQuestion() {
  const [data, setdata] = useState({
    Question: '',
    ans1: '',
    ans2: '',
    ans3: '',
    ans4: '',
    right_ans: '',
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
    formdata.append('Question', data.Question)
    formdata.append('ans1', data.ans1)
    formdata.append('ans2', data.ans2)
    formdata.append('ans3', data.ans3)
    formdata.append('ans4', data.ans4)
    formdata.append('right_ans', data.right_ans)
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
        <h1 className="text-center">Add Question</h1>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label text-left">
            Question
          </label>
          <input
            type="text"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder=""
            name="Question"
            onChange={handlechange}
          />
        </div>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label text-left">
            Option 1
          </label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder=""
            name="ans1"
            onChange={handlechange}
          />
        </div>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label text-left">
            Option 2
          </label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder=""
            name="ans2"
            onChange={handlechange}
          />
        </div>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label text-left">
            Option 3
          </label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder=""
            name="ans3"
            onChange={handlechange}
          />
        </div>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label text-left">
            Option 4
          </label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder=""
            name="ans4"
            onChange={handlechange}
          />
        </div>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label text-left">
            Right Answer
          </label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            name="right_ans"
            placeholder=""
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

export default AddQuestion
