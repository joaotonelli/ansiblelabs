## Objetivo
Nesse lab iremos desenvolver um playbook para configurar a "mensagem do dia" (motd) no parque.
Conceitos a praticar:
- Ansible facts
- Jinja2

## Desenvolvimento
Desenvolva um playbook conforme especificação abaixo:
- Executar em todo os hosts gerenciados
- Criar o arquivo **motd.j2** de template coforme abaixo:

> Você está logado no host **[hostname]** com SO **[distribuicao linux]** **[versao]** e raiz  com **[uso_raiz]**% de uso!

Substituir valores de acordo com as informações dinâmicas do host (usar facts).

Exemplo:

> Você está logado no host **node1** com SO **Alma Linux 8** e partição raiz com **23.5**% de uso!

- Aplicar template criado no aruquivo **/etc/motd**

Após execução do playbook, realizar login em algum dos hosts e verificar a exibição da mensagem do dia.

---

Lembre-se que você não está sozinho. No nosso curso você encontrará os vídeos explicativos de cada etapa e ainda poderá tirar suas dúvidas com o instrutor e comunidade de alunos.

---

