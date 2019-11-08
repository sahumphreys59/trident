import React from 'react';
import PropTypes from 'prop-types';
import { Link } from 'react-router-dom';

const Event = ({ event, onDelete }) => (
  <div className="eventContainer">
    <h2>
      {event.date}
      {' - '}
      {event.title}
      <Link to={`/events/${event.id}/edit`}>Edit</Link>
      <button className="delete" type="button" onClick={() => onDelete(event.id)}>
        Delete
      </button>  
    </h2>
    <ul>
      <li>
        <strong>Location:</strong>
        {' '}
        {event.location}
      </li>
      <li>
        <strong>Details:</strong>
        {' '}
        {event.details}
      </li>
    </ul>
  </div>
);

Event.propTypes = {
  event: PropTypes.shape(),
  onDelete: PropTypes.func.isRequired,
};

Event.defaultProps = {
  event: undefined,
};

export default Event;