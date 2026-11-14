echo "Starting devops project health check "
status=0
if [ -d "app" ]
then 
echo "App folder: Found"
else 
echo "App Floder :Missing"
status=1
fi


if [ -f "app/index.html" ]
then 
echo "App file : Found"
else
echo "App file : Misssing"
status=1
fi

if [ -d "docker" ]
then 
echo " docker file : found"
else
echo "docker file : missing"
status=1
fi

if [ "$status" -eq 0 ]
then 
echo " Project status : Reday"
else
echo "project status :need attition"
fi
