echo "1. check project"
echo "2. Start application"
echo "3. exit"
echo "4. stop application"
read -p "Choose the option:" choice
case $choice in
1)
echo "checking the project......"
bash scripts/project-check.sh
;;
2) 
if pgrep -f "python3 -m http.server 8000" > /dev/null
then
echo "application is already running!"
else
echo "Starting application....."
python3 -m http.server 8000 --directory app > /tmp/devops-app.log 2>&1 &
echo "application started successfully"
fi
;;
3)
echo "Exiting....."
exit 0
;;
4)
echo "stopping application"
pkill -f "python3 -m http.server 8000"
echo "application stoped"
;;
*)
echo "invalid output...."
;;
esac
