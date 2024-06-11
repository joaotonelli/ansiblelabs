## Tarefas

Desenvolva um playbook para configuração de um compartilhamento NFS conforme especificação abaixo:
- Executar apenas no host **node1**
- Criar diretorio **/var/dev_vol**
- Criar o arquivo **/var/dev_vol/readme.txt** com o conteúdo:
> Volume de desenvolvimento com acesso somente leitura
- Adicionar a seguinte entrada no arquivo **/etc/exports**:
> /var/dev_vol *(ro,sync)
- Configurar o serviço **nfs-server** de acordo

Após execução do playbook, realizar os seguintes passos no host **node2** para verificar funcionamento:
- Criar diretório **/mnt/dev**
- Executar commando:
> mount node1:/var/dev_vol /mnt/dev
- Listar conteúdo do diretório e tentar editar arquivo **readme.txt** 

### Desafio
Na vida real, usamos o Ansible para gerenciamente de configuração do nosso parque, disparando a execução periodica de nossos playbooks via crontab.
Aproveite esse Lab para simular esse comportamento:
- Configure o playbook para executar a cada 5 minutos
- Edite manualmente a configuração NFS para permitir escrita no volume
- Faça os testes de escrita
- Aguarde 5 minutos e refaça os testes

**OBS:** Lembre-se que você não está sozinho. No nosso curso você encontrará os vídeos explicativos de cada etapa e ainda poderá tirar suas dúvidas com o instrutor e comunidade de alunos.
