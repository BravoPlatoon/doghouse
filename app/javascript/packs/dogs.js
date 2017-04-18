import React from 'react'
import ReactDOM from 'react-dom'

import styles from './dogs.scss';
import DogList from './DogList';

ReactDOM.render(
  (
    <div>
      <h1> Who is in the doghouse? </h1>
      <DogList />
    </div>
  ),
  document.getElementById('dog-app-root')
);
