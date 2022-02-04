import React, { useState } from "react";

const Counter = (props)=> {
  // useState hook general useage
  // const [getState, setState] =useState(initialState);
  const [count, setCount] = useState(0);
  const [totalClickCount, setTotalClickCount] = useState(0);

  // callback function
  const add= ()=>{
  console.log("add clicked");
  setCount(count + 1);
  setTotalClickCount(totalClickCount + 1);
};
const minus = ()=>{
  console.log("minus clicked");
  setCount(count - 1);
  setTotalClickCount(totalClickCount + 1);
  };
  return (
    <div>
      <h1>demo component here</h1>
      <p>count: {count}</p>
      <p>total click count: {totalClickCount}</p>
      <button onClick={add}>add</button>
      <button onClick ={minus}>subtract</button>
    </div>
  );
};

export default Counter;



// jQuery eww 
{/* <button id = 'btn'>minus</button>

$(#btn).addEventListener('onClick',()=>{
  count++
}) */}