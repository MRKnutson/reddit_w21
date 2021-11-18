import React from "react"

const Topics = (props) => {
  const renderTopics = () =>{
    return props.topics.map((topic) =>{
      return (
        <div className = "sub-container">
          <h3>{topic.name}</h3>
          <p>topic id:{topic.id}</p>
          <p>{topic.body}</p>
          <a href = {`/subs/${props.sub.id}/topics/${topic.id}`}>Show Topic</a>
          <a href = {`/subs/${props.sub.id}/topics/${topic.id}/edit`}>Edit Topic</a>
          <a data-method = "delete" href = {`/subs/${props.sub.id}/topics/${topic.id}`}>Delete</a>
        </div>
      )
    })
  };
  return(
    <div>
      <h1>Sub: {props.sub.name}</h1>
      <p>Sub Id: {props.sub.id}</p>
      <a href={`/subs`}>Back to Subs</a>
      <a href={`/subs/${props.sub.id}/topics/new`}>New topic</a>
      <hr />
      <h2>Topics: </h2>
      {renderTopics()}
    </div>
  );
};

export default Topics