import React from 'react'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/core/teacherlogin/'
function StudentProfile() {
  const [data, setdata] = useState({
    full_name: '',
    email: '',
    password: '',
    mobileno: '',
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
    formdata.append('password', data.password)
    formdata.append('mobileno', data.mobileno)
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
      <div className="flex min-h-screen bg-white">
        {data.status === 'true' && (
          <div class="alert alert-success" role="alert">
            success
          </div>
        )}
        {data.status === 'false' && (
          <div class="alert alert-danger" role="alert">
            fail
          </div>
        )}
        <div className="w-1/2 bg-cover md:block hidden">
          <img id="register" src="/1.jpg" alt=""></img>
        </div>

        <div className="md:w-1/2 max-w-lg mx-auto my-24 px-4 shadow-none">
          <div className="text-left p-0 font-sans">
            <h1 className=" text-gray-800 text-3xl font-medium">
              Create an account for free
            </h1>
            <h3 className="p-1 text-gray-700">
              Free forever. No payment needed.
            </h3>
          </div>
          <form action="#" className="p-0">
            <div className="mt-2 text-left">
              <label for="name" className="sc-bqyKva ePvcBv">
                Full Name
              </label>
              <input
                type="text"
                className="block w-full p-2 border rounded border-gray-300 focus:outline-none focus:ring-1 focus:ring-gray-400 focus:border-transparent "
                placeholder="Full Name"
                name="full_name"
                onChange={handlechange}
              />
            </div>
            <div className="mt-2 text-left">
              <label for="email" className="sc-bqyKva ePvcBv">
                Email
              </label>
              <input
                type="text"
                className="block w-full p-2 border rounded border-gray-300 focus:outline-none focus:ring-1 focus:ring-gray-400 focus:border-transparent "
                placeholder="Email"
                name="email"
                onChange={handlechange}
              />
            </div>

            <div className="mt-2 text-left">
              <label for="password" className="sc-bqyKva ePvcBv">
                Password
              </label>
              <input
                type="password"
                className="block w-full p-2 border rounded border-gray-300 focus:outline-none focus:ring-1 focus:ring-gray-400 focus:border-transparent  "
                placeholder="Password"
                onChange={handlechange}
                name="password"
              />
            </div>
            <div className="mt-2 text-left">
              <label for="mobileno" className="sc-bqyKva ePvcBv">
                Mobile Number
              </label>
              <input
                type="text"
                className="block w-full p-2 border rounded border-gray-300 focus:outline-none focus:ring-1 focus:ring-gray-400 focus:border-transparent  "
                placeholder="Mobile No"
                onChange={handlechange}
                name="mobileno"
              />
            </div>



            <div className="mt-2 text-left">
              <label for="mobileno" className="sc-bqyKva ePvcBv">
               Profile image
              </label>
              <div class="input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm">
                <input id="upload" type="file" onchange="readURL(this);" class="form-control border-0"/>
                <label id="upload-label" for="upload" class="font-weight-light text-muted">Choose file</label>
                <div class="input-group-append">
                    <label for="upload" class="btn btn-light m-0 rounded-pill px-4"> <i class="fa fa-cloud-upload mr-2 text-muted"></i><small class="text-uppercase font-weight-bold text-muted">Choose file</small></label>
                </div>
            </div>
            </div>
            <div className="mt-2 block p-1 text-sm md:font-sans text-xs text-gray-800">
              <input type="checkbox" className="inline-block border-0  " />
              <span display="inline" className="">
                By creating an account you are agreeing to our
                <a
                  className=""
                  href="/s/terms"
                  target="_blank"
                  data-test="Link"
                >
                  <span className="underline ">Terms and Conditions</span>{' '}
                </a>{' '}
                and
                <a
                  className=""
                  href="/s/privacy"
                  target="_blank"
                  data-test="Link"
                >
                  <span className="underline">Privacy Policy</span>{' '}
                </a>
              </span>
            </div>

            <div className="mt-10">
              <input
                type="submit"
                value="Sign up with email"
                onClick={submitform}
                className="py-3 bg-green-500 text-white w-full rounded hover:bg-green-600"
              />
            </div>
          </form>
          <a className="" href="/login" data-test="Link">
            <span className="block  p-5 text-center text-gray-800  text-xs ">
              Already have an account?
            </span>
          </a>
        </div>
      </div>
    </>
  )
}

export default StudentProfile
