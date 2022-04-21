function backitup
if test $hostname = '3sman'
  echo backing up xps13 computer
  echo "this will take a few minutes..."
  sleep 2
  rsync -av /home/lee/ /media/lee/backup/xps13/
  echo ""
  echo "...complete"
end

end
