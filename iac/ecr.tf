resource aws_ecr_repository "repository" {
  name                 = "ebilling-ecr-3retrfdf"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    git_commit           = "N/A"
    git_file             = "iac/ecr.tf"
    git_last_modified_at = "2023-05-15 08:48:24"
    git_last_modified_by = "v@prismacloudsecuritydemo.com"
    git_modifiers        = "v"
    git_org              = "prismacloudchina"
    git_repo             = "backend-app"
    yor_trace            = "3251a9e3-d124-4486-b3c3-77803b27dba0"
  }
}