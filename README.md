# 🤖 app-developer - Skill para OpenCode/Claude Code

## 📋 Descripción

Skill de desarrollo web fullstack con IA. Crea aplicaciones web completas con backend, frontend, deploy automático y auditoría SEO. Especializado en arquitecturas distribuidas con subagentes especializados.

---

## 🚀 Quick Start

```bash
# Install el skill
npx skills add https://github.com/vaskito85/skills --skill app-developer

# Usar el skill
Usa el skill app-developer para crear [tu proyecto]
```

---

## ⚡ Características Principales

### 1. Verificación Automática de Skills

Al iniciar, verifica que estén disponibles:

| Skill | Necesario | Para |
|-------|-----------|------|
| `ui-ux-pro-max` | ✅ OBLIGATORIO | Frontend profesional |
| `seo-audit` | ⚠️ RECOMENDADO | Auditoría SEO |
| `vercel-react-best-practices` | ⚠️ RECOMENDADO | Deploy a Vercel |
| `supabase-postgres-best-practices` | ⚠️ RECOMENDADO | Base de datos Supabase |

**Si no están instalados** → Ofrece instalarlos automáticamente.

### 2. Preguntas al Usuario (9 pasos)

1. ¿Qué tipo de app? (SPA, API, E-commerce, etc.)
2. ¿Qué diseño? (Minimal, Dark, Glassmorphism, etc.)
3. ¿Qué funcionalidades? (Auth, DB, Real-time, etc.)
4. ¿Qué stack? (Node, Python, Go, Rust, etc.)
5. ¿Dónde deploy? (Vercel, Railway, VPS, etc.)
6. ¿Usas Supabase?
7. ¿Credenciales guardadas?
8. ¿Deploy completo automático?
9. ¿Qué necesitas para deploy?

### 3. Flujo de Trabajo SECUENCIAL

```
1. BACKEND (app-developer) → Terminar completamente
         ↓
2. FRONTEND (ui-ux-pro-max) → Esperar backend
         ↓
3. SEO AUDIT (seo-audit) → Esperar frontend
         ↓
4. DEPLOY (vercel) → Esperar SEO
```

**IMPORTANTE:** NUNCA lanzar subagentes en paralelo.

### 4. Memoria Encriptada

Guarda credenciales de forma segura con AES-256:

```bash
# Guardar credenciales
app-developer store github --token ghp_xxx --user tuusuario
app-developer store vercel --token xxx --org org_xxx
app-developer store supabase --url https://xxx.supabase.co --anon-key xxx
```

### 5. Auto-Instalación de Skills

Si detecta que falta un skill, ofrece instalarlo:

```bash
npx skills add https://github.com/nextlevelbuilder/ui-ux-pro-max-skill --skill ui-ux-pro-max
npx skills add https://github.com/coreyhaines31/marketingskills --skill seo-audit
npx skills add https://github.com/vercel-labs/agent-skills --skill vercel-react-best-practices
npx skills add https://github.com/supabase/agent-skills --skill supabase-postgres-best-practices
```

---

## 📁 Estructura del Proyecto Generado

```
mi-proyecto/
├── src/
│   ├── controllers/    # Lógica de API
│   ├── models/         # Modelos de datos
│   ├── routes/         # Endpoints
│   ├── services/       # Servicios
│   └── utils/          # Utilidades
├── frontend/           # (Si aplica)
├── prisma/
│   └── schema.prisma   # Schema de DB
├── .github/
│   └── workflows/      # CI/CD
├── docker-compose.yml  # Contenedores
├── Dockerfile
├── README.md          # Documentación
└── .env.example        # Variables de entorno
```

---

## 🔧 Comandos del Skill

| Comando | Descripción |
|---------|-------------|
| `app-developer new [nombre]` | Crear nuevo proyecto |
| `app-developer store [tipo]` | Guardar credenciales |
| `app-developer verify` | Verificar instalación |
| `app-developer deploy` | Deploy automático |

---

## 🎯 Features Incluidos

- [x] Docker + docker-compose
- [x] CI/CD (GitHub Actions)
- [x] Git Hooks (Husky + lint-staged)
- [x] Security audit (npm audit)
- [x] README auto-generado
- [x] Sentry para monitoring
- [x] Multi-stack (Node, Python, Go, Rust)
- [x] Templates (SaaS, Ecommerce, Blog, API)

---

## 🌍 Repos de Skills Relacionados

| Skill | Repo |
|-------|------|
| ui-ux-pro-max | `nextlevelbuilder/ui-ux-pro-max-skill` |
| seo-audit | `coreyhaines31/marketingskills` |
| vercel-react | `vercel-labs/agent-skills` |
| supabase | `supabase/agent-skills` |

---

## 🔐 Credenciales para Deploy

### GitHub
- Token con acceso repo
- SSH key (opcional)

### Vercel
- Vercel Token
- Organization ID
- Project ID

### Supabase
- URL del proyecto
- ANON_KEY (público)
- SERVICE_ROLE_KEY (privado)

---

## ⚠️ Troubleshooting

### El agente no detecta los skills
→ Verificar que existen en:
- `.opencode/skills/`
- `.claude/skills/`
- `.agents/skills/`

### No lanza subagentes
→ Verificar que el skill está instalado:
```bash
npx skills list
```

### Credenciales no funcionan
→ Regenerar token en GitHub/Vercel/Supabase

---

## 📞 Cómo Usar Este README

Este documento está diseñado para que cualquier agente de IA pueda:

1. **Entender** qué hace el skill
2. **Continuar** un proyecto existente
3. **Configurar** el entorno
4. **Deployar** a producción

**Para continuar un proyecto:**
1. Leer este README
2. Verificar skills instalados
3. Revisar SPEC.md del proyecto
4. Continuar desde donde quedó

---

## 📄 Metadata

- **Autor:** vaskito85
- **Repo:** https://github.com/vaskito85/skills
- **Versión:** 3.0
- **Última actualización:** Mayo 2026

---

*Para más detalles, ver `SKILL.md`*