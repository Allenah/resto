import flatpickr from 'flatpickr';

const startDateinput = document.getElementById('restaurant_start_time');
const endDateinput = document.getElementById('restaurant_end_time');
function date(){
if (startDateinput && endDateinput) {
 flatpickr(startDateinput, {
 minDate: 'today',
 dateFormat: 'd-m-Y',
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
     dateFormat: 'd-m-Y',
   });
}
}
export {date}
