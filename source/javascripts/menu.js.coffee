(->
  [].slice.call(document.querySelectorAll('.menu')).forEach (menu) ->
    menuItems = menu.querySelectorAll('.menu__link')

    setCurrent = (ev) ->
      ev.preventDefault()
      item = ev.target.parentNode
      # li
      # return if already current
      if classie.has(item, 'menu__item--current')
        return false
      # remove current
      classie.remove menu.querySelector('.menu__item--current'), 'menu__item--current'
      # set current
      classie.add item, 'menu__item--current'
      return

    [].slice.call(menuItems).forEach (el) ->
      el.addEventListener 'click', setCurrent
      return
    return
  [].slice.call(document.querySelectorAll('.link-copy')).forEach (link) ->
    link.setAttribute 'data-clipboard-text', location.protocol + '//' + location.host + location.pathname + '#' + link.parentNode.id
    new Clipboard(link)
    link.addEventListener 'click', ->
      classie.add link, 'link-copy--animate'
      setTimeout (->
        classie.remove link, 'link-copy--animate'
        return
      ), 300
      return
    return
  return
) window
