function ddg! --description duckduckgo\ \'I\'m\ feeling\ lucky!\'\ search
  links2 "http://duckduckgo.com/?q=$argv+!" -dump | less
end
