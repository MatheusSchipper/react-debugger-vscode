# Debug Configuration for React App

Este projeto agora está configurado para debug no VS Code.

## Como usar o Debug

### 1. Configurações Disponíveis

Foram criadas 3 configurações de debug no arquivo `.vscode/launch.json`:

- **React App - Chrome**: Inicia a aplicação e abre no Chrome com debug habilitado
- **React App - Edge**: Inicia a aplicação e abre no Edge com debug habilitado  
- **Attach to Chrome**: Conecta a uma instância do Chrome já executando

### 2. Como Debuggar

#### Opção 1: Debug Manual (Mais Confiável)
1. **Primeiro, inicie a aplicação manualmente**:
   ```bash
   cd application
   npm start
   ```
2. **Aguarde a mensagem**: "compiled successfully" ou "Local: http://localhost:3000"
3. **No VS Code**, vá para "Run and Debug" (Ctrl+Shift+D ou Cmd+Shift+D)
4. **Selecione** "React Debug (Manual Start)" no dropdown
5. **Clique** em "Start Debugging" (ou pressione F5)

#### Opção 2: Debug Automático
1. Abra o VS Code na pasta raiz do projeto
2. Vá para a aba "Run and Debug" (Ctrl+Shift+D ou Cmd+Shift+D)
3. Selecione "React App - Chrome" no dropdown
4. Clique em "Start Debugging" (ou pressione F5)

⚠️ **Se a Opção 2 não funcionar**, use sempre a **Opção 1** que é mais confiável.

#### Opção 3: Attach (Se já está rodando)
1. Se a aplicação já está rodando em http://localhost:3000
2. Selecione "Attach to Chrome"
3. Clique em "Start Debugging"


### 3. Troubleshooting

#### Problema: Build fica "em andamento" infinitamente
**Solução**: Use a "Opção 1: Debug Manual" descrita acima.

#### Problema: Breakpoints não funcionam
1. **Verifique se a aplicação compilou completamente**:
   - Aguarde a mensagem "compiled successfully"
   - Verifique se http://localhost:3000 está acessível

2. **Confirme que o debugger está conectado**:
   - Na aba "Run and Debug", deve aparecer "Debugger attached"
   - No Chrome, você verá um banner dizendo "Being debugged by a remote session"

3. **Teste com um breakpoint simples**:
   - Adicione um `debugger;` no código JavaScript
   - Ou clique na margem esquerda para adicionar um breakpoint visual

4. **Force um re-render**:
   - Faça uma alteração pequena no componente
   - Salve o arquivo para triggerar hot reload

#### Outros problemas comuns:

1. **Verificar porta**: Certifique-se que a aplicação está rodando na porta 3000
2. **Limpar cache**: Às vezes é necessário limpar o cache do browser
3. **Reinstalar node_modules**: `cd application && rm -rf node_modules && npm install`
4. **Verificar Source Maps**: Certifique-se que estão habilitados no React
5. **Fechar outras instâncias do Chrome**: Para evitar conflitos de debug

### 10. Gerenciamento de Arquivos Temporários

#### 🗂️ Onde são criados os arquivos?
Os arquivos de debug do Chrome agora são criados em `/tmp/` (diretório temporário do sistema), não mais no projeto:
- `/tmp/vscode-chrome-debug-buc_loan_app/`
- `/tmp/vscode-chrome-debug-manual-buc_loan_app/`

#### 🧹 Limpeza Automática
- **Sistema**: O macOS limpa automaticamente `/tmp/` na reinicialização
- **Manual**: Execute `./clean-debug.sh` na raiz do projeto para limpar agora
- **Git**: Os arquivos estão no `.gitignore` e não serão commitados

#### 📁 Arquivos Ignorados pelo Git
```
.vscode/chrome-debug-profile/
.vscode/chrome-debug-profile-manual/
*.log
npm-debug.log*
```