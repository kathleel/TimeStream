#Ingestion with batch records with common attributes in a single request with single thread and batch size greater than 100 
#recreate the database and table for the ingestion
region=$1
python manage.py
sleep 10

# Ingestion with batch records with common attributes in a single request with single thread and batch size greater than 100 
python ingest.py --database-name TestDB --table-name TestTbl --endpoint $region -c 1 -b 101 & 
MY_PID=$!
sleep 1
sudo kill -SIGINT $MY_PID
sleep 5



