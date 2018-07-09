$(document).on('ready page:change', function() {
  
  $('[class*="auto-close"]').each(function(){
  	
  	let full_classes = $(this).attr("class")
  	let matches = full_classes.match(/(auto-close)(?:-)*(\d)*/)
  	let time = (isNaN(matches[2]) ? 5 : parseInt(matches[2])) * 1000
  	
  	setTimeout( () => $(this).hide() ,time)
  	
  })

});