---
name: app-developer
description: |
  Desarrollador backend fullstack con arquitectura distribuida. Utiliza este skill cuando el usuario quiera crear, expandir, debuggear o optimizar una aplicación web (sitios, dashboards, SPAs, APIs, portales, e-commerce, SaaS). También para configurar Docker, CI/CD, deploy a Vercel/Supabase, o cuando mencione backend, APIs, autenticación, base de datos, o arquitectura de proyecto web. **Primero pregunta las preferencias del usuario** sobre tipo de app, diseño y stack.
---

# App Developer

Skill de desarrollo web con arquitectura distribuida - enfoca en backend y delega frontend a agentes especializados.

## Verificación de Skills (OBLIGATORIO)

**AL INICIAR CADA PROYECTO, VERIFICAR PRIMERO:**

| Skill | Status | Acción si NO está |
|-------|--------|-------------------|
| **ui-ux-pro-max** | OBLIGATORIO | ⚠️ DETENER - ofrecer instalación LOCAL |
| **seo-audit** | RECOMENDADO | ⚠️ Advertir sin auditoría SEO, ofrecer instalación |
| **vercel-react** | RECOMENDADO | ℹ️ Advertir sin optimizaciones Vercel |
| **supabase** | RECOMENDADO | ℹ️ Advertir sin optimizaciones Supabase |

**Cuando el usuario confirme "sí, instálalos", ejecutar:**
```bash
# Crear directorio y clonar (INSTALACIÓN LOCAL al proyecto)
mkdir -p .agents/skills
git clone https://github.com/nextlevelbuilder/ui-ux-pro-max-skill.git .agents/skills/ui-ux-pro-max
```

**Busca en**: `.opencode/skills/`, `.claude/skills/`, `.agents/skills/`, `~/.claude/skills/`

### Instalación de Skills (LOCAL - NO GLOBAL)

**CUANDO EL USUARIO CONFIRME INSTALAR**, usar instalación **LOCAL** en el proyecto:

```bash
# Crear directorio local si no existe
mkdir -p .agents/skills

# Clonar skill en el proyecto (LOCAL, no global)
git clone https://github.com/nextlevelbuilder/ui-ux-pro-max-skill.git .agents/skills/ui-ux-pro-max
git clone https://github.com/coreyhaines31/marketingskills.git .agents/skills/seo-audit

# Verificar instalación
ls .agents/skills/
```

**Importante**: 
- Los skills se instalan en `.agents/skills/[nombre]/` del proyecto actual
- NO usar `npx skills add` (eso instala global)
- Después de instalar, verificar que los skills estén disponibles

---

### Lista de Skills Instalables (LOCAL)

| Skill | Repo | Directorio local |
|-------|------|-----------------|
| ui-ux-pro-max | `nextlevelbuilder/ui-ux-pro-max-skill` | `.agents/skills/ui-ux-pro-max/` |
| seo-audit | `coreyhaines31/marketingskills` | `.agents/skills/seo-audit/` |
| vercel-react | `vercel-labs/agent-skills` | `.agents/skills/vercel-react-best-practices/` |
| supabase | `supabase/agent-skills` | `.agents/skills/supabase-postgres-best-practices/` |

---

## Flujo de Trabajo (SECUENCIAL - NUNCA EN PARALELO)

```
1. BACKEND (app-developer) → Completar
         ↓
2. FRONTEND (ui-ux-pro-max) → Esperar backend
         ↓
3. SEO AUDIT (seo-audit) → Esperar frontend
         ↓
4. DEPLOY (vercel) → Esperar SEO
```

---

## Paso 1: Consultas al Usuario (OBLIGATORIO)

Preguntar **antes de escribir código**:

1. ¿Qué tipo de app? (SPA, API, E-commerce, SaaS, Dashboard, etc.)
2. ¿Qué diseño? (Minimal, Dark, Glassmorphism, Colorido, etc.)
3. ¿Qué funcionalidades? (Auth, DB, Real-time, Pagos, etc.)
4. ¿Qué stack? (Node, Python, Go, etc.)
5. ¿Dónde deploy? (Vercel, Railway, VPS, etc.)
6. ¿Usas Supabase?
7. ¿Credenciales guardadas?
8. ¿Deploy completo automático?

---

## Paso 2: Análisis y Asignación

**SI el proyecto requiere frontend Y backend:**
- **Backend (este skill)**: Estructura, APIs, modelos, auth, configuración
- **Frontend (delegar)**: Usar `ui-ux-pro-max` si está disponible

**Para delegar frontend:**
```markdown
task(
    description="Frontend de [proyecto]",
    prompt="Eres experto en UI/UX. Crea el frontend completo...",
    subagent_type="general"
)
```

---

## Paso 3: Especificación Técnica

Antes de codificar, generar **SPEC.md** con:
- Descripción del proyecto
- Funcionalidades priorizadas (MoSCoW)
- Stack tecnológico
- Estructura de directorios
- Modelo de datos (si aplica)
- APIs y endpoints (si aplica)

---

## Paso 4: Implementación

### Backend (este skill)
- Estructura del proyecto
- Configuración (package.json, tsconfig)
- Modelos de base de datos
- Rutas y controladores API
- Middleware (auth, validación, logging)
- Servicios de lógica de negocio
- Tests unitarios
- Documentación API

### Referencias (ver archivos en `references/`)
- `templates.md` - Templates de proyecto
- `docker.md` - Config Docker
- `prisma-supabase.md` - Prisma + Supabase
- `vercel.md` - Deploy Vercel
- `github-actions.md` - CI/CD
- `githooks.md` - Git Hooks + Security
- `sentry-monitoring.md` - Sentry + Multi-stack

### Scripts (ver en `scripts/`)
- `docker-init.py` - Generar Docker config
- `init-project.py` - Generar estructura
- `init-ci.py` - Generar CI/CD

---

## Paso 5: Integración

Cuando backend y frontend estén listos:
1. Verificar que no haya conflictos de rutas
2. Ajustar CORS si es necesario
3. Probar endpoints desde frontend
4. Verificar que todo funcione junto

---

## Paso 6: Auditoría SEO (RECOMENDADO)

Si `seo-audit` está disponible:
```markdown
task(
    description="SEO Audit de [proyecto]",
    prompt="Eres experto en SEO. Ejecuta auditoría completa...",
    subagent_type="general"
)
```

---

## Paso 7: Deploy Automático

**DETECTAR**: Si el usuario indica Vercel + Supabase:

1. Verificar credenciales (GitHub, Vercel, Supabase)
2. Generar archivos de config:
   - `vercel.json` - Config Vercel
   - `.github/workflows/deploy.yml` - CI/CD
   - `prisma/schema.prisma` - Schema con Supabase
   - `.env.example` - Variables de entorno
3. Configurar environment variables en Vercel
4. Verificar que Prisma se conecte a Supabase

---

## Memoria Encriptada (AES-256)

**Campos soportados**:
- github_token, github_user
- vercel_token, vercel_org_id, vercel_project_id
- supabase_url, supabase_anon_key, supabase_service_key

**Comandos**:
```bash
# Guardar
app-developer store github --token ghp_xxx --user tuusuario
app-developer store vercel --token xxxx --org org_xxx

# Verificar antes de deploy
app-developer credentials list
```

---

## Auto-Verificación (OBLIGATORIO antes de entregar)

1. **Código**: Lint ✅ | TypeScript ✅ | Tests ✅ | Build ✅
2. **Seguridad**: No secrets hardcodeados, inputs sanitizados
3. **Integración**: Frontend comunica con backend, CORS configurado
4. **Limpiar**: Eliminar console.log de debug, código no usado

---

## Checklist de Entrega

- [x] Backend funciona
- [x] Frontend (si aplica) funciona
- [x] Integración probada
- [x] SEO audit realizado (si hay skill)
- [ ] Dockerfile generado (recomendado)
- [ ] docker-compose.yml generado (recomendado)
- [ ] CI/CD configurado (recomendado)
- [ ] README.md completo (recomendado)

---

## Reglas de Operación

1. **Siempre preguntar primero** - No codificar sin conocer preferencias
2. **Delegar frontend** - Usar `ui-ux-pro-max` si está disponible
3. **Mantener separación** - Este skill = backend; ui-ux-pro-max = frontend
4. **No romper integración** - Si modificas backend, asegurar frontend sigue funcionando
5. **Documentar split** - En SPEC.md indicar qué hace cada parte

---

## Comandos del Skill

```bash
/app-developer init          # Consultar preferencias
/app-developer new [nombre] --full-stack  # Nuevo proyecto
/app-developer verify-backend  # Verificar solo backend
/app-developer verify-integration  # Verificar integración
/app-developer security-check  # Audit de seguridad
/app-developer dockerize      # Generar Docker
```