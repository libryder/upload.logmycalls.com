

function createUploader(){
    var uploader = new qq.FileUploader({
        element: document.getElementById('file-uploader-demo1'),
        action: '/home/upload',
        debug: false,
        onComplete: function(id, fileName, responseJSON){
          
        },
    });
}

// Set all parameters for each method
criteria = new Object();
criteria.insertCall = ["calldate", "ouid", "external_id", "caller_id", "tracking_number", "ringto_number", "is_outbound", "assign_to", "duration"];
criteria.uploadAudio = [];

$(document).ready(function() {
  $('#query-test').validationEngine({binded: false, scroll: false, autoHidePrompt: true, autoHideDelay: 2000});
  // bind form using ajaxForm 
  $('#query-test').ajaxForm({ 
      // target identifies the element(s) to update with the server response 
      target: '#output', 

      // success identifies the function to invoke when the server response 
      // has been received; here we apply a fade-in effect to the new content 
      success: function() { 
          
      } 
  }); 
  
}); 
