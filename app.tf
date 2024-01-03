data "ns_connection" "app" {
  name     = "amplify_app"
  contract = "datastore/aws/amplify"
}

locals {
  amplify_app_id = data.ns_connection.app.outputs.app_id
  amplify_backend_env_name = data.ns_connection.app.outputs.backend_env_name
}
