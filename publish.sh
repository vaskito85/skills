#!/bin/bash

# ==========================================
# Script para Publicar Skill en GitHub
# ==========================================

SKILL_NAME="app-developer"
GITHUB_USER="vaskito85"
GITHUB_REPO="skills"
DESCRIPTION="Desarrollador web fullstack con IA - Backend, frontend, Docker, CI/CD, deploy a Vercel/Supabase"

echo "=========================================="
echo "  Publicando Skill: $SKILL_NAME"
echo "=========================================="

# 1. Verificar que existe el SKILL.md
if [ ! -f "SKILL.md" ]; then
    echo "❌ Error: No se encontró SKILL.md"
    exit 1
fi

# 2. Verificar frontmatter
echo "✓ Verificando frontmatter..."

# Verificar name en frontmatter
if ! grep -q "^name: $SKILL_NAME" SKILL.md; then
    echo "❌ Error: El name en frontmatter debe ser '$SKILL_NAME'"
    exit 1
fi

# Verificar description
if ! grep -q "^description:" SKILL.md; then
    echo "❌ Error: Falta description en frontmatter"
    exit 1
fi

echo "✓ Frontmatter válido"

# 3. Crear directorio para el repo
echo ""
echo "=========================================="
echo "  Preparando archivos para GitHub..."
echo "=========================================="

# Aquí iría el código para crear el repo en GitHub
# Por ahora, mostrar las instrucciones

echo ""
echo "=========================================="
echo "  PASOS PARA PUBLICAR EN GITHUB"
echo "=========================================="
echo ""
echo "1. Crea un nuevo repositorio en GitHub:"
echo "   URL: https://github.com/new"
echo "   Nombre: $GITHUB_REPO"
echo "   Descripción: $DESCRIPTION"
echo "   Público: ✓"
echo ""
echo "2. En tu máquina local, ejecuta:"
echo ""
echo "   # Clonar el repo vacío"
echo "   git clone https://github.com/$GITHUB_USER/$GITHUB_REPO.git"
echo "   cd $GITHUB_REPO"
echo ""
echo "   # Copiar el skill"
echo "   mkdir -p skills/app-developer"
echo "   cp -r ../../../.agents/skills/app-developer/* skills/app-developer/"
echo ""
echo "   # Commit y push"
echo "   git add ."
echo '   git commit -m "feat: Add app-developer skill"'
echo "   git push origin main"
echo ""
echo "3. ¡Listo! El skill se podrá instalar con:"
echo ""
echo "   npx skills add https://github.com/$GITHUB_USER/$GITHUB_REPO --skill $SKILL_NAME"
echo ""
echo "=========================================="
echo "  INSTALACIÓN EN OTRO PROYECTO"
echo "=========================================="
echo ""
echo "Una vez publicado, en cualquier proyecto:"
echo ""
echo "# Opción 1: con npx skills"
echo "npx skills add https://github.com/$GITHUB_USER/$GITHUB_REPO --skill $SKILL_NAME"
echo ""
echo "# Opción 2: manual"
echo "mkdir -p .agents/skills"
echo "git clone https://github.com/$GITHUB_USER/$GITHUB_REPO.git .agents/temp"
echo "mv .agents/temp/skills/$SKILL_NAME .agents/skills/"
echo "rm -rf .agents/temp"
echo ""
echo "=========================================="

# Mostrar estructura de archivos que se subiría
echo ""
echo "Archivos a subir:"
echo "-----------------"
ls -la skills/ 2>/dev/null || echo "(Aún no se ha creado la estructura)"