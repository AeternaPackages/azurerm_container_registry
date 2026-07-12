# --- azurerm_container_registry ---
output "container_registries_id" {
  description = "Map of id values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_id
}

output "container_registries_admin_enabled" {
  description = "Map of admin_enabled values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_admin_enabled
}

output "container_registries_admin_password" {
  description = "Map of admin_password values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_admin_password
  sensitive   = true
}

output "container_registries_admin_username" {
  description = "Map of admin_username values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_admin_username
}

output "container_registries_anonymous_pull_enabled" {
  description = "Map of anonymous_pull_enabled values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_anonymous_pull_enabled
}

output "container_registries_data_endpoint_enabled" {
  description = "Map of data_endpoint_enabled values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_data_endpoint_enabled
}

output "container_registries_data_endpoint_host_names" {
  description = "Map of data_endpoint_host_names values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_data_endpoint_host_names
}

output "container_registries_encryption" {
  description = "Map of encryption values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_encryption
}

output "container_registries_export_policy_enabled" {
  description = "Map of export_policy_enabled values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_export_policy_enabled
}

output "container_registries_georeplications" {
  description = "Map of georeplications values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_georeplications
}

output "container_registries_identity" {
  description = "Map of identity values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_identity
}

output "container_registries_location" {
  description = "Map of location values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_location
}

output "container_registries_login_server" {
  description = "Map of login_server values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_login_server
}

output "container_registries_name" {
  description = "Map of name values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_name
}

output "container_registries_network_rule_bypass_option" {
  description = "Map of network_rule_bypass_option values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_network_rule_bypass_option
}

output "container_registries_network_rule_set" {
  description = "Map of network_rule_set values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_network_rule_set
}

output "container_registries_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_public_network_access_enabled
}

output "container_registries_quarantine_policy_enabled" {
  description = "Map of quarantine_policy_enabled values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_quarantine_policy_enabled
}

output "container_registries_resource_group_name" {
  description = "Map of resource_group_name values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_resource_group_name
}

output "container_registries_retention_policy_in_days" {
  description = "Map of retention_policy_in_days values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_retention_policy_in_days
}

output "container_registries_sku" {
  description = "Map of sku values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_sku
}

output "container_registries_tags" {
  description = "Map of tags values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_tags
}

output "container_registries_trust_policy_enabled" {
  description = "Map of trust_policy_enabled values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_trust_policy_enabled
}

output "container_registries_zone_redundancy_enabled" {
  description = "Map of zone_redundancy_enabled values across all container_registries, keyed the same as var.container_registries"
  value       = module.container_registries.container_registries_zone_redundancy_enabled
}

# --- azurerm_container_connected_registry ---
output "container_connected_registries_id" {
  description = "Map of id values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_id
}

output "container_connected_registries_audit_log_enabled" {
  description = "Map of audit_log_enabled values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_audit_log_enabled
}

output "container_connected_registries_client_token_ids" {
  description = "Map of client_token_ids values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_client_token_ids
}

output "container_connected_registries_container_registry_id" {
  description = "Map of container_registry_id values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_container_registry_id
}

output "container_connected_registries_log_level" {
  description = "Map of log_level values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_log_level
}

output "container_connected_registries_mode" {
  description = "Map of mode values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_mode
}

output "container_connected_registries_name" {
  description = "Map of name values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_name
}

output "container_connected_registries_notification" {
  description = "Map of notification values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_notification
}

output "container_connected_registries_parent_registry_id" {
  description = "Map of parent_registry_id values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_parent_registry_id
}

output "container_connected_registries_sync_message_ttl" {
  description = "Map of sync_message_ttl values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_sync_message_ttl
}

output "container_connected_registries_sync_schedule" {
  description = "Map of sync_schedule values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_sync_schedule
}

output "container_connected_registries_sync_token_id" {
  description = "Map of sync_token_id values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_sync_token_id
}

output "container_connected_registries_sync_window" {
  description = "Map of sync_window values across all container_connected_registries, keyed the same as var.container_connected_registries"
  value       = module.container_connected_registries.container_connected_registries_sync_window
}

# --- azurerm_container_registry_agent_pool ---
output "container_registry_agent_pools_id" {
  description = "Map of id values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_id
}

output "container_registry_agent_pools_container_registry_name" {
  description = "Map of container_registry_name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_container_registry_name
}

output "container_registry_agent_pools_instance_count" {
  description = "Map of instance_count values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_instance_count
}

output "container_registry_agent_pools_location" {
  description = "Map of location values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_location
}

output "container_registry_agent_pools_name" {
  description = "Map of name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_name
}

output "container_registry_agent_pools_resource_group_name" {
  description = "Map of resource_group_name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_resource_group_name
}

output "container_registry_agent_pools_tags" {
  description = "Map of tags values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_tags
}

output "container_registry_agent_pools_tier" {
  description = "Map of tier values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_tier
}

output "container_registry_agent_pools_virtual_network_subnet_id" {
  description = "Map of virtual_network_subnet_id values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = module.container_registry_agent_pools.container_registry_agent_pools_virtual_network_subnet_id
}

# --- azurerm_container_registry_cache_rule ---
output "container_registry_cache_rules_id" {
  description = "Map of id values across all container_registry_cache_rules, keyed the same as var.container_registry_cache_rules"
  value       = module.container_registry_cache_rules.container_registry_cache_rules_id
}

output "container_registry_cache_rules_container_registry_id" {
  description = "Map of container_registry_id values across all container_registry_cache_rules, keyed the same as var.container_registry_cache_rules"
  value       = module.container_registry_cache_rules.container_registry_cache_rules_container_registry_id
}

output "container_registry_cache_rules_credential_set_id" {
  description = "Map of credential_set_id values across all container_registry_cache_rules, keyed the same as var.container_registry_cache_rules"
  value       = module.container_registry_cache_rules.container_registry_cache_rules_credential_set_id
}

output "container_registry_cache_rules_name" {
  description = "Map of name values across all container_registry_cache_rules, keyed the same as var.container_registry_cache_rules"
  value       = module.container_registry_cache_rules.container_registry_cache_rules_name
}

output "container_registry_cache_rules_source_repo" {
  description = "Map of source_repo values across all container_registry_cache_rules, keyed the same as var.container_registry_cache_rules"
  value       = module.container_registry_cache_rules.container_registry_cache_rules_source_repo
}

output "container_registry_cache_rules_target_repo" {
  description = "Map of target_repo values across all container_registry_cache_rules, keyed the same as var.container_registry_cache_rules"
  value       = module.container_registry_cache_rules.container_registry_cache_rules_target_repo
}

# --- azurerm_container_registry_credential_set ---
output "container_registry_credential_sets_id" {
  description = "Map of id values across all container_registry_credential_sets, keyed the same as var.container_registry_credential_sets"
  value       = module.container_registry_credential_sets.container_registry_credential_sets_id
}

output "container_registry_credential_sets_authentication_credentials" {
  description = "Map of authentication_credentials values across all container_registry_credential_sets, keyed the same as var.container_registry_credential_sets"
  value       = module.container_registry_credential_sets.container_registry_credential_sets_authentication_credentials
}

output "container_registry_credential_sets_container_registry_id" {
  description = "Map of container_registry_id values across all container_registry_credential_sets, keyed the same as var.container_registry_credential_sets"
  value       = module.container_registry_credential_sets.container_registry_credential_sets_container_registry_id
}

output "container_registry_credential_sets_identity" {
  description = "Map of identity values across all container_registry_credential_sets, keyed the same as var.container_registry_credential_sets"
  value       = module.container_registry_credential_sets.container_registry_credential_sets_identity
}

output "container_registry_credential_sets_login_server" {
  description = "Map of login_server values across all container_registry_credential_sets, keyed the same as var.container_registry_credential_sets"
  value       = module.container_registry_credential_sets.container_registry_credential_sets_login_server
}

output "container_registry_credential_sets_name" {
  description = "Map of name values across all container_registry_credential_sets, keyed the same as var.container_registry_credential_sets"
  value       = module.container_registry_credential_sets.container_registry_credential_sets_name
}

# --- azurerm_container_registry_scope_map ---
output "container_registry_scope_maps_id" {
  description = "Map of id values across all container_registry_scope_maps, keyed the same as var.container_registry_scope_maps"
  value       = module.container_registry_scope_maps.container_registry_scope_maps_id
}

output "container_registry_scope_maps_actions" {
  description = "Map of actions values across all container_registry_scope_maps, keyed the same as var.container_registry_scope_maps"
  value       = module.container_registry_scope_maps.container_registry_scope_maps_actions
}

output "container_registry_scope_maps_container_registry_name" {
  description = "Map of container_registry_name values across all container_registry_scope_maps, keyed the same as var.container_registry_scope_maps"
  value       = module.container_registry_scope_maps.container_registry_scope_maps_container_registry_name
}

output "container_registry_scope_maps_description" {
  description = "Map of description values across all container_registry_scope_maps, keyed the same as var.container_registry_scope_maps"
  value       = module.container_registry_scope_maps.container_registry_scope_maps_description
}

output "container_registry_scope_maps_name" {
  description = "Map of name values across all container_registry_scope_maps, keyed the same as var.container_registry_scope_maps"
  value       = module.container_registry_scope_maps.container_registry_scope_maps_name
}

output "container_registry_scope_maps_resource_group_name" {
  description = "Map of resource_group_name values across all container_registry_scope_maps, keyed the same as var.container_registry_scope_maps"
  value       = module.container_registry_scope_maps.container_registry_scope_maps_resource_group_name
}

# --- azurerm_container_registry_task ---
output "container_registry_tasks_id" {
  description = "Map of id values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_id
}

output "container_registry_tasks_agent_pool_name" {
  description = "Map of agent_pool_name values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_agent_pool_name
}

output "container_registry_tasks_agent_setting" {
  description = "Map of agent_setting values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_agent_setting
}

output "container_registry_tasks_base_image_trigger" {
  description = "Map of base_image_trigger values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_base_image_trigger
  sensitive   = true
}

output "container_registry_tasks_container_registry_id" {
  description = "Map of container_registry_id values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_container_registry_id
}

output "container_registry_tasks_docker_step" {
  description = "Map of docker_step values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_docker_step
  sensitive   = true
}

output "container_registry_tasks_enabled" {
  description = "Map of enabled values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_enabled
}

output "container_registry_tasks_encoded_step" {
  description = "Map of encoded_step values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_encoded_step
  sensitive   = true
}

output "container_registry_tasks_file_step" {
  description = "Map of file_step values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_file_step
  sensitive   = true
}

output "container_registry_tasks_identity" {
  description = "Map of identity values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_identity
}

output "container_registry_tasks_is_system_task" {
  description = "Map of is_system_task values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_is_system_task
}

output "container_registry_tasks_log_template" {
  description = "Map of log_template values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_log_template
}

output "container_registry_tasks_name" {
  description = "Map of name values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_name
}

output "container_registry_tasks_platform" {
  description = "Map of platform values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_platform
}

output "container_registry_tasks_registry_credential" {
  description = "Map of registry_credential values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_registry_credential
  sensitive   = true
}

output "container_registry_tasks_source_trigger" {
  description = "Map of source_trigger values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_source_trigger
  sensitive   = true
}

output "container_registry_tasks_tags" {
  description = "Map of tags values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_tags
}

output "container_registry_tasks_timeout_in_seconds" {
  description = "Map of timeout_in_seconds values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_timeout_in_seconds
}

output "container_registry_tasks_timer_trigger" {
  description = "Map of timer_trigger values across all container_registry_tasks, keyed the same as var.container_registry_tasks"
  value       = module.container_registry_tasks.container_registry_tasks_timer_trigger
}

# --- azurerm_container_registry_token ---
output "container_registry_tokens_id" {
  description = "Map of id values across all container_registry_tokens, keyed the same as var.container_registry_tokens"
  value       = module.container_registry_tokens.container_registry_tokens_id
}

output "container_registry_tokens_container_registry_name" {
  description = "Map of container_registry_name values across all container_registry_tokens, keyed the same as var.container_registry_tokens"
  value       = module.container_registry_tokens.container_registry_tokens_container_registry_name
}

output "container_registry_tokens_enabled" {
  description = "Map of enabled values across all container_registry_tokens, keyed the same as var.container_registry_tokens"
  value       = module.container_registry_tokens.container_registry_tokens_enabled
}

output "container_registry_tokens_name" {
  description = "Map of name values across all container_registry_tokens, keyed the same as var.container_registry_tokens"
  value       = module.container_registry_tokens.container_registry_tokens_name
}

output "container_registry_tokens_resource_group_name" {
  description = "Map of resource_group_name values across all container_registry_tokens, keyed the same as var.container_registry_tokens"
  value       = module.container_registry_tokens.container_registry_tokens_resource_group_name
}

output "container_registry_tokens_scope_map_id" {
  description = "Map of scope_map_id values across all container_registry_tokens, keyed the same as var.container_registry_tokens"
  value       = module.container_registry_tokens.container_registry_tokens_scope_map_id
}

# --- azurerm_container_registry_task_schedule_run_now ---
output "container_registry_task_schedule_run_nows_id" {
  description = "Map of id values across all container_registry_task_schedule_run_nows, keyed the same as var.container_registry_task_schedule_run_nows"
  value       = module.container_registry_task_schedule_run_nows.container_registry_task_schedule_run_nows_id
}

output "container_registry_task_schedule_run_nows_container_registry_task_id" {
  description = "Map of container_registry_task_id values across all container_registry_task_schedule_run_nows, keyed the same as var.container_registry_task_schedule_run_nows"
  value       = module.container_registry_task_schedule_run_nows.container_registry_task_schedule_run_nows_container_registry_task_id
}

# --- azurerm_container_registry_token_password ---
output "container_registry_token_passwords_id" {
  description = "Map of id values across all container_registry_token_passwords, keyed the same as var.container_registry_token_passwords"
  value       = module.container_registry_token_passwords.container_registry_token_passwords_id
}

output "container_registry_token_passwords_container_registry_token_id" {
  description = "Map of container_registry_token_id values across all container_registry_token_passwords, keyed the same as var.container_registry_token_passwords"
  value       = module.container_registry_token_passwords.container_registry_token_passwords_container_registry_token_id
}

output "container_registry_token_passwords_password1" {
  description = "Map of password1 values across all container_registry_token_passwords, keyed the same as var.container_registry_token_passwords"
  value       = module.container_registry_token_passwords.container_registry_token_passwords_password1
  sensitive   = true
}

output "container_registry_token_passwords_password2" {
  description = "Map of password2 values across all container_registry_token_passwords, keyed the same as var.container_registry_token_passwords"
  value       = module.container_registry_token_passwords.container_registry_token_passwords_password2
  sensitive   = true
}


