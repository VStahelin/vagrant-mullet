# Vagrant

## Oque eh o vagrant?

Vagrant é uma ferramenta para construir e gerenciar ambientes de máquinas virtuais em um único fluxo de trabalho.

Com um fluxo de trabalho fácil de usar e foco na automação, o Vagrant reduz o tempo de configuração do ambiente de desenvolvimento, aumenta a paridade de produção e torna a desculpa "funciona na minha máquina" uma relíquia do passado.

- Oque eh o vagrant
- Para oque serve
- Iniciando uma box
- Conectando

- Personalizando vagrant file
    - IP - [https://www.vagrantup.com/docs/networking/private_network](https://www.vagrantup.com/docs/networking/private_network)
    - Porta - [https://www.vagrantup.com/docs/networking/forwarded_ports](https://www.vagrantup.com/docs/networking/forwarded_ports)
    - Provider - [https://www.vagrantup.com/docs/providers/configuration](https://www.vagrantup.com/docs/providers/configuration)
    - Folder - [https://www.vagrantup.com/docs/synced-folders/basic_usage](https://www.vagrantup.com/docs/synced-folders/basic_usage)
    - Provision - [https://www.vagrantup.com/docs/provisioning/basic_usage](https://www.vagrantup.com/docs/provisioning/basic_usage)
    
- Menção  ao Share
    
    ```bash
    vagrant share
    ```
  

```bash
django-admin.py startproject vagrant_django
cd vagrant_django
nohup python manage.py runserver [::]:8000 >&/dev/null &
```