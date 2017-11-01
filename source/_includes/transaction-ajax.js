// wait for the DOM to be loaded
$(function() {
// bind 'myForm' and provide a simple callback function
$('#transaction-form').ajaxForm(function() {
   alert("Transaction recorded.");
});
});
