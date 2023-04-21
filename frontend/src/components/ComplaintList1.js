import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import axios from 'axios'
import { useEffect, useState } from 'react'
const baseurl = 'http://127.0.0.1:8000/complaint'
function ComplaintList1() {
  const [complaint, setcomplaint] = useState({
    user: '',
    Subject: '',
    Description: '',
    Type_of_complaint: '',
    Time: '',
    status: '',
  })
  useEffect(() => {
    axios.get(baseurl + '/complaint/').then((response) => {
      console.log(response.data)
      const data = response.data
    })
  }, [])
  let handlechange = (event) => {
    setcomplaint({
      ...complaint,
      [event.target.name]: event.target.value,
    })
  }

  return (
    <>
      <div>
        <h3>Logged Incidents and Cases</h3>
        <table className="table">
          <thead className="thead-light">
            <tr>
              <th>data.user</th>
              <th>data.Subject</th>
              <th>data.Description</th>
              <th>data.Type_of_complaint</th>
              <th>Data.Time</th>
              <th>Data.status</th>
            </tr>
          </thead>
        </table>
      </div>
    </>
  )
}

export default ComplaintList1
