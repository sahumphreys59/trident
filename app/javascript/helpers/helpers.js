import { error } from './notifications';

const isValidDate = dateObj => !Number.isNaN(Date.parse(dateObj));

export const isEmptyObject = obj => Object.keys(obj).length === 0;

export const validateEvent = (event) => {
  const errors = {};

  if (event.title === '') {
    errors.title = 'You must enter an event title';
  }

  if (!isValidDate(event.date)) {
    errors.date = 'You must enter a valid date';
  }

  if (event.title === '') {
    errors.location = 'You must enter a location';
  }

  if (event.details === '') {
    errors.details = 'You must complete the details box';
  }

  return errors;
};

export const formatDate = (d) => {
  const YYYY = d.getFullYear();
  const MM = `0${d.getMonth() + 1}`.slice(-2);
  const DD = `0${d.getDate()}`.slice(-2);

  return `${YYYY}-${MM}-${DD}`;
};

export const handleAjaxError = (err) => {
  error('Something went wrong');
  console.warn(err);
};