#Ingestion with single record in a single request with single thread
#recreate the database and table for the ingestion
region=$1
python manage.py
sleep 10

# Ingestion with single record in a single request with single thread 
python ingest.py --database-name TestDB --table-name TestTbl --endpoint $region -c 1 -b 1 & 
MY_PID=$!
sleep 30
sudo kill -SIGINT $MY_PID
sleep 5



