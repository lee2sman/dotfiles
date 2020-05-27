function filecount --wraps=ls --description 'count number of files in directory'
ls -l | wc -l
end
