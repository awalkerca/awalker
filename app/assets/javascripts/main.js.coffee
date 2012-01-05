$ ->
  updatePage = (url)->
    $('#page').slideUp ->      
      $.ajax(
        type: "GET",
        url: url,
        success: (data)->
          $('#page').html($(data).find('section'))
          $('#loading').spin
            lines: 12
            length: 20
            width: 6
            radius: 24
            trail: 60
            speed: 1
            shadow: true
            
          # history.pushState(null,"",url)
          $("#lifestream").lifestream
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
              $('loading').spin(false)
              $('#loading').hide()
          
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

