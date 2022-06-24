<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>사용후기 | U CAN EAR - 유 캔 이어</title>
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
  <link rel="stylesheet" href="css/review.css">
</head>
<body>
  <!-- #include file = "header.asp" -->
  <section>
    <h1>사용후기</h1>
    <table>
      <tr>
        <th style="width: 6%;">번호</th>
        <th style="width: 62%;">제목</th>
        <th style="width: 13%;">작성자</th>
        <th style="width: 13%;">작성일</th>
        <th style="width: 6%;">조회</th>
      </tr>
     <%
	
	''*************************************
	''* 접근권한체크
	''* strSplit 배열변수
	''* strFind 찾을값
	''*************************************
	IF GetSplitFindWord(CONST_B_ACCESS_LIST, BOARD_LEVEL_VALUE) = FALSE THEN
		Response.write ExecJavaAlert("현재 페이지의 접근권한이 없습니다.",0)
		Response.End()
	END IF
	
	''*************************************
	''* 권한에 따른쓰기 버튼감추기
	''*************************************
	HIDDEN_WRITE_S = ""
	HIDDEN_WRITE_E = ""
	IF GetSplitFindWord(CONST_B_ACCESS_WRITE, BOARD_LEVEL_VALUE) = FALSE THEN
		HIDDEN_WRITE_S = GetToolUseHidden(FALSE, 0)
		HIDDEN_WRITE_E = GetToolUseHidden(FALSE, 1)
	END IF
	
	
	gotopage		 = Request("gotopage")
	if gotopage = "" then gotopage = 1
	
	search_category	 = Request("search_category")
	searchstring	 = Request("searchstring")
	
	
	''*************************************
	''* 게시판 카테고리 0 전체
	''*************************************
	B_CATEGORY		 = Request("B_CATEGORY")
	IF B_CATEGORY = "" OR ISNULL(B_CATEGORY) THEN	B_CATEGORY = 0
		
	
	''*************************************
	''* 검색 루틴
	''*************************************
	if len(searchString) > 0 then isSearch = 1
		if isSearch = "1" Then
			
			if Instr(search_category,"B_NAME") > 0 then 
				name_qry = " B_NAME Like ''%" & searchstring & "%'' "
			end if
			
			if Instr(search_category,"B_SUBJECT") > 0 then 
				subject_qry = "  B_SUBJECT Like ''%" & searchstring & "%'' "
			end if
			
			if Instr(search_category,"B_CONTENT") > 0 then 
				content_qry =  "  B_CONTENT Like ''%" & searchstring & "%'' "
			end if
			
			if name_qry <> "" and subject_qry <> "" then 
			  qry_opt1 = "or"
			end if
			
			if subject_qry <> "" and  content_qry <> "" then 
			  qry_opt2 = "or"
			end if
			
			where_qry = " and  " & name_qry & qry_opt1 & subject_qry & qry_opt2 & content_qry	
		end if
		
		''*************************************
		''* 전체이면 모두 출력한다
		''*************************************
		if strcomp(B_CATEGORY,"0") = 0 then
			else
			where_qry = "and B_CATEGORY = "& B_CATEGORY &"" & where_qry
		end if
		
		''*************************************
		''* 게시물 수
		''*************************************
		SQL = " BOARD_LIST_COUNT "&B_CODE&",'"&where_qry&"' "
		set count_row = dbcon.Execute(SQL)
		recordcount = count_row(0)
		count_row.close : Set count_row = nothing
		pagecount = int((recordcount-1)/CONST_B_LIST_SIZE)+1
		
		
		''*************************************
		''* 게시물 쿼리
		''*************************************
		SQL = "BOARD_LIST " & CONST_B_LIST_SIZE & ","&B_CODE&","&GotoPage&", '"&where_qry&"' "
		Set list_row = Dbcon.Execute(SQL)
		
		''*************************************
		''* 공지사항 쿼리
		''*************************************
		SQL = "BOARD_NOTICE "&B_CODE&" "
		Set notice_row = Dbcon.Execute(SQL)
		
		
		''*************************************
		''* #카테고리 정보
		''*************************************
		Sql = "select CATEGORY_NO, CATEGORY_NAME from BOARD_CATEGORY where B_CODE = '" & B_CODE & "'  order by CATEGORY_NO asc "
		set category_value_row = DBCon.Execute(Sql)

%>
     
	<%
				Do Until list_row.eof
				''*********************************
				''* 가상글번호
				''*********************************
				loop_num = loop_num + 1
				view_num = int(recordCount)-(int(CONST_B_LIST_SIZE)*(int(GotoPage)-1)) - loop_num + 1

				''*********************************
				''* 데이타 인덱스
				''*********************************
				IDX = list_row("IDX")
				
				''*********************************
				''* 작성자
				''*********************************
				B_NAME = list_row("B_NAME")

				''*********************************
				''* 제목
				''*********************************
				B_SUBJECT = list_row("B_SUBJECT")
				B_SUBJECT = GetReplaceTag2Text(B_SUBJECT)
				B_SUBJECT = GetCutSubject(B_SUBJECT, CONST_B_SUBJECT_CUT)
				
				''*********************************
				''* 작성일
				''*********************************
				B_WRITEDAY = list_row("B_WRITEDAY")
				B_WRITEDAY = GetDateType(1, B_WRITEDAY)
				
				''*********************************
				''* 새글 아이콘표시
				''*********************************
				strNew = ""
				if GetNewBoardTime(24, list_row("B_WRITEDAY")) = True then
				  strNew = "<img src='../skin/"&CONST_B_SKIN&"/new.gif' border=0>"
				end if 

				''*********************************
				''* 조회수
				''*********************************
				B_READNUM = list_row("B_READNUM")
				
				''*********************************
				''* 답변글처리
				''*********************************
				B_LEVEL = list_row("B_LEVEL")
				wid = 0
				reimg = ""
				if B_LEVEL > 0 then
					For j = 0 to B_LEVEL
						wid = 5 * cint(B_LEVEL)
					Next 
					reimg = "<img src='../skin/"&CONST_B_SKIN&"/re.gif' border=0 align=absmiddle> "
				end if
				''*********************************
				''* 비밀글처리
				''*********************************
				security_str = ""
				if strcomp(list_row("B_SECURITY_U"),"Y") = 0 then
					security_str = " <img src='../skin/"&CONST_B_SKIN&"/security_icon.gif' border=0 align=absmiddle> "
				end if
				''* 카테고리
				''*********************************
				b_category = list_row("b_category")
				
				''* 카테고리이름
				''*********************************
				
				if b_category = "" then
			b_catename="[전체]"
			elseif b_category = 1 then
			b_catename="<span class=board_content_tit1>[사회적기업]</span>"
			elseif b_category = 2 then
			b_catename="<span class=board_content_tit2>[마을기업]</span>"
			elseif b_category = 3 then
			b_catename="<span class=board_content_tit3>[협동조합]</span>"
			elseif b_category = 5 then
			b_catename="<span class=board_content_tit5>[사회적경제]</span>"
			elseif b_category = 4 then
			b_catename="<span class=board_content_tit4>[지역과소셜비즈]</span>"
			end if
				''*********************************
				''* 댓글수
				''*********************************
				strB_COMMENT_COUNT = ""
				B_COMMENT_COUNT = list_row("B_COMMENT_COUNT")
				IF B_COMMENT_COUNT > 0 THEN
					strB_COMMENT_COUNT = "<FONT SIZE=1>["&B_COMMENT_COUNT&"]</FONT>"
				END IF
				
				''*********************************
				''* view 페이지 링크
				''*********************************
				view_link_s = "<a href=view.asp?B_CATEGORY="&B_CATEGORY&"&B_CODE="&B_CODE&"&IDX="&IDX&"&gotopage="&gotopage&"&search_category="&search_category&"&searchstring="&Server.UrlEncode(searchstring)&">"
				view_link_e = "</a>"

				%>     
     
     
     
     
      <tr>
        <td>1</td>
        <td class="title">
          <a href="review_v.asp">사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.사용후기입니다.</a>
        </td>
        <td>유캔이어</td>
        <td>2021.12.28</td>
        <td>1</td>
      </tr>
      
      <%
			list_row.Movenext
			Loop
			list_row.close : Set list_row = nothing
			%>                    
      
      
    </table>
    <div class="write">
      <div class="write-box">
        <a href="review_w.asp">글쓰기</a>
      </div>
    </div>
    <div class="page">
      <div class="page-wrap">
        
        <ul>
          <li>	<%
				  Set listNum = New CList
				  listNum.Initial "review.asp",10,gotopage,pagecount,search_category,searchString,"B_CODE="&B_CODE,"[prev 10]","[next 10]"
				  listNum.pagePrint 
				  Set listNum = nothing
				%>		</li>
        </ul>
        
      </div>
    </div>
  </section>
  <!-- #include file = "footer.asp" -->
</body>
</html>