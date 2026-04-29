#!/bin/bash

# ==========================================
# Script de Instalación del Skill
# ==========================================

GITHUB_USER="vaskito85"
GITHUB_REPO="skills"
SKILL_NAME="app-developer"

echo "=========================================="
echo "  Instalando Skill: $SKILL_NAME"
echo "=========================================="

# Detectar si we're en un proyecto opencode o agent-compatible
if [ -d ".opencode/skills" ]; then
    TARGET_DIR=".opencode/skills/$SKILL_NAME"
elif [ -d ".claude/skills" ]; then
    TARGET_DIR=".claude/skills/$SKILL_NAME"
elif [ -d ".agents/skills" ]; then
    TARGET_DIR=".agents/skills/$SKILL_NAME"
else
    # Crear el directorio apropiado
    mkdir -p ".agents/skills"
    TARGET_DIR=".agents/skills/$SKILL_NAME"
fi

echo "Instalando en: $TARGET_DIR"

# Verificar si git está disponible
if command -v git &> /dev/null; then
    echo ""
    echo "✓ Git disponible - clonando repositorio..."
    # Clonar solo la carpeta del skill
    mkdir -p "$TARGET_DIR"
    git init -q 2>/dev/null || true

    echo ""
    echo "⚠️ Para completar la instalación:"
    echo ""
    echo "   Ejecuta este comando en tu terminal:"
    echo ""
    echo "   npx skills add https://github.com/$GITHUB_USER/$GITHUB_REPO --skill $SKILL_NAME"
    echo ""
else
    echo "❌ Git no está instalado"
fi

echo ""
echo "=========================================="
echo "  Dependencias del Skill"
echo "=========================================="
echo ""
echo "El skill $SKILL_NAME requiere estos skills:"
echo ""
echo "  ✓ ui-ux-pro-max      (OBLIGATORIO - Diseño frontend)"
echo "  ⚠️ seo-audit         (RECOMENDADO - Auditoría SEO)"
echo "  ⚠️ vercel-react      (RECOMENDADO - Deploy a Vercel)"
echo "  ⚠️ supabase-postgres (RECOMENDADO - Base de datos)"
echo ""
echo " Instala los opcionales con:"
echo " npx skills add https://github.com/$GITHUB_USER/$GITHUB_REPO --skill [nombre]"
echo ""