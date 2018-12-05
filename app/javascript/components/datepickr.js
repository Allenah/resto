import flatpickr from 'flatpickr';

function date(){
const startDateinput = document.getElementById('booking_start_time');
const endDateinput = document.getElementById('booking_end_time');
if (startDateinput && endDateinput) {
 flatpickr(startDateinput, {
 enableTime: true,
 dateFormat: "d-m-Y H:i",
 minDate: 'today',
 minTime: "10:00",
 maxTime: "23:00",
 time_24hr: true,
 onChange: function(_, selectedDate) {
   if (selectedDate === '') {
     return endDateinput.disabled = true;
   }
   endDateCalendar.set('minDate', selectedDate);
   endDateinput.disabled = false;
 }
});
 const endDateCalendar =
   flatpickr(endDateinput, {
     enableTime: true,
     dateFormat: "H:i",
     noCalendar: true,
     minTime: "10:00",
     maxTime: "23:00",
     time_24hr: true,
   });
}
}
export {date}
