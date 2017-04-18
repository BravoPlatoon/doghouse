import React from 'react'
import ReactDOM from 'react-dom'
import DogList from '../src/DogList';

ReactDOM.render(
  (
    <div>
      <h1> Who is in the doghouse? </h1>
      <DogList />
    </div>
  ),
  document.getElementById('dog-app-root')
);
