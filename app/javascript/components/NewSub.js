import React from "react"

const NewSub = (props) => {
  return (
    <div>
      <p>TODO: New sub form here</p>
      <a href = "/">Home</a>
      <a href = "/subs">Back to subs</a>
      <form action ="/subs" method ="post">
        <p>Name:</p>
        <input name="sub[name]" />
        <button type="submit">Submit </button>
      </form>
    </div>
  )
};


export default NewSub;