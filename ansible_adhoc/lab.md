- Executar módulo ping para assegurar bom funcionamento do ansible
- Criar usuário **devops** com a senha **devops_123** no ambiente de produção
    - Após execução, testar manualmente realizando o login no host **node2**
- Realizar o deploy do script abaixo no ambiente de testes em **/usr/bin/logged_users**
    ```
    #!/bin/bash
    echo "Usuários conectados: "
    who | grep -v root
    ```
    - Após execução, testar manualmente executando o script no host **node1**

**OBS:** Lembre-se que você não está sozinho. No nosso curso você encontrará os vídeos explicativos de cada etapa e ainda poderá tirar suas dúvidas com o instrutor e comunidade de alunos.
