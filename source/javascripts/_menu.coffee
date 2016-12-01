$(document).ready ->
  menu = document.querySelector(".menu")
  menuItems = menu.querySelectorAll(".menu__link")

  setCurrent = (ev) ->
    ev.preventDefault()
    item = ev.target.parentNode
    if classie.has(item, "menu__item--current")
      return false
    classie.remove menu.querySelector(".menu__item--current"), "menu__item--current"
    classie.add item, "menu__item--current"

  [].slice.call(menuItems).forEach (el) ->
    el.addEventListener "click", setCurrent

    # $("#home").click ->
    #   classie.remove document.querySelector(".home"), "move-items"
    #   $(".tilt__back").css("background-size", "cover")
    #   setTimeout((->
    #     $(".tilt__front").show()
    #   ), 1000)
    # $("#portfolio").click ->
    #   $(".tilt__front").hide()
    #   $(".tilt__back").css("background-size", "contain")
    #   classie.add document.querySelector(".home"), "move-items"
