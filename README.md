# General Terraform GCP Modules
Módulos gerais para construção de infraestrutura no GCP com Terraform.

## Módulos disponíveis
### MySQL Instances
Criação de instâncias MySQL, com vários recursos adicionais:

- Bases de dados múltiplas.
- Usuários e senhas para a conexão.
- Secrets para armazenamento de credenciais dos usuários e informações de host da instância.
- Gatilhos para desligamento e ativação automática de instâncias.

### Databases
Criação de bases de dados SQL para instâncias pré-existentes.

### Users
Criação de usuários e senhas para conexão com as instâncias SQL pré-existentes e geração automática de secrets com as credenciais do novo usuário.

### Secrets
Criação de secrets para armazenamento de dados sigilosos.

### Schedulers
Criação de jobs para execução de rotinas por agendamento.

## Uso
Adicionar módulo no projeto de infraestrutura importando o repositório General Terraform GCP Modules como o source, da seguinte forma:

```terraform
module "my_module" {
  source = "github.com/felipemenezesdm/general-terraform-gcp-modules?ref=%tag_or_hash_or_branch%"
  # Variables
}
```

## Links úteis
- [Documentação de módulos do Terraform](https://developer.hashicorp.com/terraform/language/modules/develop)
- [Template para geração de projetos de infraestrutura em Terraform](https://github.com/FelipeMenezesDM/general-infra-template)