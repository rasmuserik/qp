cd .test 
npm install meteorite
cd ..
nohup ./.test/node_modules/.bin/mrt & 
echo "HERE!"
phantomjs .test/testrunner.js
RETURNCODE=$?
killall node
killall mongod
exit $?
