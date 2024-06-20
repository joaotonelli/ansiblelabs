## Objetivo
Nesse lab iremos desenvolver um playbook para configurar um compartilhamento NFS somente leitura no servidor **node1**.
Conceitos a praticar:
- Manipulação de arquivos de configuração via Ansible

## Desenvolvimento
Desenvolva um playbook conforme especificação abaixo:
- Play 1 : Instalar e configurar servico client de NFS no parque
    - Alvo: 
        - Todos hosts
    - Tarefas: 
        - Instalar pacote **nfs-utils**
        - Iniciar serviço **rpc-statd**
- Play 2 : Configurar exportação de volume NFS
    - Alvo:
        - **node1**
    - Tarefas:
        - Editar opção **rdma** do arquivo **/etc/nfs.conf** mudar valor de **y** para **n**
        Ex: 
        ```
        ...
        [nfsd]
        ...
        rdma=n
        ...
        ```
        - Adicionar a seguinte entrada no arquivo **/etc/exports**:
        > /share *(ro,sync)
        - Reiniciar serviço **nfs-server**

## Verificação 
Após execução do playbook, realizar os seguintes passos no host **node2** para verificar funcionamento:
- Criar diretório **/mnt/share**
- Executar commando:
> mount node1:/share /mnt/share
- Listar conteúdo do diretório e tentar editar arquivo **README** 

## Gerenciamento de configuração
Na vida real, usamos o Ansible para gerenciamento de configuração do nosso parque, disparando a execução periódica de nossos playbooks via crontab por exemplo.
Aproveite esse Lab para simular esse comportamento:
- Configure o playbook para executar a cada 5 minutos
- Edite manualmente a configuração NFS para permitir escrita no volume
- Faça os testes de escrita
- Aguarde 5 minutos e refaça os testes

---

Lembre-se que você não está sozinho. No nosso curso você encontrará os vídeos explicativos de cada etapa e ainda poderá tirar suas dúvidas com o instrutor e comunidade de alunos.

---
