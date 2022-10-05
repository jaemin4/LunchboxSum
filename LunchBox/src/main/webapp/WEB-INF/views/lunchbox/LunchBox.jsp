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
	<div id="recipe_area"></div>

	<div class="search-box" id="search_model"></div>

	<div>
		<c:forEach items="${lunchList}" var="list">
			<li>\${list.recipeName}</li>
		</c:forEach>
	</div>




	<script>








//1. 임의의 데이터
let recipe_name = ["김치볶음밥","김치찌개","된장찌개"];
let recipe_level = ["초급","초급","초급"];
let recipe_img = ["https://recipe1.ezmember.co.kr/cache/recipe/2015/08/27/93a6ce156fe8e3e9d29ca038e28e41611.jpg",
				  "https://recipe1.ezmember.co.kr/cache/recipe/2015/07/21/de6192c53e28acb89960c44d27721da6.jpg",
				  "https://recipe1.ezmember.co.kr/cache/recipe/2015/09/02/135db1a459094dbfb016c259787892c71.jpg"]
let recipe_num = ["14532","28765","39874"]
let recipe_recipe = ["삶는다","굽는다","끓인다"]
let recipe_indi_img = ["https://recipe1.ezmember.co.kr/cache/recipe/2015/06/17/6e2656e2faa5c221c6ff0beffb912d181.jpg"
						,"https://recipe1.ezmember.co.kr/cache/recipe/2015/06/17/f39a8375ed20a6ff9602fdc3cbaeceef1.jpg"
						,"https://recipe1.ezmember.co.kr/cache/recipe/2015/06/17/8e7ccba63514bd644d371350a0074e921.jpg"]
let recipe_cal = [350,570,243]
let recipe_nut = [123,36,43]

//2.도시락창 클릭시 기능
let TempButton1 = document.querySelector("#Temp_Button1");
let TempButton2 = document.querySelector("#Temp_Button2");
let TempButton3 = document.querySelector("#Temp_Button3");
let TempButton4 = document.querySelector("#Temp_Button4");


//2.5클릭시 검색창 뜸
function search_Model(){
        search_model.innerHTML = "";
        recipe_area.innerHTML = "";
        search_model.innerHTML = `
        						<input class="search-txt" type="text" placeholder="검색어를 입력해 주세요" id = "Input_Search">
                                <button class="search-btn" type="submit" id = 'searchbar' >찾기</button>`;
                                
//jsquery//3.검색 클릭시 
let InputSearch = document.getElementById("Input_Search");
let SearchBar = document.getElementById("searchbar");

//===================================================================================================                  
    
    //3.5 검색완료시 DB에서 데이터를 가져옴(DTO형식으로)
    let Recipe = {
        "name" : recipe_name,
        "level" : recipe_level,
        "img" : recipe_img,
        "num" : recipe_num,
        "recipe" : recipe_recipe,
        "indi_img" : recipe_indi_img,
        "cal" : recipe_cal,
        "nut" : recipe_nut,
	}

    
	//ArrayList<Recipe> list = new ArrayList<>();
	
	//list = "lunchList"라는 파라미터값을 받아와야함

    function search_click(){//search_click =========================================
    	
      		$.ajax({
    			url:"ajax.do",
    			dataType:"json",
    			contentType: "application/json",
    			data:{"Search" : InputSearch.value},
    			
    			success:function(data){
    				console.log("통신성공");
    				console.log(data);
                    console.log(data.get(i).getRecipe_name());
    			},
    		});
      		
    	
        search_model.innerHTML = null;
        let resultHTML =
            `<table border="1"> 
                <tr>
                
                    <th>음식 이미지</th>
                    <th>음식 이름</th>
                    <th>난이도</th>
                </tr>`;
        //사용자 검색완료 후 출력되는 레시피에 id를 부여
        for(let i = 0; i<recipe_name.length; i++){
            resultHTML += 
                `<tr>
                    <td><button><img src = "\${Recipe.img[i]}" width = 200px height = 200px></button></td>
                    <td><button id = "\${Recipe.num[i]}">\${Recipe.name[i]}</button></td>
                    <td>\${Recipe.level[i]}</td>
                </tr>`;
        }
        resultHTML += `</table>`;
        recipe_area.innerHTML = resultHTML;

      //4.사용자가 검색한 레시피에 대해서 아이디를 가져온 후 그중에서 하나를 선택할 수 있게 만드는 기능
      //Click_IDbutton
      function Click_Addbutton(i){ 
          let tmp = document.getElementById(`\${recipe_num[i]}`);
          tmp.addEventListener("click",recipe_click);
      }

      for(let i = 0; i<recipe_num.length; i++){
          Click_Addbutton(i);
      }

        function recipe_click(){//====================5.===============

            console.log(this.id);
            
        //5.선택한 레시피의 대한 정보를 가져오는 기능
        let recipe_num = String(this.id);
        let Result_Html = "";
        for(let i = 0; i<Recipe.num.length; i++){
            if(recipe_num == Recipe.num[i]){

                for(let i = 0; i<3; i++){
                    Result_Html +=                          
                      `<tr>
                          <td><img src = "\${Recipe.indi_img[i]}" width = "100px" height = "100px"></td> 
                          <td colspan = 3>\${Recipe.recipe[i]}</td> 
                      </tr>`;
                };

                recipe_area.innerHTML = 
                  `<table border = 1>
                      <tr>
                          <td colspan = 3>1번째 도시락칸</td>
                      </tr>
                      <tr>
                          <td colspan = 2><img src = "\${Recipe.img[i]}" width = 300px height = 200px></td>
                          <td colspan = 2>\${"칼로리 : "+Recipe.cal[i]+" 영양소 : "+Recipe.nut[i]}</td>  
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

    //6.사용자가 뒤로가기 버튼을 클릭시 레시피 선택 화면 출력
    let Goback = document.getElementById("Go_Back");
	
	
    function GoBack(){
    	
       recipe_area.innerHTML = resultHTML;
       for(let i = 0; i<recipe_num.length; i++){
           Click_Addbutton(i);
        }
    }
    
    Goback.addEventListener("click",GoBack);
    
  //7.사용자가 최저가 검색 버튼을 누를 시 검색창이 뜸
    let Searchprice = document.getElementById("Search_Price");
     function SearchPrice() {				  //Price_Area
   
    	 //8.사용자가 검색을 하면 크롤링된 데이터가 출력이됨
    	 	 search_model.innerHTML = "";
    	 	 recipe_area.innerHTML = "";
    	 	 search_model.innerHTML = 	
    	 	//8.5 사용자가 검색한 재료 크롤링하게끔 데이터 보내주기(Flask)
    	 		`<input class="search-txt" type="text" placeholder="검색어를 입력해 주세요" id = "Input_Search2">
    	 	     <button class="search-btn" type="submit" id = 'searchbar2' >찾기</button>`;
    	 for(let i = 0; i<5; i++){
  		 	Price_AreaResult += 
				`<tr>
					<td>이미지</td>
					<td>이름</td>
					<td>가격</td>
				</tr>`;
  		 };
    	 recipe_area.innerHTML = 
    	 						`<table border = 1 width = "700px" height = "700px">
									<tr>
										<td colspan = 3>n번째 도시락 칸</td>
									</tr>
									<tr>
										<td colspan = 3>최저가 검색</td>
									</tr>
										\${Price_AreaResult}
									<tr>
										<td><button id = "Price_Back">뒤로가기</button></td>
									</tr>
								 </table>`
										
		//9최저가 검색 -> 뒤로가기
		let PriceBack = document.getElementById("Price_Back");
		function PriceBack_fun(){
			window.history.back();
		}
			
		PriceBack.addEventListener("click",PriceBack_fun);
	} 

    Searchprice.addEventListener("click",SearchPrice);
    
   
}//=========================== 5.=========================
      

}//search_click() ========================================= search_click =========================================
    SearchBar.addEventListener("click",search_click);
    
}

TempButton1.addEventListener("click",search_Model);
TempButton2.addEventListener("click",search_Model);
TempButton3.addEventListener("click",search_Model);
TempButton4.addEventListener("click",search_Model);

</script>
</body>
</html>