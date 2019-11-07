import React from 'react';
import PropTypes from 'prop-types';
import { Link } from 'react-router-dom';

class EventList extends React.Component {
  renderEvents() {
    const { events } = this.props;
    events.sort(
      (a, b) => new Date(b.date) - new Date(a.date),
    );

    return events.map(event => (
      <li key={event.id}>
        <Link to={`/events/${event.id}`}>
          {event.title}
        </Link>
      </li>
    ));
  }

  render() {
    return (
      <section className="eventList">
        <h2>
          Events
          <Link to="/events/new">New Event</Link>
        </h2>
        <ul>{this.renderEvents()}</ul>
      </section>
    );
  }
}

EventList.propTypes = {
  events: PropTypes.arrayOf(PropTypes.object),
};

EventList.defaultProps = {
  events: [],
};

export default EventList;