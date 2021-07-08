// import flatpickr from 'flatpickr';

// const toggleDateInputs = function() {
//   const startDateInput = document.getElementById('booking_start_time');
//   const endDateInput = document.getElementById('booking_end_time');
//   // const costs = document.querySelector('.costs');

//   if (startDateInput && endDateInput) {
//     const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)

//     flatpickr(startDateInput, {
//     minDate: 'today',
//     dateFormat: 'd-m-Y',
//     disable: unvailableDates,
//     onChange: function(selectedDates, selectedDate) {
//       if (selectedDate === '') {
//         costs.classList.remove('is-visible');
//         endDateInput.disabled = true;
//       }
//       let minDate = selectedDates[0];
//       minDate.setDate(minDate.getDate() + 1);
//       endDateCalendar.set('minDate', minDate);
//       endDateInput.disabled = false;
//     }
//   });
//     const endDateCalendar =
//       flatpickr(endDateInput, {
//         dateFormat: 'd-m-Y',
//         disable: unvailableDates,
//         },
//   }
// };

// export { toggleDateInputs }
