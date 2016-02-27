# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $(document).ready ->
#   $("#new_credit").on("ajax:success", (e, data, status, xhr) ->
#     $("#new_credit").append xhr.responseText
#   ).on "ajax:error", (e, xhr, status, error) ->
#     $("#new_credit").append "<p>ERROR</p>"


# $(document).ready ->
#   $('#new_credit').on('ajax:success', (e, data, status, xhr) ->
#     # Close the modal window on success
#     $('.modal-close').trigger 'click'
#     return
#   ).on 'ajax:error', (e, xhr, status, error) ->
#     $('#new_credit').prepend '<p>ERROR</p>'

  # $.ajax(url: '/credits').done (html) ->
  #   $("#test").append html

  # $.ajax
  #   type: "GET"
  #   url: "credits"
  #   dataType: "json"
  #   success: (result) ->
  #     console.log "test"
  #     console.log result
		# 	$("#test").append "<div>BLA</div>"      

# $(document).ready ->

#   monthlyAmount = $('.monthly-balance')

#   $('')

#   $('.percentage').each ->
#     # console.log $(this)
#     console.log $(this).html()
#     # 50 1150
#     intPercent = parseInt($(this).html())
#     percentageAmount = (intPercent / 100) * monthlyAmount
#     # console.log percentageAmount
#     return