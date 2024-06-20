## Objetivo
Nesse lab iremos desenvolver um playbook para criação de um usuário com senha predefinida.
Conceitos a praticar:
- Variáveis ansible
- Ansible vault

## Desenvolvimento
- Criar um Ansible Vault encryptado contendo a variável **devops_password**
- Configurar o Ansible para trabalhar com o Vault criado
- Criar um playbook conforme especificação abaixo:
    - Executar nos hosts do grupo **test**
    - Usar as variáveis do Vault criado
    - Criar usuário **devops** com a senha definida pela variável **devops_password**

## Verificação
Após execução, testar manualmente o login do usuário **devops** no host **node1** usando a senha predefinida.

---

Lembre-se que você não está sozinho. No nosso curso você encontrará os vídeos explicativos de cada etapa e ainda poderá tirar suas dúvidas com o instrutor e comunidade de alunos.

---

