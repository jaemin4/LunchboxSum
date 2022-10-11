<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Nutrition</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
 
 /* 네비게이션바 스타일*/
#navih {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: rgba(0,24,113,1);
}

#c {
	float: left;
}

#c a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

#c b {
	display: block;
	color: rgba(255,181,73,1);
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}



#c a:hover {
	background-color: #111;
}
 
/* 네비게이션바 스타일종료*/
 
   .wrap{
     position: relative;
      min-height : 100%;
      padding-bottom: 100px;
   }
   html,body{
   height : 100%;
   }

   /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 2100px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      position : absolute;
      bottom : 0;
      background-color: #555;
      color: white;
      padding: 15px;
      width : 100%
      
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
    .pagination a.visited {
   background-color: tomato;
   color: white;
}


  </style>
</head>
<body>
<div id="header">
			<ul id ="navih">
				<li id = "c"><b>LunchBoxsimulator</b></li>
				<li id = "c"><a href="GoMain.do"> Main</a></li>
				<li id = "c"><a href="GoNutrition.do">영양소 및 칼로리</a></li>
				<li id = "c"><a href="GoAsk.do">자주묻는질문</a></li>
				<li id = "c"><a href="SelectAll.do">도시락정보공유게시판</a></li>
			</ul>

		</div>



<div class = "wrap">
<div class="container-fluid">
  <div class="row content">
    
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width:15%">
<br><br>
      <h3 class="w3-bar-item">연령대별 분류</h3>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="#section1" class="w3-bar-item w3-button">20대</a></li>
        <li><a href="#section2" class="w3-bar-item w3-button">30대</a></li>
        <li><a href="#section3" class="w3-bar-item w3-button">40대</a></li>
        <li><a href="#section4" class="w3-bar-item w3-button">50대</a></li>
      </ul><br>
     
    </div>
   <div style="margin-left:15%">
    <div class="col-sm-9">
    <br>
      <h4>권장 영양 성분 및 칼로리 정보</h4>
      <hr>
      <a id = section1></a>
      <h2>20대 남녀 권장 영양 성분 및 칼로리 & 추천 식재료</h2>
      <table class="table table-striped table-hover">
      
       <tr>
        <th>성별</th>
        <th>탄수화물</th>
        <th>단백질</th>
        <th>지방</th>
        <th>칼로리</th>
        </tr>
        <tr>
        <td>남</td>
        <td>438g</td>
        <td>70g</td>
        <td>55g</td>
        <td>2500kcal</td>
        </tr>
        <tr>
        <td>여</td>
        <td>368g</td>
        <td>50g</td>
        <td>46g</td>
        <td>2100kcal</td>
        </tr>
      </table>
     <div>
      <img style = "float:left;"src = "asset/image/20x.png"  height = 250px width = 300px style="vertical-align:middle;">
      <span style="margin-top:20px;font-size:18px;" >
      <br><br>
      &nbsp;&nbsp;20대는 사회생활의 변화로 식생활이 가장 극적으로 바뀌기 때문에<br>
      &nbsp;&nbsp;비타민 B가 필요하다. 술,카페인의 섭취가 늘고 사회생활에서 오는<br>
      &nbsp;&nbsp;스트레스가 증가한다. 이런 생활방식의 변화는 비타민 B부족을 초래한다.<br>
      &nbsp;&nbsp;비타민 B는 육류, 생선, 유제품, 계란 등에 풍부하다.<br><br><br><br><br><br>
      </span>
      
      </div>
      
      <a id = section2></a>
      <h2>30대 남녀 권장 영양 성분 및 칼로리 & 추천 식재료</h2>
       <table class="table table-striped table-hover">
         <tr>
        <th>성별</th>
        <th>탄수화물</th>
        <th>단백질</th>
        <th>지방</th>
        <th>칼로리</th>
        </tr>
        <tr>
        <td>남</td>
        <td>420g</td>
        <td>60g</td>
        <td>53g</td>
        <td>2400kcal</td>
        </tr>
        <tr>
        <td>여</td>
        <td>350g</td>
        <td>54g</td>
        <td>44g</td>
        <td>2000kcal</td>
        </tr>
      </table>
      <div>
      <img style = "float:left;"src = "asset/image/30x.png"  height = 250px width = 300px style="vertical-align:middle;">
      <span style="margin-top:20px;font-size:18px;" >
      <br><br>
      &nbsp;&nbsp;30대가 신경써서 먹어야 할 식품은 귀리, 현미 등 통곡물이다. 엽산은 임신하고자<br>
      &nbsp;&nbsp;하는 여성에 좋고 통곡물은 체중관리에 도움이 되며 비타민B의 공급원이기도 하다.<br>
      &nbsp;&nbsp;또한 소화를 돕고 섬유질이 풍부해 장을 건강하게 유지하는데 도움을 준다.<br>
      <br><br><br><br><br><br><br>
      </span>
      </div>
      <a id = section3></a>
      <h2>40대 남녀 권장 영양 성분 및 칼로리 & 추천 식재료</h2>
    <table class="table table-striped table-hover">
         <tr>
        <th>성별</th>
        <th>탄수화물</th>
        <th>단백질</th>
        <th>지방</th>
        <th>칼로리</th>
        </tr>
        <tr>
        <td>남</td>
        <td>420g</td>
        <td>55g</td>
        <td>43g</td>
        <td>2400kcal</td>
        </tr>
        <tr>
        <td>여</td>
        <td>350g</td>
        <td>55g</td>
        <td>44g</td>
        <td>2000kcal</td>
        </tr>
      </table>
      <div>
     <img style = "float:left;" src = "asset/image/40x.png"  height = 250px width = 300px style="vertical-align:middle;">
      <span style="margin-top:20px;font-size:18px;" >
      <br><br>
      &nbsp;&nbsp;40대는 항산화물질이 함유된 식품을 먹어야 하는 나이다. 항산화물질은<br>
      &nbsp;&nbsp;토마토, 블루베리 등 알록달록한 색깔의 과일과 채소에 들어있다.<br>
      <br><br><br><br><br><br><br><br>
      </span>
      </div>

      
      <a id = section4></a>
      <h2>50대 남녀 권장 영양 성분 및 칼로리 & 추천 식재료</h2>
   <table class="table table-striped table-hover">
         <tr>
        <th>성별</th>
        <th>탄수화물</th>
        <th>단백질</th>
        <th>지방</th>
        <th>칼로리</th>
        </tr>
        <tr>
        <td>남</td>
        <td>385g</td>
        <td>55g</td>
        <td>49g</td>
        <td>2200kcal</td>
        </tr>
        <tr>
        <td>여</td>
        <td>315g</td>
        <td>45g</td>
        <td>40g</td>
        <td>1800kcal</td>
        </tr>
      </table>
      <div>
      <img style = "float:left;" src = "asset/image/50x.png"  height = 250px width = 300px style="vertical-align:middle;">
      <span style="margin-top:20px;font-size:18px;" >
      <br><br>
      &nbsp;&nbsp;50대 체중관리와 당뇨병,심장병 등을 예방하는 데 집중해야 하는 시기다. <br>
      &nbsp;&nbsp;심혈관계의 질환의 위험을 낮추려면 포화지방을 줄이고 불포화지방의 섭취를 <br>
      &nbsp;&nbsp;늘려야 한다. 불포화지방은 올리브유나 생선 등을 통해 섭취할 수 있다.<br>
      </span>
      
      </div>


    </div>
  </div>
</div>
<div style="margin-left:15%">
<footer class= "container-fluid">
  출처 - 국민건강보험공단 블로그
(https://blog.naver.com/nhicblog/222893616173)
</footer>
</div>
</div>
</div>
</body>
</html>