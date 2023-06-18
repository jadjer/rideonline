# Ride Online install manual


Get sources
```bash
git clone git@github.com:jadjer/rideonline.git
```
```bash
cd rideonline
```

Install neo4j
```bash
chmod +x neo4j.sh
```
```bash
neo4j.sh
```

Create envirovment file
```bash
touch .env
```
```bash
echo "DATABASE_USER=username" >> .env
```
```bash
echo "DATABASE_PASS=password" >> .env
```

Launch services
Use docker:
```bash
docker-compose up -d
```

Use podman:
```bash
podman-compose --env-file .env up -d
```
