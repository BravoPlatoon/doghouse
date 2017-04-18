import React from 'react'
import dogListStyles from './DogList.scss';

class DogList extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dogs: [],
      page: 0
    }
    this._fetchDogs = this._fetchDogs.bind(this);
  }
  componentDidMount() {
    this._fetchDogs();
  }
  _fetchDogs(page = 0) {
    fetch(`/dogs?page=${page}`)
      .then(res => res.json())
      .then(json => this.setState({
        dogs: [...this.state.dogs, ...json.content],
        page: json.pagination.current_page
      }))
  }
  render() {
    const { dogs, page } = this.state;
    return (
      <div className="dog-list">
        <ul>
          {
            dogs.map(dog =>
                <li key={dog.id}>
                  🐶 <span>{ dog.name }</span> the { dog.breed }
                </li>

            )
          }
        </ul>
        <button onClick={() => this._fetchDogs(page + 1)}> load more </button>
      </div>
    )
  }
}

export default DogList;
