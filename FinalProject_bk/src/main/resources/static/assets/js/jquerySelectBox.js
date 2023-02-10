//최신순
/*
$("select[name=selectBox]").change(function(){
      alert($(this).val());
    
    window.location.href =
     "http://localhost:8080/academy/newSearch?newdate=" + $(this).val();   
        
    })
*/

$("select[name=order]").change(function(){
   $("#selectForm").submit();
});