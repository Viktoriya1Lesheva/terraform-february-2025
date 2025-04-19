variable aws_key {
    default = "hello-key"
    type = string
}

variable region {
    default = "us-east-2"
    type = string
}

variable port {
    default = [22, 80]
    type = list
}


# variable ec2 {
#     type = object({
#         ami = string
#         type = string
#         tags = map(string)
#     })
#     default = {
#         ami = "ami-060a84cbcb5c14844"
#         type = "t2.micro"
#         tags = {
#     Enviroment = "dev"
#     Team = "DeVops"
#     Project = "Kaizen"
#   }
#     }
# }

variable ec2 {
    type = list(object({
        ami = string
        type = string
    }))
    default = [
        {
        ami = "ami-060a84cbcb5c14844"
        type = "t2.micro"
    }, 
    {
        ami = "ami-04f167a56786e4b09"
        type = "t2.micro"
    }
    ]
  }