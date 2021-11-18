import React from "react"

const Topics = (props) => {
  const renderTopics = () =>{
    return props.topics.map((topic) =>{
      return (
        <div className = "sub-container">
          <h3>{topic.name}</h3>
          <p>topic id:{topic.id}</p>
          <p>{topic.body}</p>
        </div>
      )
    })
  };
  return(
    <div>
      <h1>Sub: {props.sub.name}</h1>
      <p>Sub Id: {props.sub.id}</p>
      {/* link back to topics index */}
      <a href={`/subs/${props.sub.id}/topics`}>Back to topics</a>
      <a href={`/subs`}>Back to Subs</a>
      {/* link back to subs index */}
      <hr />
      <h2>Topics: </h2>
      {renderTopics()}
    </div>
  );
};

export default Topics