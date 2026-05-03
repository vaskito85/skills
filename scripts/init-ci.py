#!/usr/bin/env python3
"""
Script para generar GitHub Actions CI/CD
Uso: python scripts/init-ci.py --project-name myapp
"""

import argparse
import os

CI_WORKFLOW = """name: CI/CD

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
"""

def main():
    parser = argparse.ArgumentParser(description='Generate CI/CD workflow')
    parser.add_argument('--project-name', required=True)
    parser.add_argument('--output-dir', default='.')
    args = parser.parse_args()

    workflow_dir = os.path.join(args.output_dir, '.github', 'workflows')
    os.makedirs(workflow_dir, exist_ok=True)

    workflow_path = os.path.join(workflow_dir, 'ci.yml')
    with open(workflow_path, 'w') as f:
        f.write(CI_WORKFLOW)

    print(f"✅ CI/CD workflow generated")
    print(f"   Location: {workflow_path}")

if __name__ == '__main__':
    main()