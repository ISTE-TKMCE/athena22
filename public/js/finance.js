$('.memb-list').hide();
var x=25;
var y=4000;
$( ".w1" ).click(function() {
    $( ".modal-body" ).html("<h3>No of Participants = " +x+ ".</h3> <br> <h3>Total Amount = " +y+ ".</h3>");
    console.log("dfd");
  });

$( ".w2" ).click(function() {
    $( ".modal-body" ).html("<h3>No of Participants = " +x+ ".</h3> <br> <h3>Total Amount = " +y+ ".</h3>");
    console.log("dfd");
  });

$( ".w3" ).click(function() {
    $( ".modal-body" ).html("<h3>No of Participants = " +x+ ".</h3> <br> <h3>Total Amount = " +y+ ".</h3>");
    console.log("dfd");
  });
  $('.finance-b1').click(function () {
    console.log('B1');
    $('.tab').hide();
   $('.event-list').show();
});
$('.finance-b2').click(function () {
  $('.tab').hide();
 $('.memb-list').show();
});