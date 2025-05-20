# tech-challenge-fase-4-vpc

## Descrição
Este repositório contém a criação de toda a infraestrutura básica de rede para suportar um cluster EKS.
- VPC
- Internet Gateway
- Subnets
- NAT
- Route Table

Foi tido como base a documentação e o [template](https://docs.aws.amazon.com/eks/latest/userguide/creating-a-vpc.html) do cloudformation mencionado nela.

**Tecnologia:** Terraform

## Workflow
Todo o deploy CI/CD é automatizado utilizado o github actions.

Segue o ***Github flow***. Possui a branch main protegida, com as alterações sendo realizadas em outras branchs, e quando concluídas, são mergeadas para main através de um PR (pull request).

- O workflow é definido em *.github/workflows/terraform.yml*.
- Configuração de credenciais AWS para acessar serviços e fazer deploy.
- Passos do Terraform - init, validate e plan - como ações de CI para iniciar, validar e planejar a infraestrutura que será deployada.
- Terraform apply após passar nos steps anteriores o o merge for efetivado para main.
