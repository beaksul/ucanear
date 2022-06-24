<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>1:1문의 | U CAN EAR - 유 캔 이어</title>
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
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500;700&display=swap" rel="stylesheet">
</head>
<body>
  <!-- #include file = "header.asp" -->

 
   <section>
    <h1>1:1 문의</h1>
      <FORM ACTION="inquire_ok.asp" METHOD="post" NAME="cmtform" ><table>
      <tr>
        <th>이름<span>&nbsp;*</span></th>
        <td>
            <input name="name" type="text" id="name"/>
            <label for="name"></label>
        </td>
      </tr>
      <tr>
        <th>연락처<span>&nbsp;*</span></th>
        <td>
            <input type="text" name="phone1" id="phone1" maxlength="3">
            <label for="phone1"></label>
            <span>-</span>
            <input type="text" name="phone2" id="phone2" maxlength="4">
            <label for="phone2"></label>
            <span>-</span>
            <input type="text" name="phone3" id="phone3" maxlength="4">
            <label for="phone3"></label>
        </td>
      </tr>
      <tr>
        <th>이메일<span>&nbsp;*</span></th>
        <td>
            <input type="text" name="email1">
            <label for="email1"></label>
            <span>@</span>
            <input type="text" name="email2">
            <label for="email2"></label>
       
        </td>
      </tr>
      <tr>
        <th>성별<span>&nbsp;*</span></th>
        <td>
          <input type="radio" name="sex" value="male" checked>
          <label for="male">남성</label>
          <input type="radio" name="sex" value="female">
          <label for="female">여성</label>
        </td>
      </tr>
      <tr>
        <th>연령대<span>&nbsp;*</span></th>
        <td>
          <select name="age" id="age-option">
            <option value="선택해주세요">선택해주세요</option>
            <option value="10세 미만">10세 미만</option>
            <option value="10대">10대</option>
            <option value="20대">20대</option>
            <option value="30대">30대</option>
            <option value="40대">40대</option>
            <option value="50대">50대</option>
            <option value="60대">60대</option>
            <option value="70대">70대</option>
            <option value="80대">80대</option>
            <option value="90대">90대</option>
            <option value="100세 이상">100세 이상</option>
          </select>
        </td>
      </tr>
      <tr>
        <th>거주지역<span>&nbsp;*</span></th>
        <td>
          <select name="area" id="area-option">
            <option value="선택해주세요">선택해주세요</option>
            <option value="강원도">강원도</option>
            <option value="경기도">경기도</option>
            <option value="경상남도">경상남도</option>
            <option value="경상북도">경상북도</option>
            <option value="광주광역시">광주광역시</option>
            <option value="대구광역시">대구광역시</option>
            <option value="대전광역시">대전광역시</option>
            <option value="부산광역시">부산광역시</option>
            <option value="서울특별시">서울특별시</option>
            <option value="세종특별자치시">세종특별자치시</option>
            <option value="울산광역시">울산광역시</option>
            <option value="인천광역시">인천광역시</option>
            <option value="전라남도">전라남도</option>
            <option value="전라북도">전라북도</option>
            <option value="제주특별자치도">제주특별자치도</option>
            <option value="충청남도">충청남도</option>
            <option value="충청북도">충청북도</option>
          </select>
        </td>
      </tr>
      <tr>
        <th>제목<span>&nbsp;*</span></th>
        <td>
          <input name="title" type="text" id="title"/>
          <label for="title"></label>
        </td>
      </tr>
      <tr>
        <th>내용<span>&nbsp;*</span></th>
        <td>
          <textarea name="info" id="inquire-txt"></textarea>
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
          <input type="radio" name="agree" value="agree" checked>
          <label for="agree" class="agree">동의합니다</label>
          <input type="radio" name="agree" value="disagree">
          <label for="disagree" class="agree">동의하지 않습니다</label>
        </td>
      </tr>
    </table>
    <button>
      문의 등록
    </button> </FORM>
  </section>
 
  <!-- #include file = "footer.asp" -->
</body>
</html>