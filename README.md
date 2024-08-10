# How to generate ssh to connect on GCP


First of all enter in your terminal linux an create your keys
```bash
ssh-keygen -t rsa -f ~/.ssh/gcp_key -C [user_name] -b 2048
```

To access enter the command bellow
```bash
ssh -i ~/.ssh/gcp_key [hostname]@[host]
```


# Commands Terraform


#### See changes
```bash
$ terraform plan
```

#### Apply changes
```bash
$ terraform apply
  
```

#### Destroy changes

```bash
$ terraform destroy
  
```
# Docs


[Terrafrom Pages](https://pages.github.com/](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance?product_intent=terraform).
