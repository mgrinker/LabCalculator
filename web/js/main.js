$(function(){
   $('#rectangleForm').validate({
       rules: {
           width: {
               required: true,
               digits: true
           },
           length: {
               required: true,
               digits: true
           }
       },
       messages: {
           width: {
               required: "Positive numbers required"
           },
           length: {
               required: "Positive numbers required"
           }
       }
       
   });
   
   $('#circleForm').validate({
       rules: {
           radius: {
               required: true,
               digits: true
           }
       },
       messages: {
           radius: {
               required: "Positive numbers required"
           }
       }
       
   });
   
   $('#triangleForm').validate({
       rules: {
           side1: {
               required: true,
               digits: true
           },
           side2: {
               required: true,
               digits: true
           }
       },
       messages: {
           side1: {
               required: "Positive numbers required"
           },
           side2: {
               required: "Positive numbers required"
           }
       }
       
   }); 
});


