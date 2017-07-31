window.onload = () ->
  document.getElementById("answer-input").focus()
  console.log document.getElementById("answer-input")
  document.getElementById("one").onclick = () -> alert "Handler for .click() called."
