# Terraform para provisionamento dos servidores Kafka

Este repositório trabalha com workspaces do Terraform e branchs do Git. Devido ao tempo para entrega, foi feito dessa forma,
pois foi necessário "chumbar" os valores no tfvars.

Então, se você quiser saber o "estado" ou aplicar alguma mudança, primeiramente vá para a branch do ambiente, ex:

$ git checkout prd

E depois mude a workspace também:

$ terraform init
$ terraform workspace select prd
