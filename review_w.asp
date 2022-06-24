<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>사용후기_write | U CAN EAR - 유 캔 이어</title>
  <meta name="author" content="U CAN EAR">
  <meta name="keywords" content="U CAN EAR, 유 캔 이어, 맑음히어링테크, 보청기, hearing aid, 보청기 추천, 보청기 센터">
  <meta name="description" content="지역 내 우수한 보청기센터를 중개해주는 플랫폼, 유 캔 이어">
  <link rel="icon" type="image/x-icon" href="images/logo.png">
  <link rel="shortcut icon" type="image/x-icon" href="images/logo.png">

  <meta property="og:type" content="website">
  <meta property="og:title" content="U CAN EAR - 유 캔 이어">
  <meta property="og:description" content="지역 내 우수한 보청기센터를 중개해주는 플랫폼, 유 캔 이어">
  <meta property="og:url" content="http://ucanear.co.kr/index.asp">

  <meta property="twitter:card" content="summary">
  <meta property="twitter:title" content="U CAN EAR - 유 캔 이어">
  <meta property="twitter:description" content="지역 내 우수한 보청기센터를 중개해주는 플랫폼, 유 캔 이어">
  
  <script src="js/jquery-3.6.0.min.js"></script>
  <script src="js/index.js"></script>
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/inquire.css">
</head>
<body>
  <!-- #include file = "header.asp" -->
  <section>
    <h1>사용후기</h1>
    <table>
      <tr>
        <th>제목</th>
        <td>
          <input type="text" id="title">
          <label for="title"></label>
        </td>
      </tr>
      <tr>
        <th>작성자</th>
        <td>
          <input type="text" id="writer">
          <label for="writer"></label>
        </td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td>
          <input type="password" id="password">
          <label for="password"></label>
        </td>
      </tr>
      <tr>
        <th>내용</th>
        <td>
          <textarea name="review-txt" id="review-txt"></textarea>
        </td>
      </tr>
      <tr>
        <th>개인정보<br>수집·이용에<br>대한 안내<span>&nbsp;*</span></th>
        <td>
          <div class="info">
            <div class="box">
              <p>개인정보의 수집 및 이용 목적</p>
              <p>고객상담 등 원활한 의사소통을 위한 경로 확보
                자료 제공 및 상품 배송 등의 서비스 이행을 위한 정보 수집</p>
            </div>
            <div class="box">
              <p>수집하는 개인정보의 항목 및 수집 방법</p>
              <p>문의 필수항목 : 이름, 이메일,연락처</p>
            </div>
            <div class="box">
              <p>개인정보 보유 및 이용기간</p>
              <p>3년 (고객의 요청에 따라 언제든지 삭제될 수 있습니다.)</p>
            </div>
            <p>
              미동의 시 불이익 고지개인정보 수집에 대해 동의하지 않을 수 있으며, 동의하지 않는 경우 문의접수 이용이 제한될 수 있습니다.
            </p>
          </div>
          <input type="radio" name="info" id="agree">
          <label for="agree" class="agree">동의합니다</label>
          <input type="radio" name="info" id="disagree" checked>
          <label for="disagree" class="agree">동의하지 않습니다</label>
        </td>
      </tr>
    </table>
    <button>
      글쓰기
    </button>
  </section>
  <!-- #include file = "footer.asp" -->
</body>
</html>