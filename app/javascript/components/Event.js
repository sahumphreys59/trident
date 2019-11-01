import React from 'react';
import PropTypes from 'prop-types';

const Event = ({ event }) => (
  <div className="eventContainer">
    <h2>
      {event.title}
      {' - '}
      {event.date}
    </h2>
    <ul>
      <li>
        <strong>Location:</strong>
        {' '}
        {event.location}
      </li>
    </ul>
  </div>
);

Event.propTypes = {
  event: PropTypes.shape(),
};

Event.defaultProps = {
  event: undefined,
};

export default Event;