import React from 'react'

function Manual() {
  return (
    <>
      <div class="container emp-profile">
        <div class="row">
          <div class="col-md-4">
            <div class="profile-img">
              <img src="/18.jpg" alt="" />
            </div>
          </div>
          <div class="col-md-6">
            <div class="profile-head">
              <h5>first_name last_name</h5>
              <h6>profile.college</h6>
              <p class="proile-rating">
                ROOM NO : <span>roomno</span>
              </p>
              <p class="proile-rating">
                HOSTEL : <span>hostelname</span>
              </p>
              <p class="proile-rating">
                PHONE NO : <span>phone</span>
              </p>
            </div>
            <form method="post" action="manual_attendance">
              <h1>Manual Attendance</h1>
              <p>Enter phone :</p>
              <input type="text" name="phone" />
              <br />
              <br />
              <a href="">
                <button type="submit">Present</button>
              </a>
            </form>
          </div>
        </div>
      </div>
    </>
  )
}

export default Manual
