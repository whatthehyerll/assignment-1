# assignment-1
Cloud Computing_Assignmet-1


Readme

###1. CMD
cd ./.aws
code .

###2. VS Code
##check config file and credential file

#config file
[default]
region=us-east-1

#credential file: copy and paste AWS CLI credential code from AWS Learner Lab - Foundational Services / AWS Details on C:\Users\ username \. aws\credentials.(Windows ver.)

[default]
aws_access_key_id=ASIA5M4QOURPXJ7WMHX4
aws_secret_access_key=BkbIMwUftngq9rZeNxrNiLzIuFTTtsu4+Rr3OidY
aws_session_token=FwoGZXIvYXdzEFkaDHdBHjUSoteX69YLjiLJAfI+euEHVDrApinMq18Jr+1wssKg4C/viy5kaHxCQdM69YAKxCEaTH2sOBJyjX9sRSaBDRv5yabKjbm+cyJVOWvyvki4eI6CIWbISd6AhHwfyGulplNKOye+UxGQ1APtRGpIb9T0wM6Oi7g7Ea6tRz2qDuUv2ub8DLQwedxCyuvEyRQeZwpyt39nTdDbBAlnAwhmpsDWZxtJUxXbYq35EhWhOV+OJUiZiFAZFVprw0SlDmT0yeuYctxWyTxSmHa8POKNRGbZPe84FyjQrNyUBjItfpPWpf5Rb+obDGK0Jnt4iVAy/i7WY2cUGlSDsngIo2XBiHgUNxLnyQyKlVkd

#terminal
PS C:\Users\hyeri\.aws> aws s3 ls
2022-05-21 15:34:12 ertyu76767




PS C:\Users\hyeri\.aws> cd ..
PS C:\Users\hyeri> cd ./terraform-assignment
PS C:\Users\hyeri\terraform-assignment> ls


    디렉터리: C:\Users\hyeri\terraform-assignment


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2022-06-01  오전 10:35                terraform-lab1
d-----      2022-06-01  오전 10:35                terraform-lab2
d-----      2022-06-01  오전 10:35                terraform-lab3


PS C:\Users\hyeri\terraform-assignment> code terraform-lab1

###2. VS Code
##create main.tf file
#main.tf
resource "local_file" "pets" {
  filename = "pets.txt"
  content  = "we love pets"
}

#terminal
PS C:\Users\hyeri\terraform-assignment\terraform-lab1> terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/local...
- Installing hashicorp/local v2.2.3...
- Installed hashicorp/local v2.2.3 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

##we create local file, so it means local provider

#terninal
PS C:\Users\hyeri\terraform-assignment\terraform-lab1> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following        
symbols:
  + create

Terraform will perform the following actions:

  # local_file.pets will be created
  + resource "local_file" "pets" {
      + content              = "we love pets"
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "pets.txt"
      + id                   = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform 
apply" now.

#terminal
PS C:\Users\hyeri\terraform-assignment\terraform-lab1> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following        
symbols:
  + create

Terraform will perform the following actions:

  # local_file.pets will be created
  + resource "local_file" "pets" {
      + content              = "we love pets"
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "pets.txt"
      + id                   = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

local_file.pets: Creating...
local_file.pets: Creation complete after 1s [id=d87a5018d4e1c1e1644d11eafcdf53a95c8968ef]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

##memorize
#terraform init: terraform init prepares the working directory so terraform can run the configuration.
#terraform plan: terraform plan enables you to preview any changes before you apply them.
#terraform apply: terraform apply makes the changes defined by your terraform configuration to create(added), update(changed), or destroy resources.

#ternimal
PS C:\Users\hyeri\terraform-assignment> code terraform-lab2

#main.tf
resource "local_file" "pets" {
  filename = var.file_name
  content  = "we love pets"
}

#variables.tf
variable "file_name" {
  description = "The name of the file to create"
  default = "file_name"
}

#terminal
PS C:\Users\hyeri\terraform-assignment\terraform-lab2> terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/local...
- Installing hashicorp/local v2.2.3...
- Installed hashicorp/local v2.2.3 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

#terminal
PS C:\Users\hyeri\terraform-assignment\terraform-lab2> terraform plan -var="file_name=name_from_input.txt"

#terminal
PS C:\Users\hyeri\terraform-assignment\terraform-lab2> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following        
symbols:
  + create

Terraform will perform the following actions:

  # local_file.pets will be created
  + resource "local_file" "pets" {
      + content              = "we love pets"
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "file_name"
      + id                   = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + file_name        = "file_name"
  + file_permissions = "0777"

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform 
apply" now.

#output.tf
output "file_permissions" {
  value = local_file.pets.directory_permission
}

output "file_name" {
  value = local_file.pets.filename
  description = "The name of the file created"
}

#terminal
PS C:\Users\hyeri\terraform-assignment\terraform-lab2> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following        
symbols:
  + create

Terraform will perform the following actions:

  # local_file.pets will be created
  + resource "local_file" "pets" {
      + content              = "we love pets"
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "file_name"
      + id                   = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + file_name        = "file_name"
  + file_permissions = "0777"

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

local_file.pets: Creating...
local_file.pets: Creation complete after 0s [id=d87a5018d4e1c1e1644d11eafcdf53a95c8968ef]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

file_name = "file_name"
file_permissions = "0777"

#ternimal
PS C:\Users\hyeri\terraform-assignment> code terraform-lab3

##memorize
#resource: block name
#local file: resource type
#local: provider
#file: resource
#pet: resource name

#main.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "main_s3_bucket" {
  bucket = "my-tf-test-bucket-cc2022-onsite-34"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}

#variables.tf
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance2"
}


#terminal
PS C:\Users\hyeri\terraform-assignment\terraform-lab3> terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v4.16.0...
- Installed hashicorp/aws v4.16.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

#terminal
PS C:\Users\hyeri\terraform-assignment\terraform-lab3> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following        
symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.app_server will be created
  + resource "aws_instance" "app_server" {
      + ami                                  = "ami-08d70e59c07c61a3a"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "ExampleAppServerInstance2"
        }
      + tags_all                             = {
          + "Name" = "ExampleAppServerInstance2"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id                 = (known after apply)
              + capacity_reservation_resource_group_arn = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + maintenance_options {
          + auto_recovery = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
          + instance_metadata_tags      = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_card_index    = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_s3_bucket.main_s3_bucket will be created
  + resource "aws_s3_bucket" "main_s3_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "my-tf-test-bucket-cc2022-onsite-34"
      + bucket_domain_name          = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags                        = {
          + "Environment" = "Dev"
          + "Name"        = "My bucket"
        }
      + tags_all                    = {
          + "Environment" = "Dev"
          + "Name"        = "My bucket"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule {
          + allowed_headers = (known after apply)
          + allowed_methods = (known after apply)
          + allowed_origins = (known after apply)
          + expose_headers  = (known after apply)
          + max_age_seconds = (known after apply)
        }

      + grant {
          + id          = (known after apply)
          + permissions = (known after apply)
          + type        = (known after apply)
          + uri         = (known after apply)
        }

      + lifecycle_rule {
          + abort_incomplete_multipart_upload_days = (known after apply)
          + enabled                                = (known after apply)
          + id                                     = (known after apply)
          + prefix                                 = (known after apply)
          + tags                                   = (known after apply)

          + expiration {
              + date                         = (known after apply)
              + days                         = (known after apply)
              + expired_object_delete_marker = (known after apply)
            }

          + noncurrent_version_expiration {
              + days = (known after apply)
            }

          + noncurrent_version_transition {
              + days          = (known after apply)
              + storage_class = (known after apply)
            }

          + transition {
              + date          = (known after apply)
              + days          = (known after apply)
              + storage_class = (known after apply)
            }
        }

      + logging {
          + target_bucket = (known after apply)
          + target_prefix = (known after apply)
        }

      + object_lock_configuration {
          + object_lock_enabled = (known after apply)

          + rule {
              + default_retention {
                  + days  = (known after apply)
                  + mode  = (known after apply)
                  + years = (known after apply)
                }
            }
        }

      + replication_configuration {
          + role = (known after apply)

          + rules {
              + delete_marker_replication_status = (known after apply)
              + id                               = (known after apply)
              + prefix                           = (known after apply)
              + priority                         = (known after apply)
              + status                           = (known after apply)

              + destination {
                  + account_id         = (known after apply)
                  + bucket             = (known after apply)
                  + replica_kms_key_id = (known after apply)
                  + storage_class      = (known after apply)

                  + access_control_translation {
                      + owner = (known after apply)
                    }

                  + metrics {
                      + minutes = (known after apply)
                      + status  = (known after apply)
                    }

                  + replication_time {
                      + minutes = (known after apply)
                      + status  = (known after apply)
                    }
                }

              + filter {
                  + prefix = (known after apply)
                  + tags   = (known after apply)
                }

              + source_selection_criteria {
                  + sse_kms_encrypted_objects {
                      + enabled = (known after apply)
                    }
                }
            }
        }

      + server_side_encryption_configuration {
          + rule {
              + bucket_key_enabled = (known after apply)

              + apply_server_side_encryption_by_default {
                  + kms_master_key_id = (known after apply)
                  + sse_algorithm     = (known after apply)
                }
            }
        }

      + versioning {
          + enabled    = (known after apply)
          + mfa_delete = (known after apply)
        }

      + website {
          + error_document           = (known after apply)
          + index_document           = (known after apply)
          + redirect_all_requests_to = (known after apply)
          + routing_rules            = (known after apply)
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform 
apply" now.

#output.tf
output "webserver_arn" {
    value = aws_instance.app_server.arn
}![image](https://user-images.githubusercontent.com/62144645/171378925-a1cd9640-b083-48f2-9d18-a911be3600bc.png)
