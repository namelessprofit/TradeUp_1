
var counter = 0
document.addEventListener("turbolinks:load", function() {
  console.log("hello from turbolinks");
  if(document.cookie.length === 0 && counter === 0){
    document.cookie ="listing =.";
    counter ++;
  }
  $('#listingType').on('change', function (e) {
  var listingVal = $(this).val();
  console.log(listingVal,"listing val here!");
    document.cookie += listingVal;
})

})
