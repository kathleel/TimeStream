#Ingestion with batch records with common attributes in a single request with multiple threads
#recreate the database and table for the ingestion
region=$1
python manage.py
sleep 10

# Ingestion with batch records in a single request with single thread 
python ingest.py --database-name TestDB --table-name TestTbl --endpoint $region -c 2 -b 100 & 
MY_PID=$!
sleep 30
sudo kill -SIGINT $MY_PID
sleep 5



