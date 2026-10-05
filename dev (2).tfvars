

security_groups = {
    alb = {
        name = "alb-sg"
        description = "this is alb sg "
    }

    ecs = {
        name = "ecs-sg"
        description = " this is ecs sg"
    }

    auroradevdb = {
        name = "auroradevdb-sg"
        description = " this is auroradevdb sg"
    }
}

vpc_id = "vpc-0b9b0b5bae6000daa"

tags = {
    environment = "dev"
    terraform = "true"
}


aws_region = "us-east-1"