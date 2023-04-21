import React from 'react'
import { Routes as Switch, Route, Outlet } from 'react-router-dom'
import Aboutus from './Aboutus'
import Contactus from './Contactus'
import Errorpage from './Errorpage'
import Login from './Login'
import Register from './Signup'
import DashBoard from '../classroom/pages/DashBoard1'
import CourseDetail from './../components/CourseDetail'
import Index from '../quiz/Index'
import Index2 from './Index'
import NavBar from './../components/NavBar'
import Footer from './../components/Footer'
import Main from './../attendece/AddProfile'
import ComplaintList from '../components/ComplaintList1'
import EditComplaint from '../components/EditComplaint'
import CreateComplaint from '../components/CreateComplaint1'
import AddQuiz from '../quiz/AddQuiz'
import AddQuestion from '../quiz/AddQuestion'
import AddNote from '../classroom/pages/AddNote'
import Addhomework from '../classroom/pages/Addhomework'
import AddTodo from '../classroom/pages/AddTodo'
import Classroom from '../classroom/pages/Classroom'
const Home = () => {
  return (
    <>
      <NavBar />
      <Switch>
        <Route path="about" element={<Aboutus />} />
        <Route path="contact" element={<Contactus />} />
        <Route path="/" element={<Index2 />} />
        <Route path="*" element={<Errorpage />} />
        <Route path="login" element={<Login />} />
        <Route path="signup" element={<Register />} />
        <Route path="dashboard" element={<DashBoard />} />
        <Route path="detail/:course_id" element={<CourseDetail />} />
        <Route path="quiz" element={<Index />} />
        <Route path="addquiz" element={<AddQuiz />} />
        <Route path="addquestion" element={<AddQuestion />} />
        <Route path="addnote" element={<AddNote />} />
        <Route path="addhomework" element={<Addhomework />} />
        <Route path="addtodo" element={<AddTodo />} />
        <Route exact path="classroom" element={<DashBoard />} />
        <Route path="indexclass" element={<Classroom />} />
        <Route exact path="attendence" element={<Main />} />
        <Route path="complaintlist" element={<ComplaintList />} />
        <Route path="complaintedit/:id" component={<EditComplaint />} />
        <Route exact path="complaintcreate" component={<CreateComplaint />} />
      </Switch>
      <Footer />
    </>
  )
}

export default Home
