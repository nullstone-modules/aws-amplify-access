output "env" {
  value = [
    {
      name  = "AMPLIFY_APP_ID"
      value = local.amplify_app_id
    },
    {
      name  = "AMPLIFY_BACKEND_ENV"
      value = local.amplify_backend_env_name
    },
  ]
}
