import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/core/contactus/'
const Contactus = () => {
  const [data, setdata] = useState({
    full_name: '',
    email: '',
    message: '',
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
    formdata.append('full_name', data.full_name)
    formdata.append('email', data.email)
    formdata.append('message', data.message)
    console.log(data.full_name)
    console.log(formdata)
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
      <div className="container my-3">
        {' '}
        <form
          id="contact-me"
          class="w-full mx-auto max-w-3xl bg-white shadow p-8 text-gray-700 "
        >
          <h2 class="w-full my-2 text-3xl font-bold leading-tight my-5">
            Contact form
          </h2>
          <div class="flex flex-wrap mb-6">
            <div class="relative w-full appearance-none label-floating">
              <input
                class="tracking-wide py-2 px-4 mb-3 leading-relaxed appearance-none block w-full bg-gray-200 border border-gray-200 rounded focus:outline-none focus:bg-white focus:border-gray-500"
                id="name"
                type="text"
                placeholder="Your name"
                required
                onChange={handlechange}
                name="full_name"
              />
              <label
                for="name"
                class="absolute tracking-wide py-2 px-4 mb-4 opacity-0 leading-tight block top-0 left-0 cursor-text"
              >
                Your name
              </label>
            </div>
          </div>
          <div class="flex flex-wrap mb-6">
            <div class="relative w-full appearance-none label-floating">
              <input
                class="tracking-wide py-2 px-4 mb-3 leading-relaxed appearance-none block w-full bg-gray-200 border border-gray-200 rounded focus:outline-none focus:bg-white focus:border-gray-500"
                id="name"
                type="text"
                placeholder="Your email"
                onChange={handlechange}
                name="email"
                required
              />
              <label
                for="name"
                class="absolute tracking-wide py-2 px-4 mb-4 opacity-0 leading-tight block top-0 left-0 cursor-text"
              >
                Your email
              </label>
            </div>
          </div>

          <div class="flex flex-wrap mb-6">
            <div class="relative w-full appearance-none label-floating">
              <textarea
                class="autoexpand tracking-wide py-2 px-4 mb-3 leading-relaxed appearance-none block w-full bg-gray-200 border border-gray-200 rounded focus:outline-none focus:bg-white focus:border-gray-500"
                id="message"
                type="text"
                onChange={handlechange}
                placeholder="Message..."
                name="message"
              ></textarea>
              <label
                for="message"
                class="absolute tracking-wide py-2 px-4 mb-4 opacity-0 leading-tight block top-0 left-0 cursor-text"
              >
                Message...
              </label>
            </div>
          </div>

          <div class="">
            <button
              class="w-full shadow bg-teal-400 hover:bg-teal-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded"
              type="submit"
              onClick={submitform}
            >
              Send
            </button>
          </div>
        </form>
      </div>
    </>
  )
}

export default Contactus
