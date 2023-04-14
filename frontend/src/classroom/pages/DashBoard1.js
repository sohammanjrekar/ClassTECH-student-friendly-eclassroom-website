import React from 'react'
import './Dashboard.css'
import ClassCard from '../components/ClassCard'

function DashBoard1() {
  return (
    <div className="dashboard">
      <div className="dashboard__404">
        No classes found! Join or create one!
      </div>

      <div className="dashboard__classContainer">
        <ClassCard
          creatorName="individualClass.creatorName"
          creatorPhoto="individualClass.creatorPhoto"
          name="individualClass.name"
          id="individualClass.id"
          style={{ marginRight: 30, marginBottom: 30 }}
        />
      </div>
    </div>
  )
}

export default DashBoard1
