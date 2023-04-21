import React from 'react'
import './ClassCard.css'

function ClassCard({ name, creatorName, creatorPhoto, id, style }) {
  return (
    <div className="classCard" style={style}>
      <div className="classCard__upper">
        <div className="classCard__className">{name}</div>
        <div className="classCard__creatorName">{creatorName}</div>
        <img src="creatorPhoto" className="classCard__creatorPhoto" alt="" />
      </div>
      <div className="classCard__middle"></div>
      <div className="classCard__lower"></div>
    </div>
  )
}

export default ClassCard
