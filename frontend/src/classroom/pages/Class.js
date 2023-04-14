import moment from 'moment'
import React from 'react'
import { useEffect } from 'react'

import './Class.css'

function Class() {
  return (
    <div className="class">
      <div className="class__nameBox">
        <div className="class__name">bibub</div>
      </div>
      <div className="class__announce">
        <img src="1.png" alt="h" />
        <input
          type="text"
          value="tfvyuv"
          placeholder="Announce something to your class"
        />
      </div>
    </div>
  )
}

export default Class
