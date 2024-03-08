resource "aws_ssm_parameter" "cluster_sg_id" {
  name  = "/${var.project_name}/${var.environment}/cluster_sg_id"
  type  = "String"
  value = module.cluster.sg_id
}

resource "aws_ssm_parameter" "node_sg_id" {
  name  = "/${var.project_name}/${var.environment}/node_sg_id"
  type  = "String"
  value = module.node.sg_id
}

resource "aws_ssm_parameter" "ingress_sg_id" {
  name  = "/${var.project_name}/${var.environment}/ingress_sg_id"
  type  = "String"
  value = module.ingress.sg_id
}
