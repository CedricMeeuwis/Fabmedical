host="fabmedical-cme.documents.azure.com"
username="fabmedical-cme"
password="OAPKpBdRYjvZKm5QkY6uAOarxGgXK21scA8IYKlBThwft8AmYs0T7ZifYMchPOHOU4L2HxeiGcGOFkMGSnklag=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
