# Raspbian configuração
Configurações pós instalação para raspbian.

# Requerimentos

- pacote sudo: 
  - `apt-get install -y sudo`
  - adicionar o usuário atual ao grupo sudo ou diretamente no /etc/sudoers, através do comando `visudo` (rodado como root)

Scripts (Todos os scripts abaixo podem ser personalizados): 
- 01-pacotes-basicos.sh
- 02-apps-utils.sh
- 03-5-conf_zsh.sh
- 03-conf_zsh.sh
- 04-trampo.sh
- 05-tmuxinator.sh
- 99-configuracoes.sh

Para rodar todos os scripts de uma vez, execute o comando:
` for script in *.sh ; do ./${script} ; done`

A partir dessa linha irei postar tudo de alterações que forem feitas para o Raspberry
====================================================================================================
