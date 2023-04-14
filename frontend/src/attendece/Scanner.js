import React from 'react'

function Scanner() {
  return (
    <>
      <div class="container emp-profile">
        <div class="row">
          <div class="col-md-4">
            <div class="profile-img">
              <img src="/18.jpg " alt="" />
            </div>
          </div>
          <div class="col-md-6">
            <div class="profile-head">
              <h5>soham manjrekar</h5>
              <h6>profile.college</h6>
              <p class="proile-rating">
                ROOM NO : <span>profile.roomno</span>
              </p>
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                  <a
                    class="nav-link active"
                    id="home-tab"
                    data-toggle="tab"
                    href="#home"
                    role="tab"
                    aria-controls="home"
                    aria-selected="true"
                  >
                    About
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    id="profile-tab"
                    data-toggle="tab"
                    href="#profile"
                    role="tab"
                    aria-controls="profile"
                    aria-selected="false"
                  >
                    Personal Information
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-2">
            <a href="{% url 'camoff' %}">
              <button type="button" class="btn btn-primary btn-outline-primary">
                Stop Scnner
              </button>
            </a>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <div class="profile-work">
              <p></p>
              <br />
              <br />
              <br />
              <br />
              <br />
              <br />
              <br />
              <br />
              <br />
            </div>
          </div>
          <div class="col-md-8">
            <div class="tab-content profile-tab" id="myTabContent">
              <div
                class="tab-pane fade show active"
                id="home"
                role="tabpanel"
                aria-labelledby="home-tab"
              >
                <div class="row">
                  <div class="col-md-6">
                    <label>Profile Id</label>
                  </div>
                  <div class="col-md-6">
                    <p>profile.id</p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <label>Name</label>
                  </div>
                  <div class="col-md-6">
                    <p>name</p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <label>Email</label>
                  </div>
                  <div class="col-md-6">
                    <p>profile.email</p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <label>Phone</label>
                  </div>
                  <div class="col-md-6">
                    <p>+91profile.phone</p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <label>College</label>
                  </div>
                  <div class="col-md-6">
                    <p>college </p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <label>Hostel Name</label>
                  </div>
                  <div class="col-md-6">
                    <p>hostelname </p>
                  </div>
                </div>
              </div>
              <div
                class="tab-pane fade"
                id="profile"
                role="tabpanel"
                aria-labelledby="profile-tab"
              ></div>
            </div>
          </div>
        </div>
      </div>
    </>
  )
}

export default Scanner
