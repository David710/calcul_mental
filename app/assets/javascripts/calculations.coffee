window.onload = () ->
  #document.getElementById("answer-input").focus()

  document.getElementById("one").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "1"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("two").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "2"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("three").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "3"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("four").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "4"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("five").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "5"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("six").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "6"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("seven").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "7"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("height").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "8"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("nine").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "9"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("zero").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value + "0"
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("delete").onclick = () ->
    value = document.getElementById("answer-input").value
    value = value.slice(0, -1)
    document.getElementById("answer-input").value = value
    #document.getElementById("answer-input").focus()

  document.getElementById("enter").onclick = () ->
    #document.getElementById("answer-input").focus()
    $("form").submit()
