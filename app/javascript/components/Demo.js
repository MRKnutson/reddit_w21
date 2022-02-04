import axios from "axios";
import React, { useState } from "react";
import Counter from "./Counter";

const Demo = (props)=> {
  return (
    <div>
      <h1>demo</h1>
      <Counter header="Step Count"/>
      <Counter header="Calorie Count"/>
      <Counter header="Win Count"/>
    </div>
  );
};

export default Demo;



// jQuery eww 
{/* <button id = 'btn'>minus</button>

$(#btn).addEventListener('onClick',()=>{
  count++
}) */}