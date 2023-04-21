import React from 'react'

function Main() {
  return (
    <>
      <div class="container emp-profile my-4">
        <div class="row">
          <div class="col-md-3">
            <img src="/17.jpg" alt="" width="100%" />
            <h6 class="text-muted p-1"> Attendance System</h6>
          </div>
          <div class="col-md-6">
            <div class="profile-head"></div>
          </div>
          <div class="col-md-3">
            <div class="list-group">
              <a href="#" class="list-group-item list-group-item-action">
                Run Scanner
              </a>
              <a href="#" class="list-group-item list-group-item-action">
                Create and Edit Profile
              </a>
              <a href="#" class="list-group-item list-group-item-action">
                Manual Attendence
              </a>
              <a href="#" class="list-group-item list-group-item-action">
                Signout
              </a>
            </div>
          </div>
        </div>
        <div id="manualchecking">
          <form method="get" action="">
            <h4>Manual Attendance</h4>
            <p>Enter phone :</p>
            <input
              type="text"
              class="form-control my-2"
              id="exampleFormControlInput1"
              placeholder="Mobile No"
            />

            <a href="/">
              <button
                type="submit"
                class="btn btn-outline-secondary"
                onclick="manualchecking()"
              >
                Present
              </button>
            </a>
          </form>
        </div>

        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <a
              class="nav-link active"
              id="present-tab"
              data-toggle="tab"
              href="#present"
              role="tab"
              aria-controls="home"
              aria-selected="true"
            >
              Present
            </a>
          </li>
          <li class="nav-item" role="presentation">
            <a
              class="nav-link"
              id="absent-tab"
              data-toggle="tab"
              href="#absent"
              role="tab"
              aria-controls="profile"
              aria-selected="false"
            >
              Student Details
            </a>
          </li>
          <li class="nav-item" role="presentation">
            <a
              class="nav-link"
              id="history-tab"
              data-toggle="tab"
              href="#history"
              role="tab"
              aria-controls="contact"
              aria-selected="false"
            >
              Attendance
            </a>
          </li>
        </ul>

        <div class="tab-content" id="myTabContent">
          <div
            class="tab-pane fade show active"
            id="present"
            role="tabpanel"
            aria-labelledby="home-tab"
          >
            <table class="table table-striped ">
              <thead>
                <tr>
                  <th scope="col"> </th>
                  <th scope="col">Name</th>
                  <th scope="col">Hostel Name</th>
                  <th scope="col">Room Number</th>
                  <th scope="col">Entry Time</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">-</th>
                  <td>soham manjrekar</td>
                  <td>year</td>
                  <td>batch</td>
                  <td>updated |date</td>
                </tr>
              </tbody>
            </table>
            <a href="{% url 'reset' %}">
              <button type="button" class="btn btn-outline-secondary">
                Reset
              </button>
            </a>
            <a href="{% url 'index' %}">
              <button type="button" class="btn btn-outline-primary">
                Refresh
              </button>
            </a>
            <a href="{% url 'month_attendance'  %}">
              <button type="button" class="btn btn-outline-primary">
                Attendance
              </button>
            </a>

            <a href="/signup">
              <button type="button" class="btn btn-outline-primary">
                Add Warden
              </button>
            </a>
          </div>

          <div
            class="tab-pane fade"
            id="absent"
            role="tabpanel"
            aria-labelledby="profile-tab"
          >
            <table class="table table-striped ">
              <thead>
                <tr>
                  <th scope="col"> </th>
                  <th scope="col">Name</th>
                  <th scope="col">Hostel Name</th>
                  <th scope="col">Room Number</th>
                  <th scope="col">Course</th>
                  <th scope="col">Shift Time</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">-</th>
                  <td>first_name last_name</td>
                  <td>hostelname</td>
                  <td>roomno</td>
                  <td>course</td>
                  <td>shift</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div
            class="tab-pane fade"
            id="history"
            role="tabpanel"
            aria-labelledby="contact-tab"
          >
            <table class="table table-striped ">
              <thead>
                <tr>
                  <th scope="col"> </th>
                  <th scope="col">Profile ID</th>
                  <th scope="col">Date</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">-</th>
                  <td>do</td>
                  <td>12/45/2003</td>
                </tr>
              </tbody>
            </table>
            <a href="{% url 'clear_history' %}">
              <button type="button" class="btn btn-outline-secondary">
                Clear History
              </button>
            </a>
          </div>
        </div>
      </div>
    </>
  )
}

export default Main
