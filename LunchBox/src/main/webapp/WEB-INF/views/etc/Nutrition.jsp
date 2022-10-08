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
 
   .wrap{
     position: relative;
      min-height : 100%;
      padding-bottom: 100px;
   }
   html, body{
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
   
<div class = "wrap">
<div class="container-fluid">
  <div class="row content">
    
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width:15%">
<br><br>
      <h3 class="w3-bar-item">���ɴ뺰 �з�</h3>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="#section1" class="w3-bar-item w3-button">20��</a></li>
        <li><a href="#section2" class="w3-bar-item w3-button">30��</a></li>
        <li><a href="#section3" class="w3-bar-item w3-button">40��</a></li>
        <li><a href="#section4" class="w3-bar-item w3-button">50��</a></li>
      </ul><br>
     
    </div>
   <div style="margin-left:15%">
    <div class="col-sm-9">
    <br>
      <h4>���� ���� ���� �� Į�θ� ����</h4>
      <button onclick="location.href='SelectAll.do'"
                              class="btn btn-primary btn-sm" id="Back">�ڷΰ���</button>
      <hr>
      <a id = section1></a>
      <h2>20�� ���� ���� ���� ���� �� Į�θ� & ��õ �����</h2>
      <table class="table table-striped table-hover">
      
       <tr>
        <th>����</th>
        <th>ź��ȭ��</th>
        <th>�ܹ���</th>
        <th>����</th>
        <th>Į�θ�</th>
        </tr>
        <tr>
        <td>��</td>
        <td>438g</td>
        <td>70g</td>
        <td>55g</td>
        <td>2500kcal</td>
        </tr>
        <tr>
        <td>��</td>
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
      &nbsp;&nbsp;20��� ��ȸ��Ȱ�� ��ȭ�� �Ļ�Ȱ�� ���� �������� �ٲ�� ������<br>
      &nbsp;&nbsp;��Ÿ�� B�� �ʿ��ϴ�. ��,ī������ ���밡 �ð� ��ȸ��Ȱ���� ����<br>
      &nbsp;&nbsp;��Ʈ������ �����Ѵ�. �̷� ��Ȱ����� ��ȭ�� ��Ÿ�� B������ �ʷ��Ѵ�.<br>
      &nbsp;&nbsp;��Ÿ�� B�� ����, ����, ����ǰ, ��� � ǳ���ϴ�.<br><br><br><br><br><br>
      </span>
      
      </div>
      
      <a id = section2></a>
      <h2>30�� ���� ���� ���� ���� �� Į�θ� & ��õ �����</h2>
       <table class="table table-striped table-hover">
         <tr>
        <th>����</th>
        <th>ź��ȭ��</th>
        <th>�ܹ���</th>
        <th>����</th>
        <th>Į�θ�</th>
        </tr>
        <tr>
        <td>��</td>
        <td>420g</td>
        <td>60g</td>
        <td>53g</td>
        <td>2400kcal</td>
        </tr>
        <tr>
        <td>��</td>
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
      &nbsp;&nbsp;30�밡 �Ű�Ἥ �Ծ�� �� ��ǰ�� �͸�, ���� �� ���̴�. ������ �ӽ��ϰ���<br>
      &nbsp;&nbsp;�ϴ� ������ ���� ���� ü�߰����� ������ �Ǹ� ��Ÿ��B�� ���޿��̱⵵ �ϴ�.<br>
      &nbsp;&nbsp;���� ��ȭ�� ���� �������� ǳ���� ���� �ǰ��ϰ� �����ϴµ� ������ �ش�.<br>
      <br><br><br><br><br><br><br>
      </span>
      </div>
      <a id = section3></a>
      <h2>40�� ���� ���� ���� ���� �� Į�θ� & ��õ �����</h2>
    <table class="table table-striped table-hover">
         <tr>
        <th>����</th>
        <th>ź��ȭ��</th>
        <th>�ܹ���</th>
        <th>����</th>
        <th>Į�θ�</th>
        </tr>
        <tr>
        <td>��</td>
        <td>420g</td>
        <td>55g</td>
        <td>43g</td>
        <td>2400kcal</td>
        </tr>
        <tr>
        <td>��</td>
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
      &nbsp;&nbsp;40��� �׻�ȭ������ ������ ��ǰ�� �Ծ�� �ϴ� ���̴�. �׻�ȭ������<br>
      &nbsp;&nbsp;�丶��, ��纣�� �� �˷ϴ޷��� ������ ���ϰ� ä�ҿ� ����ִ�.<br>
      <br><br><br><br><br><br><br><br>
      </span>
      </div>

      
      <a id = section4></a>
      <h2>50�� ���� ���� ���� ���� �� Į�θ� & ��õ �����</h2>
   <table class="table table-striped table-hover">
         <tr>
        <th>����</th>
        <th>ź��ȭ��</th>
        <th>�ܹ���</th>
        <th>����</th>
        <th>Į�θ�</th>
        </tr>
        <tr>
        <td>��</td>
        <td>385g</td>
        <td>55g</td>
        <td>49g</td>
        <td>2200kcal</td>
        </tr>
        <tr>
        <td>��</td>
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
      &nbsp;&nbsp;50�� ü�߰����� �索��,���庴 ���� �����ϴ� �� �����ؾ� �ϴ� �ñ��. <br>
      &nbsp;&nbsp;���������� ��ȯ�� ������ ���߷��� ��ȭ������ ���̰� ����ȭ������ ���븦 <br>
      &nbsp;&nbsp;�÷��� �Ѵ�. ����ȭ������ �ø������� ���� ���� ���� ������ �� �ִ�.<br>
      </span>
      
      </div>


    </div>
  </div>
</div>
<div style="margin-left:15%">
<footer class= "container-fluid">
  ��ó - ���ΰǰ�������� ��α�
(https://blog.naver.com/nhicblog/222893616173)
</footer>
</div>
</div>
</div>
</body>
</html>