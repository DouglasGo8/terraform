variable "list_sample" {
    description = "An Example of list"  
    type        = "list"
    default     = [1, 2, 3]
}

variable "map_sample" {
    description = "An Example of map"
    type        = "map"  

    default     = {
        key1        = "value1"
        key2        = "value2"
        key3        = "value3"
    }
}


variable "region" {
    description = "Def AWS region"  

    default     = "us-east-1"
}

variable "server_port" {
    description = "Def AWS region"  
}
