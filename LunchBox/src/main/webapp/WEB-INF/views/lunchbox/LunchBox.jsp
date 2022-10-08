<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.Recipe"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/css?family=BenchNine:700);

.snip1535 {
	background-color: #c47135;
	border: none;
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	font-family: 'BenchNine', Arial, sans-serif;
	font-size: 1em;
	font-size: 22px;
	line-height: 1em;
	margin: 15px 40px;
	outline: none;
	padding: 12px 40px 10px;
	position: relative;
	text-transform: uppercase;
	font-weight: 700;
}

.snip1535:before, .snip1535:after {
	border-color: transparent;
	-webkit-transition: all 0.25s;
	transition: all 0.25s;
	border-style: solid;
	border-width: 0;
	content: "";
	height: 24px;
	position: absolute;
	width: 24px;
}

.snip1535:before {
	border-color: #c47135;
	border-right-width: 2px;
	border-top-width: 2px;
	right: -5px;
	top: -5px;
}

.snip1535:after {
	border-bottom-width: 2px;
	border-color: #c47135;
	border-left-width: 2px;
	bottom: -5px;
	left: -5px;
}

.snip1535:hover, .snip1535.hover {
	background-color: #c47135;
}

.snip1535:hover:before, .snip1535.hover:before, .snip1535:hover:after,
	.snip1535.hover:after {
	height: 100%;
	width: 100%;
}
</style>

</head>
<body>

	<button class="snip1535" id="Temp_Button1">1</button>
	<button class="snip1535 hover" id="Temp_Button2">2</button>
	<button class="snip1535" id="Temp_Button3">3</button>
	<button class="snip1535" id="Temp_Button4">4</button>
	<button class="snip1535" id="Temp_Button5">5</button>
	<button class="snip1535" id="Lun_CompleteB">도시락 완성하기</button>
	
	<div id = "lunName_area"></div>

	
	<div id="recipe_area"></div>

	<div class="search-box" id="search_model"></div>
	<div id="crawling_area"></div>





	<script>
//1.도시락 완성하기 버튼에서 사용자가 2개이상 레시피를 클릭시 완성저장 할 수 있게끔 완성될때마다 push
let CompleteR_Num_list = [];




//2.도시락창 클릭시 기능
let TempButton1 = document.querySelector("#Temp_Button1");
let TempButton2 = document.querySelector("#Temp_Button2");
let TempButton3 = document.querySelector("#Temp_Button3");
let TempButton4 = document.querySelector("#Temp_Button4");
let TempButton5 = document.querySelector("#Temp_Button5");


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
        search_model.innerHTML = `
        						<input class="search-txt" type="text" placeholder="검색어를 입력해 주세요" id = "Input_Search">
                                <button class="search-btn" type="submit" id = 'searchbar' >찾기</button>`;
                                
//jsquery//3.검색 클릭시 
let InputSearch = document.getElementById("Input_Search");
let SearchBar = document.getElementById("searchbar");

//===================================================================================================                  
    
    function search_click(){//search_click =========================================
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
    			data:{"Search" : InputSearch.value},
    			
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
    	            `<table border="1"> 
    	                <tr>
    	                    <th>음식 이미지</th>
    	                    <th>음식 이름</th>
    	                    <th>난이도</th>
    	                </tr>`;
    	        //사용자 검색완료 후 출력되는 레시피에 id를 부여
    	////~~~~~~~~~~~~~~~check//
    	        for(let i = 0; i<Recipe.Num.length; i++){
    	            resultHTML += 
    	                `<tr>
    	                    <td><button><img src = "\${Recipe.Recipe_img[i]}" width = 200px height = 200px></button></td>
    	                    <td><button id = "\${Recipe.Num[i]}">\${Recipe.Name[i]}</button></td>
    	                    <td>\${Recipe.Recipe_difficulty[i]}</td>
    	                </tr>`;
    	        }
    	        resultHTML += `</table>`;
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
						
						Temp_Ingrident = Temp_Ingrident.split("|"); 	//Split(ingrident전처리)
						
	                   	//5-1. 사용자가 클릭한 재료 크롤링해서 crawling_area 위치에 출력
	                    let Ingrident_Html = "";
	                    for(let i = 0; i<5; i++){
	                    	if(Temp_Ingrident[i] != null){
	                       		Ingrident_Html += 
	                    	   `<a href= "javascript:crawling('\${Temp_Ingrident[i]}')">\${Temp_Ingrident[i]}	</a>`
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
    	                  `<table border = 1>
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
    	                          <td><button id = "Go_Back">뒤로가기</button></td>
    	                          <td><button id = "Search_Price">최저가 검색</button></td> 
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
    	   	         		alert("저장완료")
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
    	   	         			console.log("들 "+lun_name);
    	   	         			
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
</body>
</html>