
 var locked = 0;

                                       function show(star){
                                          if(locked)
                                             return;
                                          
                                          var i; //그냥요소
                                          var image;
                                          var el;
                                          var e = document.getElementById('startext');
                                          var stateMsg;

                                          for(i =1; i<=star; i++){
                                             image = 'image' + i;
                                             el = document.getElementById(image);
                                             el.src = "/assets/img/star/1star.png";
                                             
                                          }

                                          switch (star){
                                             case 1:
                                                stateMsg = "1점";
                                                break;
                                             case 2:
                                                stateMsg = "2점";
                                                break;
                                             case 3:
                                                stateMsg = "3점";
                                                break;   
                                             case 4:
                                                stateMsg = "4점";
                                                break;
                                             case 5:
                                                stateMsg = "5점";
                                                break;
                                             default:
                                                stateMsg = "";
                                          }
                                          e.innerHTML = stateMsg;

                                       }

                                       function noshow(star){
                                          if(locked)
                                             return;
                                          var i;
                                          var image;
                                          var el;

                                          for(i = 1; i<=star; i++){
                                             image = 'image' + i;
                                             el= document.getElementById(image);
                                             el.src = "/assets/img/star/0star.png";
                                          }
                                       }

                                       function lock(star){
                                          show(star);
                                          locked =1;
                                       }





                                       function mark(star){
                                          lock(star);
                                          //alert("별점선택"+star);
                                          document.cmtfrm.star.value= star;
                                       }