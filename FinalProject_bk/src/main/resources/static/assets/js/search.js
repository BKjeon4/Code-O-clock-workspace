

   
   //체크박스를 중복없이 하나만 클릭하게 하기위한 js
   function checkOnlyOne(element) {
      const checkboxes = document.getElementsByName("keywords");
                                       
    checkboxes.forEach((cb) => {
     cb.checked = false;
        })
     element.checked = true;
         //alert(element.value); 확인용
     }//end of checkOnlyOne



    //키워드 벨류 값으로 검색을 위한 js   
    function sub(element){
    //alert('1'); 확인용
    
       const a = document.getElementsByName("keywords");
   }//end of sub


