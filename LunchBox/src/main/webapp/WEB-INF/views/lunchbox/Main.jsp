<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<link rel="stylesheet" href="asset/owl/owl.carousel.min.css">
<link rel="stylesheet" href="asset/owl/owl.theme.default.min.css">
<script src="asset/owl/jquery.min.js"></script>
<script src="asset/owl/owl.carousel.min.js"></script>
<script src="asset/owl/owl.carousel.js"></script>
<script src="asset/owl/atuo.js"></script>

<link rel="stylesheet" type="text/css" href="asset/lunchboxloc.css">
<link rel="stylesheet" type="text/css" href="asset/mainstyle.css">
<style>
#search_box1 {
	background-color: #fff;
}

.recepie-list-box {
	padding: 20px;
	height: 80%;
	background-color: red;
}
</style>








<title>메인페이지입니다.</title>
</head>
<body>
	<%
	response.setCharacterEncoding("UTF-8");
	String user_id = (String) session.getAttribute("sessionID");
	String user_gender = (String) session.getAttribute("sessionGender");
	int user_age = (int) session.getAttribute("sessionBirthdate");
	System.out.println("세션에 저장된 아이디는 " + session.getAttribute("sessionID") + "입니다.");
	System.out.println("세션에 저장된 성별은 " + session.getAttribute("sessionGender") + "입니다.");
	System.out.println("세션에 저장된 나이는 " + session.getAttribute("sessionBirthdate") + "입니다.");
	System.out.println(user_id);
	if (user_id == null) {
		response.sendRedirect("Door.do");
	}
	%>
	<div id="layout" align="center">

		<div id="header">
			<ul>
				<li><b>LunchBoxsimulator</b></li>
				<li><a href="GoMain.do"> Main</a></li>
				<li><a href="GoNutrition.do">영양소 및 칼로리</a></li>
				<li><a href="GoAsk.do">자주묻는질문</a></li>
				<li><a href="SelectAll.do">도시락정보공유게시판</a></li>
				<%
				if (user_id.equals("admin")) {
				%>
				<li><a href="Admin.do">회원 목록 조회</a></li>
				<li><a href="AdminUser.do">회원 정보 분석</a></li>
				<%
				}
				%>
			</ul>

		</div>

		<div id="con">
			<div id="main">
				<div id="dosirak">
					<div class="dosirak-row rf">
						<div id="first" class="s"></div>
						<div id="second" class="s"></div>
						<div id="third" class="s"></div>
					</div>
					<div class="dosirak-row rs">
						<div id="fourth" class="s"></div>
						<div id="fifth" class="s"></div>
					</div>
				</div>
			</div>

			<div id="ad">
				<br>
				<div id="main_box">
					<!-- 로그인과 달럭 -->
					<div class="loginst">
						<br>
						<p style="font-size: 25px;">
							<%=user_id%>님의 정보
						</p>
						<div id="loginmsg">
							성별 :
							<%=user_gender%>
							나이 :
							<%=user_age%>
							<%
							if (user_gender == "남") {
							%>
							<img
								src="https://cdn-icons-png.flaticon.com/512/3884/3884851.png"
								width="85" height="85">
							<%
							} else {
							%>
							<img
								src="https://cdn-icons-png.flaticon.com/512/1373/1373254.png"
								width="85" height="85">
							<%
							}
							%>
						</div>

						<div class="btn-group">
							<button type="button" class="btn btn-warning"
								onclick="location.href='GoUpdate.do'">정보수정</button>
							<button type="button" class="btn btn-warning"
								onclick="location.href='Logout.do'">로그아웃</button>
							<!-- 지울예정!! -->
							<button
								onclick="location.href='GoResult.do?mb_id=admin&lb_seq=1'"
								class="btn btn-primary">결과</button>
						</div>

					</div>
					<div id="calbutton">
						<img width="380" height="350" src="asset/image/cal.png"
							style="cursor: pointer;"
							onclick="location.href='GoCalendar.do?mb_id=<%=user_id%>'">
					</div>
				</div>
			</div>

			<div class=recipe_con>

				<div id="lunName_area"></div>
				<div id="recipe_area"></div>
				<div class="search-box" id="search_model"></div>
				<div id="crawling_area"></div>


			</div>


		</div>

		<script>
      $("#first").click(function() {
         $("#main_box").hide();
         $(".search_box").hide();
         $("#search_box1").fadeIn();
      });
      $("#second").click(function() {
         $("#main_box").hide();
         $(".search_box").hide();
         $("#search_box2").fadeIn();
      });
      $("#third").click(function() {
         $("#main_box").hide();
         $(".search_box").hide();
         $("#search_box3").fadeIn();
      });
      $("#fourth").click(function() {
         $("#main_box").hide();
         $(".search_box").hide();
         $("#search_box4").fadeIn();
      });
      $("#fifth").click(function() {
         $("#main_box").hide();
         $(".search_box").hide();
         $("#search_box5").fadeIn();
      });
   </script>

		<script>
      $('.owl-carousel').owlCarousel({
         loop : true,
         margin : 10,
         nav : true,
         responsive : { 
            0 : {
               items : 1
            },
            600 : {
               items : 3
            },
            1000 : {
               items : 5
            }
         }
      })
      $("#first").click(function() {
         $("#ingi").hide();
      });
      $("#second").click(function() {
         $("#ingi").hide();
      });
      $("#third").click(function() {
         $("#ingi").hide();
      });
      $("#fourth").click(function() {
         $("#ingi").hide();
      });
      $("#fifth").click(function() {
         $("#ingi").hide();
      });
      
      
   </script>



		<script>
//1.도시락 완성하기 버튼에서 사용자가 2개이상 레시피를 클릭시 완성저장 할 수 있게끔 완성될때마다 push
let CompleteR_Num_list = [];


let Result_method = "";
let Result_level = "";
let Result_time = "";



//2.도시락창 클릭시 기능
let TempButton1 = document.querySelector("#first");
let TempButton2 = document.querySelector("#second");
let TempButton3 = document.querySelector("#third");
let TempButton4 = document.querySelector("#fourth");
let TempButton5 = document.querySelector("#fifth");


//2.5클릭시 검색창 뜸
function search_Model(){
      
      
      //클릭한 버튼의 아이디//
      let ButtonId = this.id;
      let ButtonId_s = document.getElementById(`\${ButtonId}`);
      console.log(ButtonId)
      
      let ButtonId_Name = ButtonId.substr(11,11);
      
      //
      let SelectImg = "";
      
      //도시락버튼의 번호 푸쉬 후 선택한 레시피 푸쉬할예정
      let User_Recipe = [];
      User_Recipe.push(ButtonId_Name);
      
      
      search_model.innerHTML = "";
        recipe_area.innerHTML = "";
        search_model.innerHTML = 
                       `<br><div id = "Searchboxs"class = "Serach_Model">
        				<div>
                          <input class="search-txt" type="text" placeholder="조리방식,난이도,소요시간 선택후 검색해주세요!!" id = "Input_Search">
                                   <div class = "Search_Type" id = "Search_Type_id">
                                   </div>
                                   <div id ="split">
                                   <div class="btn-group">
                                    <button type="button" class="btn btn-warning btn-lg" id = "Method">조리방식</button>
                                       <div id = "method_area"></div>
                                       
                                    <button id = "Level" class="btn btn-warning btn-lg">난이도</button>
                                       <div id = "level_area"></div>
                                       
                                    <button id = "Time" class="btn btn-warning btn-lg">소요시간</button>
                                       <div id = "time_area"></div>
                                       </div>
                                       </div>
                                       <br>
                                       <div class="btn-group">
                                    <button class="btn btn-warning btn-lg" type="submit" id = 'searchbar' >찾기</button>
                                    <button id="Lun_CompleteB" class="btn btn-warning btn-lg">완성</button>
                                  </div>
                              	</div>
                              
                              
                            </div>`;
                           
        //조리방식 , 소요시간 , 난이도 function ========================================        
       let method = document.getElementById("Method");
       let level = document.getElementById("Level");
       let time = document.getElementById("Time");
       

       
       
       
    
       function click_method(){
           console.log("TRest")
           method_area.innerHTML = `
           <div>
              
                <label>
                  <input type="radio" name="metho" value="조림,무침,절임,비빔" checked />
                  <span>조림,무침,절임,비빔</span>
                  
                </label>
               
                <label>
                  <input type="radio" name="metho" value="부침,튀김,굽기,삶기" />
                  <span>부침,튀김,굽기,삶기</span>
                </label>
                
                <label>
                  <input type="radio" name="metho" value="끓이기,찜,데치기" />
                  <span>끓이기,찜,데치기</span>
                </label>
                
                <label>
                  <input type="radio" name="metho" value="볶음,기타" />
                  <span>볶음,기타</span>
                </label>
                <br>
                <button id = "Type_click1" class="btn btn-warning">선택</button>
              
           </div>`;
           let value1 = $("input[type=radio][name=metho]:checked").val();
           
           document.getElementById('Type_click1').onclick = function() {
               var radios = document.getElementsByName('metho');
               for (var radio of radios)
               {
                   if (radio.checked) {
                       alert(radio.value);
                       Result_method = radio.value; 
                   }
               }
           }//
           
           
           
        }//click_method 끝부분 ============================================
        
        function click_level(){
           level_area.innerHTML = `
               <div>
                  
                    <label>
                      <input type="radio" name="leve" value="초급" checked />
                      <span>초급</span>
                    </label>
                   
                    <label>
                      <input type="radio" name="leve" value="중급" />
                      <span>중급</span>
                    </label>
                    
                    <label>
                      <input type="radio" name="leve" value="상급" />
                      <span>상급</span>
                    </label>
                    <button id = "Type_click2" class="btn btn-warning">선택</button>
               
               </div>`;
               
               let value2 = $("input[type=radio][name=leve]:checked").val();
               
               document.getElementById('Type_click2').onclick = function() {
                   var radios = document.getElementsByName('leve');
                   for (var radio of radios)
                   {
                       if (radio.checked) {
                           alert(radio.value);
                           Result_level = radio.value; 
                       }
                   }
               }//
           }
        
        function click_time(){
           time_area.innerHTML = `
               <div>
               
                    <label>
                      <input type="radio" name="tim" value="10" checked />
                      <span>10분</span>
                    </label>
                   
                    <label>
                      <input type="radio" name="tim" value="15" />
                      <span>15분</span>
                    </label>
                    
                    <label>
                      <input type="radio" name="tim" value="30" />
                      <span>30분</span>
                    </label>
                    
                    <label>
                       <input type="radio" name="tim" value="60" />
                       <span>60분</span>
                     </label>
                     <button id = "Type_click3" class="btn btn-warning">선택</button>
               
               </div>`;
               
               let value3 = $("input[type=radio][name=tim]:checked").val();
               
               document.getElementById('Type_click3').onclick = function() {
                   var radios = document.getElementsByName('tim');
                   for (var radio of radios)
                   {
                       if (radio.checked) {
                           alert(radio.value);
                           Result_time = radio.value; 
                           }
                       }
                   
               }//
        }
        
        level.addEventListener("click",click_level);
        method.addEventListener("click",click_method);
        time.addEventListener("click",click_time);
        
      //조리방식 , 소요시간 , 난이도 function ========================================  ===================================
           
      
                            
                            
//jsquery//3.검색 클릭시 
let InputSearch = document.getElementById("Input_Search");
let SearchBar = document.getElementById("searchbar");

//===================================================================================================                  
    
    function search_click(){//search_click =========================================
       console.log(Result_method) 
       
/*        if(type_list.length == 0){
          type_list[0] = "null값";
       }
       if(type_list.length == 1){
          type_list[1] = "null값2";
       }
       if(type_list.length == 2){
          type_list[2] = "null값3";
       }
 */

       let num = []
       let name = []
       let ingredient = []
         let recipe_method = []
    
       let recipe_time = []
       let recipe_difficulty = []
       let recipe_detail = []
       let recipe_img = []
       let cooking_img = []
    
       let calories = []
       let protein = []
       let carbohydrate = []
       let fat = []
       
         
       
       
            $.ajax({
               
               
             url:"ajax.do",
             dataType:"json",
             contentType: "application/json",
             data:{"Search" : InputSearch.value,
                  "Method" : Result_method,
                  "Level" : Result_level,
                  "Time" : Result_time
                   
                },
             
             success:function(data){
                console.log("통신성공");
                console.log(data);
                
                for(let i = 0; i<data.length; i++){
                   
                   num.push(data[i].recipe_code),
                   name.push(data[i].recipe_name),
                   ingredient.push(data[i].ingredient),
                   recipe_method.push(data[i].recipe_method),
                           

                   recipe_time.push(data[i].recipe_time),
                   recipe_difficulty.push(data[i].recipe_difficulty),
                   recipe_detail.push(data[i].recipe_detail),
                   recipe_img.push(data[i].recipe_img),
                   cooking_img.push(data[i].cooking_img),
                           
                   calories.push(data[i].calories),
                   protein.push(data[i].protein),
                   carbohydrate.push(data[i].carbohydrate),
                   fat.push(data[i].fat)
                    }
                
               let Recipe = {
                     "Num" : num,
                       "Name" : name,
                       "Ingredient" : ingredient,
                       "Recipe_method" : recipe_method,
                       
                       "Recipe_time" : recipe_time,
                       "Recipe_difficulty" : recipe_difficulty,
                       "Recipe_detail" : recipe_detail,
                       "Recipe_img" : recipe_img,
                       "Cooking_img" : cooking_img,
                       
                       "Calories" : calories,
                      "Protein" : protein,
                      "Carbohydrate" : carbohydrate,
                       "Fat" : fat
                }
                  
  
                console.log("레시피");
                 console.log(Recipe);

                   
               search_model.innerHTML = null;
               let resultHTML =
                   `<br>
                   <div style="overflow:auto; width:500px; height:800px;">
                   <table border="1" id="foodplace" width:"300px"> 
                       <tr>
                           <th>음식 이미지</th>
                           <th>음식 이름</th>
                           <th>난이도</th>
                       </tr>
                       <div>`;
               //사용자 검색완료 후 출력되는 레시피에 id를 부여
       ////~~~~~~~~~~~~~~~check//
               for(let i = 0; i<Recipe.Num.length; i++){
                   resultHTML += 
                       `<tr>
                           <td><img src = "\${Recipe.Recipe_img[i]}" width = 180px height = 180px></td>
                           <td align="center"><button id = "\${Recipe.Num[i]}" class="btn btn-warning">\${Recipe.Name[i]}</button></td>
                           <b><td>\${Recipe.Recipe_difficulty[i]}</td></b>
                       </tr>`;
               }
               resultHTML += `</table></div>`;
               recipe_area.innerHTML = resultHTML;

             //4.사용자가 검색한 레시피에 대해서 아이디를 가져온 후 그중에서 하나를 선택할 수 있게 만드는 기능
             //Click_IDbutton
             function Click_Addbutton(i){ 
                 let tmp = document.getElementById(`\${Recipe.Num[i]}`);
                 tmp.addEventListener("click",recipe_click);
             }
  
             for(let i = 0; i<Recipe.Num.length; i++){
                 Click_Addbutton(i);
             }

               function recipe_click(){//====================5.===============

                   console.log(this.id);
                   
               //5.선택한 레시피의 대한 정보를 가져오는 기능
               let recipe_num = String(this.id);
               
               let Result_Html = "";
             
               for(let i = 0; i<Recipe.Num.length; i++){
                   if(recipe_num == Recipe.Num[i]){
                   //Cooking_img 전처리
               //Cooking_img와 Recipe_detail [,] split필요
                  
                  //사용자가 선택한 레시피 이미지
                  SelectImg = Recipe.Recipe_img[i];
                   
                      //사용자가 선택한 레시피코드 User_Recipe로 push하기
             
                      User_Recipe.push(Recipe.Num[i])

                  //replace ''제거
                  let Temp_Cooking_img = Recipe.Cooking_img[i].replace(/\'/gi,"");
                  
                  
                  //split (,)기준으로 나눔
                  Temp_Cooking_img = Temp_Cooking_img.split(",");
         
                  //replace[ , ] 제거
                  Temp_Cooking_img[0] = Temp_Cooking_img[0].replace("[","");
                  Temp_Cooking_img[Temp_Cooking_img.length-1] = Temp_Cooking_img[Temp_Cooking_img.length-1].replace("]","");
                  
                  
               //Recipe_detail 전처리
                  //(',)를 기준으로 split
                  let Temp_Recipe_detail = Recipe.Recipe_detail[i].split("\',");
                  
                  //] , [ 제거
                  Temp_Recipe_detail[0] = Temp_Recipe_detail[0].replace("[","");
                  Temp_Recipe_detail[Temp_Recipe_detail.length-1] = Temp_Recipe_detail[Temp_Recipe_detail.length-1].replace("]","");
                  
                  
               //Ingredient 전처리
                  let Temp_Ingrident = Recipe.Ingredient[i];
                  
                  //Temp_Ingrident = Temp_Ingrident.split("|");
                  //Temp_Ingrident[0] = Temp_Ingrident[0].substr(5,Temp_Ingrident[0].length-1);

                  //[string](대괄호 포함해서) --> |로 바꾸기
                  let Check1 = 100;
                  let Check2 = 100;
                  for(let k = 0; k<Temp_Ingrident.length; k++){
                        if(Temp_Ingrident[k] == "["){
                           Check1 = k;
                           console.log("확인 111" + Temp_Ingrident[k]);
                           console.log("확인 Check : " + Check1);
                           
                        }
                        if(Temp_Ingrident[k] == "]"){
                           
                           Check2 = k; 
                           console.log("확인 222" + Temp_Ingrident[k])   
                           console.log("확인 Check : " + Check2);
                           console.log(Temp_Ingrident,Check1,Check2);
                              
                           let changeStr = Temp_Ingrident.substring(Check1,Check2+1);
                              
                           Temp_Ingrident = Temp_Ingrident.replace(changeStr,"|"); 
                           console.log("결과 : ");
                           console.log(Temp_Ingrident);
                              
                        }
                        
                  }
                  
                  let changeStr2 = Temp_Ingrident.substring(0,2);
                  Temp_Ingrident = Temp_Ingrident.replace(changeStr2,"");
                  
                  Temp_Ingrident = Temp_Ingrident.split("|");    //Split(ingrident전처리)
                  
                         //5-1. 사용자가 클릭한 재료 크롤링해서 crawling_area 위치에 출력
                       let Ingrident_Html = "";
                       for(let i = 0; i<5; i++){
                          if(Temp_Ingrident[i] != null){
                                Ingrident_Html += 
                             `<a href= "javascript:crawling('\${Temp_Ingrident[i]}')">\${Temp_Ingrident[i]}   </a>`
                          }
                        };
                        
                  //5-2. 사용자가 선택한 조리 이미지, 조리 방법,영양소 출력 
                       for(let i = 0; i<Temp_Cooking_img.length; i++){
                          //작은따음표 제거
                          Temp_Recipe_detail[i] = Temp_Recipe_detail[i].replace(/\'/gi,"");
                          
                           Result_Html +=                          
                             `<tr>
                                 <td><img src = "\${Temp_Cooking_img[i]}" width = "100px" height = "100px"></td> 
                                 <td colspan = 3>\${Temp_Recipe_detail[i]}</td> 
                             </tr>`

                       };

                       recipe_area.innerHTML = 
                         `<table border = 1 id="foodplace">
                             <tr>
                                 <td colspan = 3> \${ButtonId_Name}번째 도시락 </td>
                             </tr>
                             <tr>
                                 <td colspan = 2><img src = "\${Recipe.Recipe_img[i]}" width = 300px height = 200px></td>
                                 <td colspan = 2>
                                 \${"칼로리 : "+Recipe.Calories[i] +" 단백질 : "+Recipe.Protein[i] + " 탄수화물 : "+Recipe.Carbohydrate[i] + " 단백질 : "+Recipe.Fat[i]}
                                 <br>
                                 
                                 </td>  
                             </tr>
                     <tr>
                        <td colspan = 4>
                           \${Ingrident_Html}
                              <td>
                         </tr>
                         
                             \${Result_Html}
                             <tr>
                                 <td colspan = "2"><button id = "Go_Back">뒤로가기</button></td>
                                 <td colspan = "2" align = "center"><button id = "Select_Complete">선택 완료</button></td>   
                             </tr>
                         </table>`
                   }
           }//for문
           
           //5-3. 사용자가 선택완료 누를시 도시락 저장
           let SelectComplete = document.getElementById("Select_Complete");
          
       
           function Select_complete(){
              
              recipe_area.innerHTML = "";
              crawling_area.innerHTML = "";
              
              ButtonId_s.innerHTML = `<img src = "\${SelectImg}" width = 50px height = 50px>`;
              alert("선택완료!!");
              CompleteR_Num_list.push(5);
              
              console.log("레시피 선택 완료 횟수 : "+CompleteR_Num_list.length);
              
              
                $.ajax({//ajax_Send_lbseqCon.do
                   
                    url : "ajax_Send_lbseqCon.do",
                    dataType:"json",
                    contentType: "application/json",
                    success : function(data){ // success=========================
                       
                       console.log(data)
                       
                        $.ajax({
                           url : "ajax_LunchSuB.do",
                          dataType:"json",
                          contentType: "application/json",
                          data:{"Seq" : User_Recipe[0] , "Num" : User_Recipe[1] ,"LunchBox_seq" : data},
                           
                          
                        });
                    //7 도시락 완성버튼 클릭시 최종 저장하는 기능
                     let LunCompleteB = document.querySelector("#Lun_CompleteB");
                      //도시락 순번
                      function CompeteR_Click() {
                         if(CompleteR_Num_list.length >= 2){
                            
                            //tbl_lunchbox_detail테이블을 이용해서 tbl_lunchbox에 최종저장
                            lunName_area.innerHTML = 
                               `<label>도시락 이름 : </label>
                             <input type = "text" id = "Lunchbox_Name">
                             <button type = "button" id = "Lunchbox_Name_button">완료</button>`;
                            //사용자가 입력한 도시락 이름을 lun_name이라는 변수에 담기 
                            
                            let NameButton = document.getElementById("Lunchbox_Name_button");
                            
                            NameButton.addEventListener('click',function(){
                               let LunchboxName = document.getElementById("Lunchbox_Name");
                               let lun_name = LunchboxName.value;
                               alert("저장완료")
                               location.href = "GoLunchResult.do";
                               $.ajax({
                               url : "ajax_Insert_CompleteLB.do",
                                 dataType:"json",
                                 contentType: "application/json",
                                 data:{"LunchBox_seq" : data , "Lunchbox_name" : lun_name},
                               
                            });    
                            })
                      
                         
                               
                         }
                         else {
                            alert("2개 이상 선택 바람~");
                         }
                      }
                      
                      LunCompleteB.addEventListener("click",CompeteR_Click);
                      
                    }//success===============================
                  
                    
                });//ajax_Send_lbseqCon.do
           }
         
           SelectComplete.addEventListener("click",Select_complete);
           
           //6.사용자가 뒤로가기 버튼을 클릭시 레시피 선택 화면 출력
           let Goback = document.getElementById("Go_Back");
          
           function GoBack(){
              
              recipe_area.innerHTML = resultHTML;
              for(let i = 0; i<Recipe.Num.length; i++){
                  Click_Addbutton(i);
               }
           }
           
           Goback.addEventListener("click",GoBack);
           
           
       }//=========================== 5.=========================
                
                    
    },
  });
    

}//search_click() ========================================= search_click =========================================
    SearchBar.addEventListener("click",search_click);
    
}

TempButton1.addEventListener("click",search_Model);
TempButton2.addEventListener("click",search_Model);
TempButton3.addEventListener("click",search_Model);
TempButton4.addEventListener("click",search_Model);
TempButton5.addEventListener("click",search_Model);


function crawling(search){
   console.log("==크롤링 시작==")
   
   $.ajax({
      url : 'http://59.3.58.53:3750/crawling',
      type : 'post',
      data : {
         'search' : search
      },
      success : function(res){
         result = res.sort(function(a,b) {   
                        return Number(a.price.replace()) - Number(b.price);
                     });
         
         let Crawling_Html_Sub = "";
         console.log(result);
         
         for(let i = 0; i<result.length; i++){
            Crawling_Html_Sub += `<tr>
                              <td>\${result[i].name}</td>
                              <td>\${result[i].price}</td>
                            </tr>`;
         };
         
         crawling_area.innerHTML = `<table border = 1>
                                 <tr>
                                    <td>이름</td>
                                    <td>가격</td>
                                 </tr>
                                 \${Crawling_Html_Sub}
                              </table>`;
         
         
         
         //result.name x 
         //result.price x
         
   
      },
         error : function(e){
         console.log(e)
      }
   })
   
}
</script>
		<div id="slideimg">
			<div id="ingi" align="center">
				<b>오늘의 인기 반찬!!</b>
				<div id="owl1">
					<div class="owl-carousel owl-theme">

						<img src="asset/image/닭강정.jpg"> <img
							src="asset/image/소시지볶음.jpg"> <img
							src="asset/image/소시지야채볶음.jpg"> <img
							src="asset/image/어묵볶음.jpg"> <img
							src="asset/image/파프리카볶음.jpg"> <img
							src="asset/image/닭강정.jpg"> <img src="asset/image/소시지볶음.jpg">
						<img src="asset/image/소시지야채볶음.jpg"> <img
							src="asset/image/어묵볶음.jpg"> <img
							src="asset/image/파프리카볶음.jpg">
					</div>
				</div>
			</div>
		</div>
		<!-- 슬라이딩이미지 div 마무리 -->
	</div>
	<!-- 전체 div 마무리 -->

</body>
</html>