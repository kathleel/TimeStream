#Ingestion Scenarios Five: Ingestion with records across measure names in a single request with multiple threads
#recreate the database and table for the ingestion
region=$1
python manage.py
sleep 10

#Ingestion Scenarios Five: Ingestion with records across measure names in a single request with multiple threads
python ingest.py --database-name TestDB --table-name TestTbl --endpoint $region -c 4 -b 100 -g False & 
MY_PID=$!
sleep 60
sudo kill -SIGINT $MY_PID
sleep 5



