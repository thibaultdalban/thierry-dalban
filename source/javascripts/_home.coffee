# $(document).ready ->
#     theLogo = $(".tilt__back")
#     newImage = new Image()
#     newImage.src = "/images/homepage.jpg"
#     imgWidth = newImage.width
#     # distance over which zoom effect takes place
#     maxScrollDistance = 1800
#     # set to window height if larger
#     maxScrollDistance = Math.min(maxScrollDistance, $(window).height())
#     # width at maximum zoom out (i.e. when window has scrolled maxScrollDistance)
#     widthAtMax = 10
#     # calculate diff and how many pixels to zoom per pixel scrolled
#     widthDiff = imgWidth - widthAtMax
#     pixelsPerScroll = (widthDiff / maxScrollDistance)
#     $(window).scroll ->
#       # the currently scrolled-to position - max-out at maxScrollDistance
#       scrollTopPos = Math.min($(document).scrollTop(), maxScrollDistance)
#       # how many pixels to adjust by
#       scrollChangePx =  Math.floor(scrollTopPos * pixelsPerScroll)
#       # calculate the new width
#       zoomedWidth = imgWidth - scrollChangePx
#       # set the width
#       console.log(zoomedWidth)
#       $('.tilt__back').css('background-size', zoomedWidth)
#       if window.scrollY == 0
#         $('.tilt__front').show()
#       else
#         $('.tilt__front').hide()
#         $('.tilt__back').css('position', 'absolute')
#         $('.tilt__back').css('top', '150px')
#         # $('.tilt__back').css('left', '50%')
