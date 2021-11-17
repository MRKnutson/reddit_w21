import React from "react"

const Subs = (props) => {
  // props.subs = [{id, name}, {id, name}]
  const renderSubs = () => {
    return props.subs.map((sub)=> {
      return(
        <div>
          <p>id: {sub.id}</p>
          <p>name: {sub.name}</p>
          <a href = {`/subs/${sub.id}`}>Show</a>
          <a href = {`/subs/${sub.id}/edit`}>Edit</a>
          <a href = {`/subs/${sub.id}`} data-method = "delete">Delete</a>
        </div>
      );
    });
  };
  return (
    <div>
      <a href = "/">Home</a>
      <a href = "/subs/new">New Sub</a>
      <p>TODO: List subs here</p>
      {renderSubs()}
    </div>
  )
};


export default Subs;