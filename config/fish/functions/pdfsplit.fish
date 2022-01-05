function pdfsplit --description 'Save subsections of a pdf doc'
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dFirstPage=$argv[2] -dLastPage=$argv[3] -sOutputFile=$argv[4] $argv[1]
end
