$ ->
  updatePage = (url)->
    $('#page').slideUp ->      
      $.ajax(
        type: "GET",
        url: url,
        success: (data)->
          $('#page').html($(data).find('section'))
          # history.pushState(null,"",url)
          $("#lifestream").lifestream(
            limit: 5,
            list:[
              service: "github",
              user: "awalkerca"
            ,
              service: "twitter",
              user: "awalkerca"
            ,
              service: "delicious",
              user: "awalkerca"
            ],
            feedloaded: ->
              $('ul.lifestream').slideDown('slow')
          )
          $('#page').slideDown()
      )
      
  $('header').ribbon()
  
  $('#main_menu a:not(.external)').click (e)->
    e.preventDefault()  
    updatePage(@href)
    $('#main_menu a').removeClass('current')
    $(@).addClass('current')
  # 
  #   
  # $(window).bind "popstate", ->
  #   updatePage(location.href)
  #   

