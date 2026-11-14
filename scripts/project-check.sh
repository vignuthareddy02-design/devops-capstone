status=0
check_app()	{
if [ -d "app" ]
then 
echo "app folder: found"
else
echo "app folder : missing"
status=1
fi
}
check_appfile(){
if [ -f  "app/index.html" ]
then
echo "app file : found"
else
echo "app file : missing"
status=1
fi
}
check_docker(){
if [ -d "docker" ]
then 
echo "docker folder : found"
else
echo "docker folder: missing"
status=1
fi
}
show_status(){
if [ "$status" -eq 0 ]
then
echo "Project status : is Ready"
exit 0
else
echo "project status : need attentation"
exit 1
fi
}
check_command(){
mkdir test-exit-folder
if [ $? -eq 0 ]
then
echo "Command executed successfully"
else
echo "command faild"
fi
}
check_app
check_appfile
check_docker
show_status
check_command
