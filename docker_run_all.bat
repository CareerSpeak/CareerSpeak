for /D %%I in ("*") do docker compose -f %%~I\docker-compose.yml up -d --build
