## Objetivo
Nesse lab iremos desenvolver um playbook para configurar um serviço web apache cuja página inicial tenha como conteúdo o hostname do servidor.
Conceitos a praticar:
- Blocos de tarefas condicionais
- __Handlers__
- Diretivas __import__*/__include__*

## Desenvolvimento
Desenvolva um playbook para configuração de um servidor web conforme especificação abaixo:
- Alvo: 
    - Todos hosts
- Handlers:
    - restart_httpd (para almalinux)
    - restart_apache2 (para ubuntu)
- Tarefas:
    - Criar diretório **/opt/lab**
    - Bloco para hosts almalinux
        - Instalar pacote **httpd**
        - Configurar serviço **httpd**
        - Criar arquivo **/etc/httpd/conf.d/lab.conf**:
        ```
        <VirtualHost *:80>
            <Directory /opt/lab/>
                Require all granted
            </Directory>
            DocumentRoot /opt/lab/
        </VirtualHost>
        ```
        - Criar arquivo **/opt/lab/index.html** com conteúdo do hostname do servidor

    - Bloco para hosts ubuntu
        - Instalar pacote **apache2**
        - Configurar serviço **apache2**
        - Apagar arquivo **/etc/apache2/sites‑enabled/000‑default.conf**
        - Criar arquivo **/etc/apache2/sites‑available/lab.conf**:
        ```
        <VirtualHost *:80>
            <Directory /opt/lab/>
                Require all granted
            </Directory>
            DocumentRoot /opt/lab/
        </VirtualHost>
        ```
        - Criar link de **/etc/apache2/sites‑enabled/lab.conf** para **/etc/apache2/sites‑available/lab.conf**
        - Criar arquivo **/opt/lab/index.html** com conteúdo do hostname do servidor

    - Testar acesso à URL: **http://localhost**

**OBS1:** Você deve configurar o acionamento dos handlers nas tarefas conforme necessidade.
**OBS2:** Você deve configurar as permissões dos arquivos .html e .conf de configuração de acordo.

## Verificação
Após execução do playbook, realizar os seguintes passos no host **controller** para verificar funcionamento:
- Executar commando:
> curl http://node1
- Executar commando:
> curl http://node2

Você deve ser capaz de obter do servidor através da requisição web.

## Organização
Na vida real, lidamos com playbooks gigantes. Uma das formas para melhor organização é usar as diretivas Ansible __import__* / __include__*. Aproveite esse lab para reorganizar o playbook desenvolvido, separando os blocos de SO e handler em arquivos externos.

---

Lembre-se que você não está sozinho. No nosso curso você encontrará os vídeos explicativos de cada etapa e ainda poderá tirar suas dúvidas com o instrutor e comunidade de alunos.

---
