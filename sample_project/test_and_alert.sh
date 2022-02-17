
# Run dbt test command
docker-compose exec dbt dbt test
status=$?

if [ $status -eq 0 ]
then
  osascript -e 'display notification "dbt test succeeded" with title "Success"'
else
  osascript -e 'display notification "dbt test failed" with title "Failure"'
fi
