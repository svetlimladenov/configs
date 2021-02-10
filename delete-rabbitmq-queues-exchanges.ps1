$queusFile = "q.txt"
$exchangeFile = "exch.txt"


python.exe rabbitmqadmin -f tsv -q list queues name > $queusFile

foreach($line in [System.IO.File]::ReadLines(".\" + $queusFile))
{
    python.exe .\rabbitmqadmin -q delete queue name="$line"
    $line
}

python.exe rabbitmqadmin -f tsv -q list exchanges name > $exchangeFile

foreach($line in [System.IO.File]::ReadLines(".\" + $exchangeFile))
{
    python.exe .\rabbitmqadmin -q delete exchange name="$line"
    $line
}