Track your MusicBrainz editing activity over time. MBUserEdits scrapes your public MusicBrainz editor profile on a configurable schedule and stores snapshots in a local PostgreSQL database.

The dashboard shows:
- Edit counts (total, accepted, auto-edits, open, failed, voted down)
- Added entity breakdown by type (releases, artists, cover art, works, etc.)
- Vote statistics
- Trends explorer — chart any metric over 1h / 6h / 24h / 7d / 30d / all time
- Raw data view for debugging

Data stays entirely on your server — no external services involved beyond scraping the public MusicBrainz profile page.
