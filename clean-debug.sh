#!/bin/bash

# Script para limpar arquivos temporários de debug
echo "🧹 Limpando arquivos temporários de debug..."

# Remover perfis temporários do Chrome
rm -rf /tmp/vscode-chrome-debug-*

# Remover logs do npm/yarn na pasta application
cd "$(dirname "$0")/application" 2>/dev/null || cd application 2>/dev/null || echo "⚠️  Diretório application não encontrado"
rm -f npm-debug.log* yarn-debug.log* yarn-error.log* 2>/dev/null

echo "✅ Limpeza concluída!"
echo "📁 Os perfis de debug agora são criados em /tmp/ e são automaticamente limpos pelo sistema."
