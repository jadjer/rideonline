# Ride Online install manual


Get sources
---

```bash
git clone git@github.com:jadjer/rideonline.git
```
```bash
cd rideonline
```

Rideonline's services deploy
---

```bash
cd rideonline
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
```bash
docker-compose up -d
```

Nginx's proxy services deploy
---

```bash
cd ../nginx-proxy
```

Launch services
```bash
docker-compose up -d
```

Connect to network
```bash
docker network connect rideonline_outside nginx-proxy
```
