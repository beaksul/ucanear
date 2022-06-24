$("document").ready(function(){
  
  // 사이드
  $(".hamburger-box").click(function(){
    $(".side").show()
  })

  $(".close").click(function(){
    $(".side").hide()
  })
  // 사이드


  // 헤더 배경
  $(window).scroll(function(){
    let sc = $(window).scrollTop();
    // console.log(sc)

    if(sc >= 850){
      $("header").addClass("on")
      $(".header-wrap").css("margin", "10px auto")
    }else{
      $("header").removeClass("on")
      $(".header-wrap").css("margin", "")
    }
  })
  // 헤더 배경

  // 큐앤에이
  $(".tab-menu ul li").eq(0).addClass("on")
  $(".tab-list").eq(0).show()


  $(".tab-menu ul li").click(function(){
    let tab = $(this).index()

    $(".tab-menu ul li").removeClass("on").eq(tab).addClass("on")
    $(".tab-list").hide().eq(tab).show()
  })

  // 큐앤에이 토글
  $(".tab-list ul li .q").click(function(){
    // $(this).next().slideToggle().siblings(".a").slideUp()

    $(".a").slideUp()
    if($(this).next().is(":visible")){
      $(this).next().slideUp()
    } else{
      $(this).next().slideDown()
    }

    let arrow = $(this).children("img")

    $(".tab-list ul li .q img").not(arrow).removeClass("rotate")
    arrow.toggleClass("rotate")

  })
})