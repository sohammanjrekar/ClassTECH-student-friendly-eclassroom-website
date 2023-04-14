import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/core/teacherlogin/'
function Login() {
  const [data, setdata] = useState({
    email: '',
    password: '',
    status: '',
  })

  const handlechange = (event) => {
    setdata({
      ...data,
      [event.target.name]: event.target.value,
    })
  }
  const submitform = () => {
    const formdata = new FormData()
    formdata.append('email', data.email)
    formdata.append('password', data.password)
    axios
      .post(baseurl, data)
      .then((res) => {
        setdata({
          status: 'true',
        })
        console.log(res.data)
      })
      .catch((err) => {
        console.log(err)
        setdata({ status: 'false' })
      })
  }

  return (
    <>
      <div className="bg-white p-5 max-w-md mx-auto rounded shadow-sm">
        <h2 className="text-4xl px-4 ">Log In</h2>
        <form className="mt-10 space-y-8">
          <input
            className="w-full border rounded h-12 px-4 focus:outline-none"
            placeholder="Email adress "
            value={data.email}
            onChange={handlechange}
            name="email"
            type="email"
          />

          <div className="flex items-center ">
            <input
              className="w-full border rounded h-12 px-4 focus:outline-none -mr-7"
              placeholder="Password"
              type="password"
              value={data.password}
              onChange={handlechange}
              name="password"
            />
          </div>
          <div>
            <div className="flex flex-col md:flex-row md:items-center justify-between ">
              <input
                className="bg-orange-500 text-sm active:bg-gray-700 cursor-pointer font-regular text-white px-4 py-2 rounded uppercase"
                type="submit"
                value="login now"
                onChange={handlechange}
                onClick={submitform}
              />
              <p
                className="text-gray-400 text-sm 
            underline self-center 
            md:self-auto mt-4 md:mt-0"
              >
                Forgot your password?
              </p>
            </div>
          </div>
        </form>
      </div>
    </>
  )
}

export default Login
