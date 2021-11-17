import React from "react"

const Subs = (props) => {
  return (
    <div>
      <p>TODO: List subs here</p>
      <a href = "/">Home</a>
      <a href = "/subs/new">New Sub</a>
            {/* Need to make id dynamic - hardcoding to 1 for now */}
      <a href = "/subs/1">Sub show</a>
      <a href = "/subs/1/edit">Edit Sub</a>
    </div>
  )
};


export default Subs;