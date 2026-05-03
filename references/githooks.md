# Git Hooks - Pre-commit

## package.json - lint-staged

```json
{
  "lint-staged": {
    "*.{js,ts,jsx,tsx}": ["npm run lint", "npm run typecheck"],
    "*.{css,scss}": ["npm run lint:style"]
  }
}
```

## .husky/pre-commit

```bash
#!/usr/bin/env sh
. "$(dirname -- "$0")/_/husky.sh"
npx lint-staged
```

**Efecto**: Cada commit verifica lint + types antes de permitirlo.

---

## Comandos de Seguridad

```bash
# Auditar seguridad
npm audit

# Verificar outdated
npm outdated

# Actualizar safely
npm update

# Audit fix automático
npm audit fix
```

**Agregar al workflow de CI/CD:**
```yaml
- run: npm audit --audit-level=high
  # Falla si hay vulnerabilidades críticas
```