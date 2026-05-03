# Sentry - Monitoring para Producción

## Instalación

```bash
npm install @sentry/node
```

## sentry.js

```javascript
const Sentry = require('@sentry/node');

Sentry.init({
  dsn: process.env.SENTRY_DSN,
  environment: process.env.NODE_ENV,
  tracesSampleRate: 1.0,
});

module.exports = Sentry;
```

## Uso en Express

```javascript
const Sentry = require('./sentry');
app.use(Sentry.Handlers.requestHandler());
app.use(Sentry.Handlers.errorHandler());
```

---

# Multi-Stack - Soporte Multiple Lenguajes

| Stack | Cuándo usarlo | Comandos |
|-------|--------------|----------|
| **Python/FastAPI** | APIs rápidas, ML, data | `uvicorn main:app` |
| **Python/Django** | Apps grandes, admin | `python manage.py runserver` |
| **Go** | Alta performance, microservices | `go run main.go` |
| **Rust** | Performance extrema | `cargo run` |
| **PHP/Laravel** | Proyectos tradicionales | `php artisan serve` |

## Preguntas de Stack

```markdown
¿Qué stack prefieres?
- JavaScript/TypeScript (Node, Next.js)
- Python (FastAPI, Django)
- Go
- Rust
- Otro (describe)
```