---
---

angular.module 'regexpApp', []
.controller 'RegexpController', ->
  @getValidity = ->
    try
      regexp = new RegExp @regexp, 'i'
    catch
      return "Syntax error"

    for nick in ['bottt', 'morfent', 'xfix']
      if regexp.test nick
        return "Fix your regexp"

    return "Works"
