import './App.css'
import Home from './pages/Home'
import Errorpage from './pages/Errorpage'
import { Routes, Route, Outlet } from 'react-router-dom'
import Login from './pages/Login'
import Register from './pages/Signup'
import Home1 from './whiteboard/Home'
import Contactus from './pages/Contactus'
import Aboutus from './pages/Aboutus'
import DashBoard1 from './classroom/pages/DashBoard1'
import Main from './attendece/Main'
import CourseDetail from './components/CourseDetail'
import Index from './quiz/Index'
import DashBoard from './pages/Dashboard'
import ComplaintList from './components/ComplaintList1'
import EditComplaint from './components/EditComplaint'
import CreateComplaint from './components/CreateComplaint1'
import AddQuiz from './quiz/AddQuiz'
import AddQuestion from './quiz/AddQuestion'
import AddNote from './classroom/pages/AddNote'
import Addhomework from './classroom/pages/Addhomework'
import AddTodo from './classroom/pages/AddTodo'
import Classroom from './classroom/pages/Classroom'
function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/home/*" element={<Home />}>
          <Route path="about" element={<Aboutus />} />
          <Route exact path="contact" element={<Contactus />} />
          <Route path="*" element={<Errorpage />} />
          <Route exact path="login" element={<Login />} />
          <Route exact path="signup" element={<Register />} />
          <Route path="dashboard" element={<DashBoard />} />
          <Route path="detail/:course_id" element={<CourseDetail />} />
          <Route path="quiz" element={<Index />} />
          <Route path="addquiz" element={<AddQuiz />} />
          <Route path="addquestion" element={<AddQuestion />} />
          <Route path="addnote" element={<AddNote />} />
          <Route path="addhomework" element={<Addhomework />} />
          <Route path="addtodo" element={<AddTodo />} />
          <Route path="indexclass" element={<Classroom />} />
          <Route path="classroom" element={<DashBoard1 />} />
          <Route path="attendence" element={<Main />} />
          <Route path="complaintlist" element={<ComplaintList />} />
          <Route path="complaintedit/:id" component={<EditComplaint />} />
          <Route exact path="complaintcreate" component={<CreateComplaint />} />
        </Route>
        <Route path="*" element={<Errorpage />} />
        <Route path="whiteboard" element={<Home1 />} />
      </Routes>
      <Outlet />
    </div>
  )
}

export default App
