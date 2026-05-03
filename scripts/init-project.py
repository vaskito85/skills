#!/usr/bin/env python3
"""
Script para generar estructura de proyecto automáticamente
Uso: python scripts/init-project.py --name myapp --template api
"""

import argparse
import os
import shutil

TEMPLATES = {
    'api': {
        'src': ['controllers', 'models', 'routes', 'services', 'utils'],
        'files': {
            'package.json': None,
            'src/index.js': None,
            'src/routes/api.js': None,
        }
    },
    'saas': {
        'src': ['controllers', 'models', 'routes', 'services', 'utils', 'middleware'],
        'files': {
            'package.json': None,
            'prisma/schema.prisma': None,
            'src/app.js': None,
        }
    },
    'ecommerce': {
        'src': ['controllers', 'models', 'routes', 'services', 'utils'],
        'files': {
            'package.json': None,
            'prisma/schema.prisma': None,
        }
    }
}

def create_file(path, content=''):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        f.write(content)

def main():
    parser = argparse.ArgumentParser(description='Initialize project structure')
    parser.add_argument('--name', required=True)
    parser.add_argument('--template', default='api')
    parser.add_argument('--output-dir', default='.')
    args = parser.parse_args()

    template = TEMPLATES.get(args.template, TEMPLATES['api'])

    project_dir = os.path.join(args.output_dir, args.name)

    # Create src directories
    for dir_name in template['src']:
        os.makedirs(os.path.join(project_dir, 'src', dir_name), exist_ok=True)

    # Create config files
    if 'prisma/schema.prisma' in template['files']:
        os.makedirs(os.path.join(project_dir, 'prisma'), exist_ok=True)

    print(f"✅ Project '{args.name}' created with template '{args.template}'")
    print(f"   Location: {project_dir}")

if __name__ == '__main__':
    main()