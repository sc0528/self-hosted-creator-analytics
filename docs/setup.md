# Setup

This public demo is static.

## Option 1: Hosted Demo

Open:

```text
https://sc0528.github.io/viewloom/
```

## Option 2: Docker

Run the published static-demo image:

```bash
docker run --rm -p 8080:80 ghcr.io/sc0528/viewloom:latest
```

Then open:

```text
http://localhost:8080/
```

From a cloned repository, you can instead build or run it with Compose:

```bash
docker compose -f deploy/docker-compose.yml up -d
```

Stop it with:

```bash
docker compose -f deploy/docker-compose.yml down
```

This image contains synthetic data and the static dashboard only. It does not include YouTube API collection or OAuth setup.

## Option 3: Open Directly

Open:

```text
dashboard/index.html
```

## Option 4: Serve Locally

From the project root:

```powershell
python -m http.server 8080
```

Then open:

```text
http://localhost:8080/dashboard/
```

## Load Sample Data

The dashboard has embedded fake data, but you can also load:

```text
sample-data/performance-snapshots.csv
```

using the `Load metrics CSV` button.

## Configure

Copy:

```text
.env.example
```

to:

```text
.env
```

Only the paid/pro version would use `.env` for real API automation.
