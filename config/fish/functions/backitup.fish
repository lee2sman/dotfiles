function backitup
  if test $hostname = 'voidxps'
    echo backing up xps13 computer
    echo "this will take a few minutes..."
    sleep 2

    #which external usb backup is plugged in?
    #this is the one i store at purchase
    if test -d /run/media/void/easystore
    rsync -av /home/void/ /run/media/void/easystore/xps13/
    else #this is the one stored at home
    rsync -av /home/void/ /media/lee/backup/xps13/

    end

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
