resource "aws_ssm_document" "ssm_document_my_ad" {
	name  = "${var.ssm_document_name}"
	document_type = "Command"

	content = <<DOC
  {
        "schemaVersion": "1.0",
        "description": "Join an instance to a domain",
        "runtimeConfig": {
           "aws:domainJoin": {
               "properties": {
                  "directoryId": "${var.directory_id}",
                  "directoryName": "${var.directory_name}",
                  "directoryOU":"${var.directory_ou}",
                  "dnsIpAddresses": [
                     "${var.dns_ip_addresses[0]}",
                     "${var.dns_ip_addresses[1]}"
                  ]
             }
           }
        }
  }
DOC
}
