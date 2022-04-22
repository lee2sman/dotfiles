function backitup
  if test $hostname = '3sman'
    echo backing up xps13 computer
    echo "this will take a few minutes..."
    sleep 2
    rsync -av /home/lee/ /media/lee/backup/xps13/
    echo ""
    echo "...complete"
  else if test $hostname = 'alienware'
     echo backing up alienware drive D: 
    echo "this will take a few minutes..."
    sleep 2
    rsync -av /mnt/d/ /mnt/e/alienware/
    echo ""
    echo "...complete"

  end

end
