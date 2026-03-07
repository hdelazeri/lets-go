# Let's Go

Applications built while following the [Go web development books](https://www.alexedwards.net/) by **Alex Edwards**.

| Application   | Book              | Description |
|---------------|-------------------|-------------|
| **snippetbox** | *Let's Go*        | Full-stack web app: server-rendered HTML, MySQL, sessions, authentication, CSRF protection |
| **greenlight** | *Let's Go Further* | REST API: JSON API for a “movie list” service, PostgreSQL, rate limiting, CORS, email (Mailpit) |

## Snippetbox (*Let's Go*)

A pastebin-style app for storing and viewing code snippets. Covers routing, handlers, SQL, HTML templating, middleware, form validation, session management, and security (CSRF, XSS, etc.).

- **Stack:** Go, MySQL, server-side templates
- **Run:** From `snippetbox/`, ensure MySQL is running and use the DSN for your DB, then:
  ```bash
  go run ./cmd/web
  ```
- **Default:** `http://localhost:4000`

## Greenlight (*Let's Go Further*)

A REST API for managing a movie catalog. Covers API design, JSON, PostgreSQL, migrations, rate limiting, CORS, background email, and deployment patterns.

- **Stack:** Go, PostgreSQL, optional Docker (Postgres + Mailpit)
- **Run:** From `greenlight/`:
  ```bash
  docker compose up -d   # Postgres + Mailpit
  go run ./cmd/api
  ```
- **Default:** API on the configured port (see `cmd/api` for flags); Mailpit at `http://localhost:8025` when using Docker.

## References

- [Let's Go](https://lets-go.alexedwards.net/) — Building web applications with Go  
- [Let's Go Further](https://lets-go-further.alexedwards.net/) — Building APIs with Go  
- [Alex Edwards](https://www.alexedwards.net/)
