# canary.io canaryd

[Canary.io](http://canary.io) `canaryd` in a box.

API endpoint is available on port 80 (nginx proxies requests).  UDP collector is
on port 5000.

## required `canaryd` environment config:

* `REDIS_URL` -- default db only. `redis://host:port`

## optional `canaryd` environment config:

* `RETENTION` -- how long to keep data in redis (default 60s)
* `LIBRATO_EMAIL`
* `LIBRATO_TOKEN`
* `LIBRATO_SOURCE`
