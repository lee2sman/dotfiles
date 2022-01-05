# Defined interactively
function food
echo -n (date) >> ~/.food
echo -n "," >> ~/.food
echo "$argv" >> ~/.food 
end
