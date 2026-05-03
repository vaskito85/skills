#!/usr/bin/env python3
"""
Script para generar configuración Docker automáticamente
Uso: python scripts/docker-init.py --project-name myapp --port 3000
"""

import argparse
import os

DOCKERFILE_TEMPLATE = """FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --production
COPY . .
EXPOSE {port}
CMD ["npm", "start"]
"""

DOCKER_COMPOSE_TEMPLATE = """version: '3.8'
services:
  app:
    build: .
    ports:
      - "{port}:{port}"
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
"""

DOCKERIGNORE_TEMPLATE = """node_modules
npm-debug.log
.env
.git
.gitignore
.DS_Store
*.log
dist
build
"""

def main():
    parser = argparse.ArgumentParser(description='Generate Docker config')
    parser.add_argument('--project-name', required=True)
    parser.add_argument('--port', default='3000')
    args = parser.parse_args()

    # Generate Dockerfile
    with open('Dockerfile', 'w') as f:
        f.write(DOCKERFILE_TEMPLATE.format(port=args.port))

    # Generate docker-compose.yml
    with open('docker-compose.yml', 'w') as f:
        f.write(DOCKER_COMPOSE_TEMPLATE.format(port=args.port))

    # Generate .dockerignore
    with open('.dockerignore', 'w') as f:
        f.write(DOCKERIGNORE_TEMPLATE)

    print(f"✅ Docker config generated for {args.project_name}")
    print(f"   - Dockerfile")
    print(f"   - docker-compose.yml")
    print(f"   - .dockerignore")

if __name__ == '__main__':
    main()