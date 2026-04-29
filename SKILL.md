---
name: app-developer
description: |
  Desarrollador independiente de aplicaciones web completo y potenciado. Utiliza este skill cuando el usuario quiera crear una aplicación web (sitios, dashboards, SPAs, APIs, portales, etc.) de forma autónoma. **Primero pregunta al usuario** sobre el tipo de app, diseño y preferencias. Si el proyecto requiere frontend Y backend, delegar el frontend a un agente paralelo usando ui-ux-pro-max. Este skill se enfoca principalmente en backend, APIs, lógica de negocio y estructura del proyecto.
---

# App Developer - Super Agente con Arquitectura Distribuida

> **⚠️ VERIFICACIÓN OBLIGATORIA**: Antes de iniciar CUALQUIER proyecto, DEBES verificar que los skills `ui-ux-pro-max` y `seo-audit` estén disponibles en el sistema.

## Verificación de Skills Requeridos

### Paso 0: Verificar Skills (OBLIGATORIO)

**AL INICIAR CUALQUIER PROYECTO, DEBES HACER ESTO PRIMERO:**

1. Buscar en los directorios de skills del proyecto:
   - `.opencode/skills/[nombre]/SKILL.md`
   - `.claude/skills/[nombre]/SKILL.md`
   - `.agents/skills/[nombre]/SKILL.md`

2. Buscar en directorios globales:
   - `~/.opencode/skills/[nombre]/SKILL.md`
   - `~/.claude/skills/[nombre]/SKILL.md`
   - `~/.config/opencode/skills/[nombre]/SKILL.md`

3. **SI NO ENCUENTRA UN SKILL**, aplicar estas reglas:

| Skill | Si NO está | Acción |
|-------|-----------|--------|
| **ui-ux-pro-max** | ❌ DETENER | Mostrar cómo instalarlo y pedir confirmación |
| **seo-audit** | ⚠️ ADVERTENCIA | Informar que no habrá auditoría SEO |
| **vercel-react** | ⚠️ ADVERTENCIA | Informar que no habrá optimizaciones de Vercel |
| **supabase-postgres** | ⚠️ ADVERTENCIA | Informar que no habrá optimizaciones de Supabase |

**Plantilla de verificación (copiar y usar):**

```markdown
## 🔍 Verificación de Skills

Buscando skills en el proyecto y globalmente...

### Resultado de búsqueda:
- ui-ux-pro-max: [ENCONTRADO / NO ENCONTRADO]
- seo-audit: [ENCONTRADO / NO ENCONTRADO]
- vercel-react-best-practices: [ENCONTRADO / NO ENCONTRADO]
- supabase-postgres-best-practices: [ENCONTRADO / NO ENCONTRADO]

### [SIGUIENTE SEGÚN RESULTADO]
```

### Verificación ui-ux-pro-max (OBLIGATORIO - BLOQUEANTE)

**PASOS A SEGUIR:**

1. **Primero**: Buscar en `.opencode/skills/ui-ux-pro-max/SKILL.md`
2. **Si no está**: Buscar en `.claude/skills/ui-ux-pro-max/SKILL.md`
3. **Si no está**: Buscar en `.agents/skills/ui-ux-pro-max/SKILL.md`
4. **Si no está**: Buscar en `~/.claude/skills/ui-ux-pro-max/SKILL.md`

**SI DESPUÉS DE BUSCAR EN LOS 4 DIRECTORIOS NO ESTÁ**: 

❌ **DETENER TODO** y mostrar este mensaje obligatorio:

```markdown
## 🛑 SKILL OBLIGATORIO NO ENCONTRADO: ui-ux-pro-max

Para continuar necesito que instalés este skill.

### 📥 Install con npx:
```bash
npx skills add https://github.com/nextlevelbuilder/ui-ux-pro-max-skill --skill ui-ux-pro-max
```

### 📥 Install manual:
```bash
# Opción 1: Copiar desde este repo de skills
git clone https://github.com/vaskito85/skills.git .temp-skills
cp -r .temp-skills/skills/ui-ux-pro-max ~/.claude/skills/

# Opción 2: Desde repo oficial
git clone https://github.com/nextlevelbuilder/ui-ux-pro-max-skill ~/.claude/skills/ui-ux-pro-max
```

### ⚠️ Mientras tanto:
- Puedo crear el BACKEND completo (APIs, DB, auth)
- **NO PUEDO CREAR FRONTEND** sin este skill

**¿Querés instalar ui-ux-pro-max ahora? (responde sí para continuar)**
```

**Solo continuar cuando el usuario confirme que tiene ui-ux-pro-max instalado.**

---

### Verificación seo-audit

**Si seo-audit está disponible**: ✅ Se ejecutará auditoría al final

**Si seo-audit NO está disponible**: ⚠️ **ADVERTENCIA** (no bloquea el desarrollo):

```markdown
## ⚠️ seo-audit no disponible

El skill **seo-audit** no está instalado. 
- El desarrollo continuará normalmente
- ⚠️ NO se ejecutará la auditoría SEO automática al final
- Para tener auditoría SEO, instala seo-audit antes de terminar

### Cómo instalar:
1. Asegúrate de que existe: `.agents/skills/seo-audit/`
2. Verifica que contiene `SKILL.md`
```

---

### Auto-Instalación de Skills Faltantes

Si al verificar los skills no están disponibles, OFRECER automáticamente instalarlos desde los repos oficiales:

#### Repositorios Oficiales de Skills

| Skill | Install Command (OFICIAL) |
|-------|--------------------------|
| **ui-ux-pro-max** | `npx skills add https://github.com/nextlevelbuilder/ui-ux-pro-max-skill --skill ui-ux-pro-max` |
| **seo-audit** | `npx skills add https://github.com/coreyhaines31/marketingskills --skill seo-audit` |
| **vercel-react-best-practices** | `npx skills add https://github.com/vercel-labs/agent-skills --skill vercel-react-best-practices` |
| **supabase-postgres-best-practices** | `npx skills add https://github.com/supabase/agent-skills --skill supabase-postgres-best-practices` |

#### Cómo Ofrecer la Instalación

Si un skill no está disponible, mostrar:

```markdown
## ⚠️ Skill No Encontrado

El skill **[nombre-skill]** no está instalado.

### Instalar automáticamente?

Tengo dos opciones:

**Opción 1: Install automático (recomendado)**
```bash
npx skills add [repositorio] --skill [skill-name]
```

**Opción 2: Clonar manualmente**
```bash
git clone [repo-url] ~/.claude/skills/[skill-name]/
# o para opencode:
git clone [repo-url] .opencode/skills/[skill-name]/
```

### Mientras tanto:
- Puedo continuar con lo que tengo instalado
- Te aviso cuando intentemos usar un skill que no está

**¿Querés que instale los skills automáticamente? (s/n)**
```

#### Instalación Automática desde el Skill

Si el usuario confirma "sí", ejecutar:

```bash
# Instalar todos los skills necesarios (uno por línea)
npx skills add https://github.com/nextlevelbuilder/ui-ux-pro-max-skill --skill ui-ux-pro-max
npx skills add https://github.com/coreyhaines31/marketingskills --skill seo-audit
npx skills add https://github.com/vercel-labs/agent-skills --skill vercel-react-best-practices
npx skills add https://github.com/supabase/agent-skills --skill supabase-postgres-best-practices
```

#### Skills ya Instalados en Este Repo

Si el usuario ya tiene skills en su proyecto, también puede copiar desde este repo:

```bash
# Copiar desde este repositorio de skills
git clone https://github.com/vaskito85/skills.git .temp-skills
cp -r .temp-skills/skills/* ~/.claude/skills/
rm -rf .temp-skills
```

---

### Verificación vercel-react-best-practices (RECOMENDADO)

**Si el proyecto va a deployarse en Vercel** y el skill está disponible:
- ✅ Se aplicarán las mejores prácticas de Vercel
- ✅ Optimización para Vercel (ISR, Edge functions, etc.)
- ✅ Configuración automática de vercel.json

**Si NO está disponible**: ⚠️ Advertencia
```markdown
## ℹ️ vercel-react-best-practices no disponible

Para deploy optimizado en Vercel, considera instalar este skill.
El desarrollo continuará sin él.
```

---

### Verificación supabase-postgres-best-practices (RECOMENDADO)

**Si usas Supabase + Prisma** y el skill está disponible:
- ✅ Se aplicarán mejores prácticas de Supabase
- ✅ Schema optimizado para Supabase
- ✅ Row Level Security (RLS) configurado
- ✅ Migraciones compatibles con Supabase

**Si NO está disponible**: ⚠️ Advertencia
```markdown
## ℹ️ supabase-postgres-best-practices no disponible

Para Supabase optimizado, considera instalar este skill.
El desarrollo continuará con Prisma estándar.
```

---

### Pregunta de confirmación al usuario

Si no puedes ejecutar la verificación automática, pregunta:

```markdown
¿Tienes instalados estos skills en tu sistema?
- **ui-ux-pro-max** → Para diseño frontend profesional (OBLIGATORIO)
- **seo-audit** → Para auditoría SEO automática (RECOMENDADO)

Responde:
- "Tengo ambos" → ✅ Full workflow
- "Tengo solo ui-ux-pro-max" → ✅ Sin auditoría SEO
- "Tengo solo seo-audit" → ⚠️ Solo backend, frontend básico
- "No tengo ninguno" → ❌ No puedo continuar
```

**Solo avanzar cuando ui-ux-pro-max esté confirmado.**

---

## Lanzamiento Automático de Subagentes

### Regla General: DETECTA → VERIFICA → LANZA

**ANTES de lanzar cualquier subagente, DEBES:**

1. **Detectar** qué tipo de tarea es (frontend, SEO, deploy, etc.)
2. **Verificar** que el skill necesario esté disponible
3. **Lanzar** el agente especializado solo si está disponible

### Matriz de Detección y Lanzamiento

| Tarea | Skill Necesario | Acción Si Está | Acción Si NO Está |
|-------|-----------------|----------------|-------------------|
| **Diseño UI/Frontend** | ui-ux-pro-max | ✅ Lanzar subagente | ⚠️ Advertir + crear frontend básico |
| **Auditoría SEO** | seo-audit | ✅ Lanzar auditoría | ⚠️ Advertir + hacer auditoría manual básica |
| **Deploy Vercel** | vercel-react-best-practices | ✅ Lanzar deploy optimizado | ⚠️ Advertir + hacer deploy estándar |
| **Config Supabase** | supabase-postgres-best-practices | ✅ Lanzar config optimizada | ⚠️ Advertir + hacer config estándar |

### ⚠️ IMPORTANTE: Verificar antes de lanzar

**Cada vez que intents lanzar un subagente, DECIRLE al usuario:**

```markdown
## 🚀 Detecté que necesitás [Frontend/SEO/Deploy]

Verificando si [skill-name] está disponible...
- [skill-name]: [DISPONIBLE / NO DISPONIBLE]

[Si disponible]: ✅ Lanzando subagente...
[Si NO disponible]: ⚠️ [Skill] no está instalado. 

Opciones:
1. Install ahora → `npx skills add [repo] --skill [skill]`
2. Continuar sin él → Crearé [frontend/auditoría/deploy] básico/a
```

**NO omitir esta verificación - es obligatorio告知 al usuario.**

### Cómo Lanzar Automáticamente

Cuando detectes una tarea que no es backend:

```markdown
# Auto-detección: [TAREA] detectada
# Especialidad del agente: BACKEND
# Acción: Lanzar subagente especializado

task(
    description="[Descripción de la tarea]",
    prompt="""Eres un experto en [ÁREA]. 
    
    Contexto del proyecto: [nombre-proyecto]
    Stack: [stack]
    Requisitos específicos: [detalles]
    
    Ejecuta la tarea y reporta resultados.""",
    subagent_type="general"
)
```

### Ejemplo de Flujo Automático

```
Usuario: "Crea un e-commerce completo"

→ Detector: "Esto requiere frontend + backend + DB + SEO + deploy"
→ app-developer (backend): Implementa API, modelos, auth
→ task (ui-ux-pro-max): Crea el frontend
→ task (supabase): Configura DB
→ task (seo-audit): Audita la página
→ task (vercel): Deploy automático

→ Resultado: Proyecto completo en producción
```

---

## Sistema de Memoria Segura (Encrypted)

### Información que puede almacenar

| Campo | Descripción | Encriptado |
|-------|------------|------------|
| **github_token** | Token de acceso GitHub | 🔐 AES-256 |
| **github_ssh_key** | Clave SSH para GitHub | 🔐 AES-256 |
| **github_user** | Usuario de GitHub | 🔐 AES-256 |
| **vercel_token** | Token de Vercel | 🔐 AES-256 |
| **vercel_org_id** | ID de organización Vercel | 🔐 AES-256 |
| **vercel_project_id** | ID del proyecto Vercel | 🔐 AES-256 |
| **supabase_url** | URL del proyecto Supabase | 🔐 AES-256 |
| **supabase_anon_key** | Key anónima de Supabase | 🔐 AES-256 |
| **supabase_service_key** | Service role key (admin) | 🔐 AES-256 |
| **prisma_schema** | Schema de Prisma configurado | 🔐 AES-256 |
| **db_connection_string** | Connection string de DB | 🔐 AES-256 |

### Cómo funciona la encriptación

**Algoritmo**: AES-256-GCM con clave derivada de master password

```javascript
// Pseudocódigo de encriptación
const masterPassword = process.env.MASTER_KEY || "default-key-change-me"
const key = deriveKey(masterPassword, salt)
const encrypted = encryptAES256GCM(data, key)
```

**Archivo de configuración encriptada**: `.env.encrypted` o `~/.app-developer/credentials.enc`

### Comandos de memoria

```bash
# Guardar credenciales (encriptadas)
app-developer store github --token ghp_xxxx --user tuusuario
app-developer store vercel --token xxxx --org org_xxx
app-developer store supabase --url https://xxx.supabase.co --anon-key xxx --service-key xxx

# Ver qué hay guardado (sin revelar valores sensibles)
app-developer credentials list

# Usar credenciales guardadas
app-developer deploy --use-stored-credentials

# Limpiar credenciales
app-developer credentials clear
```

### Seguridad - IMPORTANTE

⚠️ **NUNCA** almacenar credenciales en texto plano en archivos del proyecto.

**Correcto**:
- `.env` (en .gitignore) - variables de entorno
- `~/.app-developer/credentials.enc` - encriptado con clave maestra

**Incorrecto**:
- ❌ Credentials en texto en package.json
- ❌ Tokens en código fuente
- ❌ API keys en comentarios

### Verificar credenciales antes de deploy

Antes de hacer deploy a Vercel/Supabase:
1. Verificar que las credenciales están guardadas
2. Verificar que son válidas (no expiraron)
3. Confirmar con el usuario antes de usar
```

Solo si el usuario responde "sí, lo tengo" o confirma que avanza sin frontend profesional, puedes continuar.
```

---

## Flujo de Trabajo Inteligente

Habilita a Claude para desarrollar aplicaciones web de forma autónoma con distribución inteligente de trabajo:
- **Backend**: Este skill se encarga del backend, APIs, lógica de negocio, base de datos
- **Frontend**: Delega a agente paralelo con ui-ux-pro-max (si está disponible)
- **Consultas previas**: Pregunta al usuario sobre tipo de app, diseño, features, stack preferido

## Flujo de Trabajo Inteligente

### Paso 1: Consultas al Usuario (OBLIGATORIO)

Al inicio de CADA proyecto, DEBES preguntar:

```markdown
¡Excelente! Para crear la mejor aplicación para ti, necesito conocer algunos detalles:

1. **¿Qué tipo de aplicación necesitas?**
   - Webapp (SPA, dashboard, SaaS)
   - API REST/GraphQL
   - Sitio web estático
   - E-commerce
   - Red social / comunidad
   - Herramienta/producto específico (describe)

2. **¿Qué diseño/te estilo prefieres?**
   - Minimalista / Limpio
   - Moderno / Tech
   - Brutalista / Experimental
   - Glassmorphism / Neumorphism
   - Oscuro (dark mode)
   - Colorido / Vibrante

3. **¿Qué funcionalidades son prioridad?**
   - Autenticación (login, registro, OAuth)
   - Base de datos (SQL/NoSQL)
   - Real-time (websockets)
   - pagos
   - Notificaciones
   - Dashboard con gráficos
   - Panel de admin

4. **¿Prefieres algún stack tecnológico específico?**
   - Si tienes preferencia, indícamelo
   - Si no, yo te recomiendo según tu proyecto

5. **¿Dónde vas a hacer deploy?**
   - Vercel (recomendado para Next.js/Vercel)
   - Supabase (si usas su hosting de Edge Functions)
   - Railway / Render / Heroku
   - VPS propio (DigitalOcean, AWS, etc.)
   - No lo sé /暂无决定

6. **¿Vas a usar Supabase como base de datos?**
   - Sí, tengo proyecto de Supabase → Pedir URL y keys
   - No, usaré otra DB (PostgreSQL, MongoDB, etc.)
   - No necesito base de datos

7. **¿Tienes credenciales guardadas?**
   - Tengo token de GitHub
   - Tengo token de Vercel
   - Tengo credenciales de Supabase
   - No tengo ninguna / Primera vez

8. **¿Quieres que haga el deploy completo?**
   - Sí, completamente → Deploy automático a producción
   - Solo el código → Sin deploy, solo generar archivos
   - No lo sé → Explicar opciones

9. **Si deploy completo, qué necesitas?**
   - Solo GitHub → Subir código, vos deploy manual
   - GitHub + Vercel → Deploy automático a Vercel
   - GitHub + Vercel + Supabase → Full stack deploy completo
   - Otro → Explicar
```

### Paso 2: Análisis y Asignación de Trabajo

**SI el proyecto requiere frontend Y backend:**

1. **Backend (este skill)**: Estructura, APIs, modelos, autenticación, configuración
2. **Frontend (agente paralelo con ui-ux-pro-max)**: UI, componentes, páginas, estilos

**Para lanzar agente paralelo de frontend:**
```
Usar el tool `task` con subagent_type="general" y prompt detallado para ui-ux-pro-max
```

### Paso 3: Especificación Técnica

Antes de escribir código, genera un SPEC.md que incluya:
- Descripción del proyecto y objetivos
- Funcionalidades priorizadas (MoSCoW: Must/Should/Could/Won't)
- Stack tecnológico seleccionado con justificación breve
- Estructura de directorios propuesta
- Modelo de datos (si aplica)
- APIs y endpoints (si aplica)
- Componentes de UI principales (solo para backend si hay agente paralelo)
- Criterios de aceptación para cada feature

### Paso 4: Implementación por Áreas

#### Backend (este skill)
- Estructura del proyecto
- Configuración (package.json, tsconfig, etc.)
- Modelos/Entidades de base de datos
- Rutas y controladores API
- Middleware (auth, validación, logging)
- Servicios de lógica de negocio
- Tests unitarios de backend
- Documentación API (README, Swagger)

#### Frontend (delegar a ui-ux-pro-max)
Para delegar el frontend, lanzar un task paralelo:

```markdown
<!-- Lanzar agente para frontend automáticamente -->
Para crear el frontend, usar el tool task:

task(
    description="Frontend de [nombre-proyecto]",
    prompt=f"""
    Eres un experto en UI/UX. Crea el frontend completo para {nombre_proyecto}.
    
    Requisitos:
    - Stack: {frontend_stack}
    - Estilo: {estilo_solicitado}
    - Componentes: {lista_componentes}
    - El backend está en: {ruta_backend}
    
    IMPORTANTE: Usa la skill ui-ux-pro-max para diseño profesional.
    Mantén comunicación con el backend existente.
    """,
    subagent_type="general"
)
```

### Paso 5: Integración Final

Cuando ambos (backend y frontend) estén listos:
1. Verificar que no haya conflictos de rutas
2. Ajustar CORS si es necesario
3. Probar endpoints desde frontend
4. Verificar que todo funcione junto

### Paso 6: Auditoría SEO Automática (RECOMENDADO)

**Si seo-audit está disponible**, ejecutar auditoría post-desarrollo usando el tool `task`:

```
task(
    description="SEO Audit de [nombre-proyecto]",
    prompt="Eres un experto en SEO. Ejecuta auditoría completa del proyecto en [ruta]:
    - Revisar index.html o página principal
    - Verificar meta tags (title, description, OG tags)
    - Comprobar estructura HTML semántica
    - Verificar responsive design
    - Revisar performance
    - Verificar Schema Markup si aplica
    
    Generar reporte detallado con hallazgos y recomendaciones priorizadas.",
    subagent_type="general"
)
```

**Después de la auditoría:**
- Incluir resultados en el reporte final
- Indicar claramente qué mejorías se recomiendan

---

### Paso 7: Deploy Automático a Vercel + Supabase

**DETECCIÓN AUTOMÁTICA**: Si el usuario indica que usará Vercel + Supabase, seguir este flujo:

#### 7.1 Verificar credenciales necesarias

Al detectar "Vercel" + "Supabase", automáticamente preguntar:

```markdown
## 🚀 Deploy a Vercel + Supabase detectado

Para hacer el deploy completo, necesito:

### GitHub
- [ ] Token de GitHub (con acceso repo)
- [ ] Repo creado y configurado

### Vercel
- [ ] Token de Vercel
- [ ] ID de Organización Vercel
- [ ] ID del Proyecto Vercel (o crear nuevo)

### Supabase
- [ ] URL del proyecto Supabase
- [ ] ANON_KEY (público)
- [ ] SERVICE_ROLE_KEY (privado - para migraciones)

### Base de datos
- [ ] Schema de Prisma generado
- [ ] Migraciones aplicadas a Supabase
```

#### 7.2 Generar configuración automáticamente

**Archivos a generar:**

| Archivo | Contenido |
|---------|------------|
| `vercel.json` | Config Vercel |
| `.github/workflows/deploy.yml` | CI/CD para deploy |
| `prisma/schema.prisma` | Schema con Supabase |
| `.env.example` | Variables de entorno (sin valores sensibles) |
| `supabase/migrate.sql` | Funciones SQL para Supabase |

#### 7.3 Lanzar agente para deploy (si está disponible)

Si el usuario tiene `vercel-react-best-practices`:

```
task(
    description="Deploy a Vercel + Supabase",
    prompt="Eres experto en Vercel y Supabase. Configurar deploy automático:
    
    1. Generar vercel.json optimizado
    2. Generar GitHub Actions para CI/CD
    3. Configurar environment variables en Vercel
    4. Verificar que Prisma se conecte a Supabase
    5. Probar que el deploy funciona
    
    Proyecto: [nombre]
    Repo: [url-github]
    Vercel: [project-id]
    Supabase: [url]",
    subagent_type="general"
)
```

#### 7.4 Checklist final de deploy

Antes de reportar "deploy completado", verificar:

- [ ] Repo clonado en GitHub
- [ ] Vercel connected al repo
- [ ] Variables de entorno configuradas en Vercel
- [ ] Deploy automático funciona (push triggers deploy)
- [ ] Base de datos Supabase accesible
- [ ] Prisma migrate ejecutado en producción
- [ ] Página en producción y funcionando
- Ofrecer aplicar las mejoras si el usuario lo desea

---

## Auto-Verificación Obligatoria

**Antes de entregar CUALQUIER trabajo:**

1. **Verificar código**:
   - Lint pasa sin errores
   - TypeScript compila sin errores
   - Tests pasan
   - Build exitoso

2. **Verificar seguridad**:
   - No hay secrets hardcodeados
   - Inputs sanitizados
   - Auth implementado correctamente

3. **Verificar integración**:
   - Si hay frontend, verificar que se comunique con backend
   - No hay conflictos de puertos/rutas
   - CORS configurado

4. **Limpiar debug code**:
   - Eliminar console.log de debug
   - Eliminar código no usado

## Reglas de Operación

1. **Siempre preguntar primero**: No empieces a codificar sin conocer las preferencias del usuario

2. **Delegar frontend inteligente**: Si hay ui-ux-pro-max disponible, úsalo para frontend; si no, advertencia al usuario

3. **Mantener separación de responsabilidades**: Este skill = backend; ui-ux-pro-max = frontend

4. **Documentar la split**: En SPEC.md indicar claramente qué hace backend y qué hace frontend

5. **No romper integración**: Si modificas backend, asegurar que frontend siga funcionando

6. **Verificar comunicación**: Asegurar que frontend pueda llamar a las APIs del backend

## Stack Recomendados

### Backend (este skill)
- **APIs REST**: FastAPI (Python), NestJS (Node), Express
- **Full-stack**: Next.js (API routes), Django, Laravel
- **Microservicios**: FastAPI, Express + Docker

### Frontend (delegar a ui-ux-pro-max)
- **Framework**: React, Vue, Svelte, Next.js
- **UI**: Tailwind, componentes, animaciones
- **Estado**: Context, Redux, Zustand

## Comandos del Skill

```bash
# Consultar preferencias del usuario
/app-developer init

# Iniciar proyecto con arquitectura split
/app-developer new [nombre] --full-stack

# Verificar solo backend
/app-developer verify-backend

# Verificar integración frontend-backend
/app-developer verify-integration
```

## Formato de Salida

```markdown
## ✅ Desarrollo Completado

### Arquitectura del Proyecto
| Componente | Skill | Estado |
|------------|-------|--------|
| Backend | app-developer | ✅ Completado |
| Frontend | ui-ux-pro-max | ✅ Completado |
| Integración | app-developer | ✅ Verificada |

### Backend
- Stack: [detalles]
- APIs: [lista de endpoints]
- Base de datos: [si aplica]

### Frontend
- Stack: [detalles]
- Páginas: [lista]
- Componentes: [lista]

### Integración
- [x] CORS configurado
- [x] Endpoints accesibles desde frontend
- [x] No hay conflictos de rutas

### Validación
- [x] Backend: Lint ✅ | Tests ✅ | Build ✅
- [x] Frontend: Diseño ✅ | Responsive ✅
- [x] Integración: Comunicación ✅

### Auditoría SEO (seo-audit)
| Área | Estado | Score |
|------|--------|-------|
| Meta tags | ✅/⚠️ | [X]/100 |
| Semántica HTML | ✅/⚠️ | [X]/100 |
| Responsive | ✅/⚠️ | [X]/100 |
| Performance | ✅/⚠️ | [X]/100 |
| Overall | ✅/⚠️ | [X]/100 |

**Hallazgos SEO:**
- [Hallazgo 1]: [Estado]
- [Hallazgo 2]: [Estado]

**Recomendaciones:**
1. [Recomendación 1 prioritaria]
2. [Recomendación 2]
3. [Recomendación 3]

*¿Deseas que aplique estas mejoras?*
```

---

## Supabase + Prisma - Configuración Automática

### Paso 1: Detectar uso de Supabase

Si el usuario indica que usará Supabase:
- ✅ Usar provider `postgresql` en Prisma
- ✅ Configurar connection string de Supabase
- ✅ Habilitar Row Level Security (RLS) por defecto

### Paso 2: Generar schema de Prisma

**`prisma/schema.prisma` para Supabase:**

```prisma
generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

// Modelo ejemplo
model User {
  id        String   @id @default(cuid())
  email     String   @unique
  name      String?
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt

  // RLS - Row Level Security
  @@allow("all", auth().id == id)
}
```

### Paso 3: Configuración de conexión

**`.env` para Supabase:**
```env
DATABASE_URL="postgresql://postgres:[PASSWORD]@db.[PROJECT].supabase.co:5432/postgres"
SUPABASE_URL="https://[PROJECT].supabase.co"
SUPABASE_ANON_KEY="[ANON_KEY]"
SUPABASE_SERVICE_ROLE_KEY="[SERVICE_KEY]"
```

### Paso 4: Migraciones para Supabase

```bash
# Crear migración
npx prisma migrate dev --name init

# Aplicar a producción (Supabase)
npx prisma migrate deploy
```

### Paso 5: Row Level Security (RLS)

**Habilitar RLS en todas las tablas:**
```sql
-- Enable RLS
ALTER TABLE users ENABLE ROW LEVEL SECURITY;

-- Policy: usuarios pueden ver solo sus propios datos
CREATE POLICY "Users can view own data" ON users
  FOR SELECT USING (auth.uid() = id);
```

### Configuración automática de Supabase

Al inicial un proyecto con Supabase, generar:

| Archivo | Descripción |
|---------|-------------|
| `prisma/schema.prisma` | Modelos con RLS |
| `.env.example` | Variables de entorno (sin valores sensibles) |
| `supabase/config.sql` | Funciones y triggers |
| `migrations/` | Migraciones listas |

---

## Vercel - Deploy Automático

### Configuración para Vercel

**`vercel.json` (generar automáticamente):**
```json
{
  "framework": "nextjs",
  "buildCommand": "npm run build",
  "outputDirectory": ".next",
  "installCommand": "npm install",
  "devCommand": "npm run dev"
}
```

### Deploy con GitHub Actions

```yaml
deploy:
  runs-on: ubuntu-latest
  if: github.ref == 'refs/heads/main'
  steps:
    - uses: amondnet/vercel-action@v25
      with:
        vercel-token: ${{ secrets.VERCEL_TOKEN }}
        vercel-org-id: ${{ secrets.VERCEL_ORG_ID }}
        vercel-project-id: ${{ secrets.VERCEL_PROJECT_ID }}
        vercel-args: '--prod'
```

### Variables de entorno para Vercel

En Vercel Dashboard → Settings → Environment Variables:
```
DATABASE_URL=postgresql://...
NEXT_PUBLIC_SUPABASE_URL=https://...
NEXT_PUBLIC_SUPABASE_ANON_KEY=...
```

---

## Mejoras Adicionales (Ops)

### 1. Docker - Contenedores para Producción

**Generar automáticamente:**
- `Dockerfile` para la aplicación
- `docker-compose.yml` para servicios (app + db + redis)
- `.dockerignore` para excluir node_modules, etc.

**Dockerfile ejemplo para Node.js:**
```dockerfile
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --production
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

**docker-compose.yml:**
```yaml
version: '3.8'
services:
  app:
    build: .
    ports:
      - "3000:3000"
    environment:
      - NODE_ENV=production
      - DB_HOST=db
    depends_on:
      - db
  db:
    image: postgres:15-alpine
    environment:
      - POSTGRES_DB=app
      - POSTGRES_PASSWORD=secret
    volumes:
      - pgdata:/var/lib/postgresql/data
volumes:
  pgdata:
```

**Comandos útiles:**
```bash
# Construir y levantar
docker-compose up --build

# Levantar en background
docker-compose up -d

# Ver logs
docker-compose logs -f

# Detener
docker-compose down
```

---

### 2. CI/CD - GitHub Actions

**Generar `.github/workflows/ci.yml`:**

```yaml
name: CI/CD

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: '20'
          cache: 'npm'
      - run: npm ci
      - run: npm run lint
      - run: npm run typecheck
      - run: npm test -- --coverage

  build:
    needs: test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: '20'
      - run: npm ci
      - run: npm run build

  deploy:
    needs: build
    if: github.ref == 'refs/heads/main'
    runs-on: ubuntu-latest
    steps:
      - run: echo "Deploying to production..."
```

**Flujo automático:**
```
Push → Test → Build → Deploy (solo en main)
```

---

### 3. Git Hooks - Pre-commit

**Generar configuración con Husky + lint-staged:**

```json
// package.json
{
  "lint-staged": {
    "*.{js,ts,jsx,tsx}": ["npm run lint", "npm run typecheck"],
    "*.{css,scss}": ["npm run lint:style"]
  }
}
```

**`.husky/pre-commit`:**
```bash
#!/usr/bin/env sh
. "$(dirname -- "$0")/_/husky.sh"
npx lint-staged
```

**Efecto**: Cada commit verifica lint + types antes de permitirlo.

---

### 4. Seguridad - Actualización de Dependencias

**Verificar vulnerabilidades:**

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

---

### 5. Documentación Automática

**Generar `README.md` completo:**

```markdown
# Nombre del Proyecto

## Descripción
[Descripción breve]

## 🚀 Quick Start
```bash
npm install
npm run dev
```

## 📋 Requisitos
- Node.js 18+
- npm 9+

## 🛠️ Stack
- Backend: [Stack]
- Frontend: [Stack]
- DB: [Base de datos]

## 📁 Estructura
```
src/
├── controllers/
├── models/
├── routes/
├── services/
└── utils/
```

## 🔧 Scripts
| Script | Descripción |
|--------|-------------|
| npm run dev | Desarrollo |
| npm run build | Producción |
| npm test | Tests |

## 📝 API Endpoints
| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | /api/users | Listar usuarios |
| POST | /api/users | Crear usuario |

## 📄 Licencia
MIT
```

**Agregar JSDoc a funciones:**
```javascript
/**
 * Crea un nuevo usuario
 * @param {Object} userData - Datos del usuario
 * @param {string} userData.name - Nombre del usuario
 * @param {string} userData.email - Email del usuario
 * @returns {Promise<User>} Usuario creado
 */
async function createUser(userData) { ... }
```

---

### 6. Monitoring - Sentry

**Configurar Sentry para producción:**

```bash
npm install @sentry/node
```

**`sentry.js`:**
```javascript
const Sentry = require('@sentry/node');

Sentry.init({
  dsn: process.env.SENTRY_DSN,
  environment: process.env.NODE_ENV,
  tracesSampleRate: 1.0,
});

module.exports = Sentry;
```

**Usar en Express:**
```javascript
const Sentry = require('./sentry');
app.use(Sentry.Handlers.requestHandler());
app.use(Sentry.Handlers.errorHandler());
```

---

### 7. Multi-Stack - Soporte Multiple Lenguajes

**Stacks adicionales soportados:**

| Stack | Cuándo usarlo | Comandos |
|-------|--------------|----------|
| **Python/FastAPI** | APIs rápidas, ML, data | `uvicorn main:app` |
| **Python/Django** | Apps grandes, admin | `python manage.py runserver` |
| **Go** | Alta performance, microservices | `go run main.go` |
| **Rust** | Performance extrema | `cargo run` |
| **PHP/Laravel** | Proyectos tradicionales | `php artisan serve` |

**Al preguntar stack, ofrecer opciones:**
```markdown
¿Qué stack prefieres?
- JavaScript/TypeScript (Node, Next.js)
- Python (FastAPI, Django)
- Go
- Rust
- Otro (describe)
```

---

### 8. Templates - Proyectos Pre-configurados

**Templates disponibles:**

| Template | Para qué | Incluye |
|----------|---------|---------|
| **SaaS Starter** | Producto SaaS | Auth, DB, Stripe, Dashboard |
| **E-commerce** | Tienda online | Carrito, Products, Checkout |
| **Blog/CMS** | Blog o contenido | Posts, Categories, Admin |
| **API REST** | Solo backend | Auth, CRUD, Docs |
| **Real-time** | Chat, notificaciones | WebSockets, Redis |

**Usage:**
```bash
/app-developer new mi-app --template saas
/app-developer new mi-tienda --template ecommerce
```

---

## Comandos del Skill Actualizados

```bash
# Iniciar proyecto completo (con todas las mejoras)
app-developer new [nombre] --full-stack

# Iniciar con template específico
app-developer new [nombre] --template [saas|ecommerce|blog|api]

# Iniciar con stack específico
app-developer new [nombre] --stack [node|fastapi|go|rust]

# Verificar solo backend
app-developer verify-backend

# Verificar integración
app-developer verify-integration

# Verificar seguridad (audit, vulnerabilities)
app-developer security-check

# Generar documentación
app-developer docs

# Generar Docker
app-developer dockerize
```

---

## Checklist de Entrega (Completo)

Antes de reportar completado, verificar:

- [x] Backend funciona
- [x] Frontend (si aplica) funciona
- [x] Integración probada
- [x] SEO audit realizado
- [ ] **Dockerfile generado**
- [ ] **docker-compose.yml generado**
- [ ] **CI/CD configurado (GitHub Actions)**
- [ ] **Git Hooks configurados**
- [ ] **Audit de seguridad pasado**
- [ ] **README.md completo**
- [ ] **Sentry configurado (si es producción)**

*Las ops (Docker, CI/CD, etc.) son opcionales pero recomendadas.*

---

**Recordatorio**: 
- Este skill se enfoca en backend por defecto
- Frontend → agente paralelo con ui-ux-pro-max
- Siempre preguntar primero las preferencias del usuario
- Verificar integración antes de reportar completado