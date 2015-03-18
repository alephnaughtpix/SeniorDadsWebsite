# s3N10r sZcR1pTzC!!!!!1!1!!
htmlWordMatch = /(<\/?\w+(?:(?:\s+\w+(?:\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>)/gim

monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

# Append "Last updated" and date to element
appendLastModeDate = (element, date) -> 
  d = new Date(date)
  pageDate = d.getDate() + " " + monthNames[d.getMonth()] + " " + d.getFullYear()
  element.append 'Last updated: ' + pageDate

# Last modified date for URL
getlastmod = (url, dateFunction, element) ->
  req = XMLHttpRequest()
  req.open("GET", url)
  req.addEventListener "load", ->
    dateFunction(element, req.getResponseHeader("Last-Modified"))
  , false
  req.send(null)
  null

# Random visitor counter
visitorCounter = () ->
  $('.counter').each ->
    element = $(this)
    counter = ""
    for i in [0..element.attr("rel")] by 1
      counter += Math.floor(Math.random()*8) + 1 + ""
    element.append(counter)
  null

# Header logo links
headers = () ->
  $('#homeMenu .menuItem .icon').each ->
    link = $(this).parent().find('.text a')[0];
    unless link is ""
      if (link.target?) and (link.target isnt "")
        $(this).click -> window.open(link.href, link.target)
      else
        $(this).click -> window.location = link.href
    else
      $(this).css('cursor', 'default')
  null

# Tokenise area and apply delegate styling function to it.
tokenify = (element, stylingFunction) ->
  $(element).each ->						    # Only execute on the area we want to affect
    output = "";
    tokens = $(this).html().split(htmlWordMatch);   # Split by whitespace into tags and content
    for token in tokens when token.trim() isnt ""   # For each non-blank tag/content...
      unless (token[0] is "<")                      # Make sure we're not inside an HTML tag!!
        words = token.split(/\s+/) 			            # Split by whitespace into words
        # Apply our delegate styling function to each word unless it's blank
        output += stylingFunction(word) for word in words when word isnt ""
      else
        # If we're in an HTML tag, just add it unaltered to the output.
        output += token
    # Finally, replace area with altered output.
    $(this).html(output)
  null

# Doddering Git's "l33TsP33k" styling
leetSpeak = () ->
  tokenify '.l33TsP33k', (word) ->
    # Apply style to first letter of word, and add trailing space
    "<span class=\"l33Tf1RsT\">" + word[0] + "</span>" + word.substring(1,word.length) + " "
  null

# Doddering Git's "l33TsP33k" styling- extra strength!!
leetSpeakExtra = () ->
  tokenify '.l33TsP33k3xTrA', (word) ->
    # Alternate style for each character
    output = ""
    apply = true
    for k in [0..word.length] by 1
      output +=
        if apply
          "<span class=\"l33Tf1RsT\">" + word[k] + "</span>"
        else word[k]
      apply = !apply
    output;
  null

# FAQ styling
FAQify = () ->
  tokenify '#SDFaq', (word) ->
    # Apply style only to "faq"
    word.replace(/(faq)/gi, "<span class='faq'>$1</span>")
  null

$(document).ready ->

  visitorCounter()
  headers()
  leetSpeak()
  leetSpeakExtra()
  FAQify()

  # Old school blinking!
  $('.blink').modernBlink()
  # Set last updated for page.
  appendLastModeDate($('.lastUpdated:empty'),document.lastModified)
  # Set last updated for URL.
  $('.urlLastUpdated').each -> getlastmod(element.attr("rel"), appendLastModeDate, $(this))

  # Header links
  $('.link').click -> window.location = $(this).attr('rel')

  # "Saggie" in demo pages
  $('#saggie .title').each ->
    $(this).attr('title','sAgG13!!!1!')
    $(this).click -> window.location = '/default.html'
    null

  # "More" links
  $('.more').each ->
    $(this).attr('title','[ m0R3!!!11!1 ]')
    $(this).click -> window.location = $(this).attr('rel')
    null
