# MBUserEdits for YunoHost

[![Integration level](https://dash.yunohost.org/integration/mbuseredited.svg)](https://dash.yunohost.org/appci/app/mbuseredited)

A self-hosted MusicBrainz editor statistics dashboard. Scrapes your MusicBrainz profile on a configurable schedule, stores snapshots in PostgreSQL, and displays edit counts, entity stats, and trends over time.

## Features

- Tracks edits, votes, and added entities over time
- Configurable scrape schedule (cron expression)
- Trends explorer with time-range filtering
- Raw data view for debugging
- Dark mode

## Installation

```bash
sudo yunohost app install https://github.com/YoGo9/MBUserEdits_ynh
```

### Install questions

| Question | Description | Default |
|---|---|---|
| Domain | Domain or subdomain | — |
| Path | URL path (`/` for subdomain installs) | `/` |
| MusicBrainz username | The editor to track | — |
| Scrape schedule | Cron expression | `*/10 * * * *` |

## Upgrade

```bash
sudo yunohost app upgrade mbuseredited
```

## Links

- App source: https://github.com/YoGo9/MBUserEdits
- YunoHost package: https://github.com/YoGo9/MBUserEdits_ynh
