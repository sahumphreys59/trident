import React from 'react';
import PropTypes from 'prop-types';
import { formatDate, isEmptyObject, validateEvent } from '../helpers/helpers';
import Pikaday from 'pikaday';
import 'pikaday/css/pikaday.css';
import { Link } from 'react-router-dom';

class EventForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      event: props.event,
      errors: {},
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleInputChange = this.handleInputChange.bind(this);
    this.dateInput = React.createRef();
  }

  componentWillReceiveProps({ event }) {
    this.setState({ event });
  }

  componentDidMount() {
    new Pikaday({
      field: this.dateInput.current,
      toString: date => formatDate(date),
      onSelect: (date) => {
        const formattedDate = formatDate(date);
        this.dateInput.current.value = formattedDate;
        this.updateEvent('date', formattedDate);
      },
    });
  }

  updateEvent(key, value) {
    this.setState(prevState => ({
      event: {
        ...prevState.event,
        [key]: value,
      },
    }));
  }

  handleSubmit(e) {
    e.preventDefault();
    const { event } = this.state;
    const errors = validateEvent(event);

    if (!isEmptyObject(errors)) {
      this.setState({ errors });
    } else {
      const { onSubmit } = this.props;
      onSubmit(event);
    }
  }

  handleInputChange(event) {
    const { target } = event;
    const { name } = target;
    const value = target.type === 'checkbox' ? target.checked : target.value;
    this.updateEvent(name, value);
  }

  renderErrors() {
    const { errors } = this.state;

    if (isEmptyObject(errors)) {
      return null;
    }

    return (
      <div className="errors">
        <h3>The following errors prohibited the event from being saved:</h3>
        <ul>
          {Object.values(errors).map(error => (
            <li key={error}>{error}</li>
          ))}
        </ul>
      </div>
    );
  }


  render() {
    const { event } = this.state;
    const cancelURL = event.id ? `/events/${event.id}` : '/events';
    const title = event.id ? `${event.date} - ${event.type}` : 'New Event';


    return (
      <div>
        <h2>New Event</h2>

        {this.renderErrors()}

        <form className="eventForm" onSubmit={this.handleSubmit}>
          <div>
            <label htmlFor="title">
              <strong>Title:</strong>
              <input type="text" id="title" name="title" onChange={this.handleInputChange} value={event.title}/>
            </label>
          </div>
          <div>
            <label htmlFor="date">
              <strong>Date:</strong>
              <input 
                type="text" 
                id="date" 
                name="date" 
                ref={this.dateInput}
                autoComplete="off"
                value={event.date}
                onChange={this.handleInputChange}
              />
            </label>
          </div>
          <div>
            <label htmlFor="location">
              <strong>Location:</strong>
              <input type="text" id="location" name="location" onChange={this.handleInputChange} value={event.location}/>
            </label>
          </div>  
          <div>
            <label htmlFor="details">
              <strong>Details:</strong>
              <textarea
                cols="30"
                rows="10"
                id="details"
                name="details"
                onChange={this.handleInputChange}
              />
            </label>
          </div>    
          <div className="form-actions">
            <button type="submit">Save</button>
            <Link to={cancelURL}>Cancel</Link>
          </div>
        </form>
      </div>
    );
  }
}

EventForm.propTypes = {
  event: PropTypes.shape(),
  onSubmit: PropTypes.func.isRequired,
};

EventForm.defaultProps = {
  event: {
    title: '',
    date: '',
    location: '',
    details: '',
  },
};

export default EventForm;