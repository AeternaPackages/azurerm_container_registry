# --- azurerm_container_registry ---
output "container_registries" {
  description = "All container_registry resources"
  value       = module.container_registries.container_registries
  sensitive   = true
}
output "container_registries_admin_enabled" {
  description = "List of admin_enabled values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.admin_enabled]
}
output "container_registries_admin_password" {
  description = "List of admin_password values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.admin_password]
  sensitive   = true
}
output "container_registries_admin_username" {
  description = "List of admin_username values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.admin_username]
}
output "container_registries_anonymous_pull_enabled" {
  description = "List of anonymous_pull_enabled values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.anonymous_pull_enabled]
}
output "container_registries_data_endpoint_enabled" {
  description = "List of data_endpoint_enabled values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.data_endpoint_enabled]
}
output "container_registries_data_endpoint_host_names" {
  description = "List of data_endpoint_host_names values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.data_endpoint_host_names]
}
output "container_registries_encryption" {
  description = "List of encryption values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.encryption]
}
output "container_registries_export_policy_enabled" {
  description = "List of export_policy_enabled values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.export_policy_enabled]
}
output "container_registries_georeplications" {
  description = "List of georeplications values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.georeplications]
}
output "container_registries_identity" {
  description = "List of identity values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.identity]
}
output "container_registries_location" {
  description = "List of location values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.location]
}
output "container_registries_login_server" {
  description = "List of login_server values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.login_server]
}
output "container_registries_name" {
  description = "List of name values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.name]
}
output "container_registries_network_rule_bypass_option" {
  description = "List of network_rule_bypass_option values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.network_rule_bypass_option]
}
output "container_registries_network_rule_set" {
  description = "List of network_rule_set values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.network_rule_set]
}
output "container_registries_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.public_network_access_enabled]
}
output "container_registries_quarantine_policy_enabled" {
  description = "List of quarantine_policy_enabled values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.quarantine_policy_enabled]
}
output "container_registries_resource_group_name" {
  description = "List of resource_group_name values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.resource_group_name]
}
output "container_registries_retention_policy_in_days" {
  description = "List of retention_policy_in_days values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.retention_policy_in_days]
}
output "container_registries_sku" {
  description = "List of sku values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.sku]
}
output "container_registries_tags" {
  description = "List of tags values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.tags]
}
output "container_registries_trust_policy_enabled" {
  description = "List of trust_policy_enabled values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.trust_policy_enabled]
}
output "container_registries_zone_redundancy_enabled" {
  description = "List of zone_redundancy_enabled values across all container_registries"
  value       = [for k, v in module.container_registries.container_registries : v.zone_redundancy_enabled]
}


# --- azurerm_container_connected_registry ---
output "container_connected_registries" {
  description = "All container_connected_registry resources"
  value       = module.container_connected_registries.container_connected_registries
}
output "container_connected_registries_audit_log_enabled" {
  description = "List of audit_log_enabled values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.audit_log_enabled]
}
output "container_connected_registries_client_token_ids" {
  description = "List of client_token_ids values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.client_token_ids]
}
output "container_connected_registries_container_registry_id" {
  description = "List of container_registry_id values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.container_registry_id]
}
output "container_connected_registries_log_level" {
  description = "List of log_level values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.log_level]
}
output "container_connected_registries_mode" {
  description = "List of mode values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.mode]
}
output "container_connected_registries_name" {
  description = "List of name values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.name]
}
output "container_connected_registries_notification" {
  description = "List of notification values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.notification]
}
output "container_connected_registries_parent_registry_id" {
  description = "List of parent_registry_id values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.parent_registry_id]
}
output "container_connected_registries_sync_message_ttl" {
  description = "List of sync_message_ttl values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.sync_message_ttl]
}
output "container_connected_registries_sync_schedule" {
  description = "List of sync_schedule values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.sync_schedule]
}
output "container_connected_registries_sync_token_id" {
  description = "List of sync_token_id values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.sync_token_id]
}
output "container_connected_registries_sync_window" {
  description = "List of sync_window values across all container_connected_registries"
  value       = [for k, v in module.container_connected_registries.container_connected_registries : v.sync_window]
}


# --- azurerm_container_registry_agent_pool ---
output "container_registry_agent_pools" {
  description = "All container_registry_agent_pool resources"
  value       = module.container_registry_agent_pools.container_registry_agent_pools
}
output "container_registry_agent_pools_container_registry_name" {
  description = "List of container_registry_name values across all container_registry_agent_pools"
  value       = [for k, v in module.container_registry_agent_pools.container_registry_agent_pools : v.container_registry_name]
}
output "container_registry_agent_pools_instance_count" {
  description = "List of instance_count values across all container_registry_agent_pools"
  value       = [for k, v in module.container_registry_agent_pools.container_registry_agent_pools : v.instance_count]
}
output "container_registry_agent_pools_location" {
  description = "List of location values across all container_registry_agent_pools"
  value       = [for k, v in module.container_registry_agent_pools.container_registry_agent_pools : v.location]
}
output "container_registry_agent_pools_name" {
  description = "List of name values across all container_registry_agent_pools"
  value       = [for k, v in module.container_registry_agent_pools.container_registry_agent_pools : v.name]
}
output "container_registry_agent_pools_resource_group_name" {
  description = "List of resource_group_name values across all container_registry_agent_pools"
  value       = [for k, v in module.container_registry_agent_pools.container_registry_agent_pools : v.resource_group_name]
}
output "container_registry_agent_pools_tags" {
  description = "List of tags values across all container_registry_agent_pools"
  value       = [for k, v in module.container_registry_agent_pools.container_registry_agent_pools : v.tags]
}
output "container_registry_agent_pools_tier" {
  description = "List of tier values across all container_registry_agent_pools"
  value       = [for k, v in module.container_registry_agent_pools.container_registry_agent_pools : v.tier]
}
output "container_registry_agent_pools_virtual_network_subnet_id" {
  description = "List of virtual_network_subnet_id values across all container_registry_agent_pools"
  value       = [for k, v in module.container_registry_agent_pools.container_registry_agent_pools : v.virtual_network_subnet_id]
}


# --- azurerm_container_registry_cache_rule ---
output "container_registry_cache_rules" {
  description = "All container_registry_cache_rule resources"
  value       = module.container_registry_cache_rules.container_registry_cache_rules
}
output "container_registry_cache_rules_container_registry_id" {
  description = "List of container_registry_id values across all container_registry_cache_rules"
  value       = [for k, v in module.container_registry_cache_rules.container_registry_cache_rules : v.container_registry_id]
}
output "container_registry_cache_rules_credential_set_id" {
  description = "List of credential_set_id values across all container_registry_cache_rules"
  value       = [for k, v in module.container_registry_cache_rules.container_registry_cache_rules : v.credential_set_id]
}
output "container_registry_cache_rules_name" {
  description = "List of name values across all container_registry_cache_rules"
  value       = [for k, v in module.container_registry_cache_rules.container_registry_cache_rules : v.name]
}
output "container_registry_cache_rules_source_repo" {
  description = "List of source_repo values across all container_registry_cache_rules"
  value       = [for k, v in module.container_registry_cache_rules.container_registry_cache_rules : v.source_repo]
}
output "container_registry_cache_rules_target_repo" {
  description = "List of target_repo values across all container_registry_cache_rules"
  value       = [for k, v in module.container_registry_cache_rules.container_registry_cache_rules : v.target_repo]
}


# --- azurerm_container_registry_credential_set ---
output "container_registry_credential_sets" {
  description = "All container_registry_credential_set resources"
  value       = module.container_registry_credential_sets.container_registry_credential_sets
}
output "container_registry_credential_sets_authentication_credentials" {
  description = "List of authentication_credentials values across all container_registry_credential_sets"
  value       = [for k, v in module.container_registry_credential_sets.container_registry_credential_sets : v.authentication_credentials]
}
output "container_registry_credential_sets_container_registry_id" {
  description = "List of container_registry_id values across all container_registry_credential_sets"
  value       = [for k, v in module.container_registry_credential_sets.container_registry_credential_sets : v.container_registry_id]
}
output "container_registry_credential_sets_identity" {
  description = "List of identity values across all container_registry_credential_sets"
  value       = [for k, v in module.container_registry_credential_sets.container_registry_credential_sets : v.identity]
}
output "container_registry_credential_sets_login_server" {
  description = "List of login_server values across all container_registry_credential_sets"
  value       = [for k, v in module.container_registry_credential_sets.container_registry_credential_sets : v.login_server]
}
output "container_registry_credential_sets_name" {
  description = "List of name values across all container_registry_credential_sets"
  value       = [for k, v in module.container_registry_credential_sets.container_registry_credential_sets : v.name]
}


# --- azurerm_container_registry_scope_map ---
output "container_registry_scope_maps" {
  description = "All container_registry_scope_map resources"
  value       = module.container_registry_scope_maps.container_registry_scope_maps
}
output "container_registry_scope_maps_actions" {
  description = "List of actions values across all container_registry_scope_maps"
  value       = [for k, v in module.container_registry_scope_maps.container_registry_scope_maps : v.actions]
}
output "container_registry_scope_maps_container_registry_name" {
  description = "List of container_registry_name values across all container_registry_scope_maps"
  value       = [for k, v in module.container_registry_scope_maps.container_registry_scope_maps : v.container_registry_name]
}
output "container_registry_scope_maps_description" {
  description = "List of description values across all container_registry_scope_maps"
  value       = [for k, v in module.container_registry_scope_maps.container_registry_scope_maps : v.description]
}
output "container_registry_scope_maps_name" {
  description = "List of name values across all container_registry_scope_maps"
  value       = [for k, v in module.container_registry_scope_maps.container_registry_scope_maps : v.name]
}
output "container_registry_scope_maps_resource_group_name" {
  description = "List of resource_group_name values across all container_registry_scope_maps"
  value       = [for k, v in module.container_registry_scope_maps.container_registry_scope_maps : v.resource_group_name]
}


# --- azurerm_container_registry_task ---
output "container_registry_tasks" {
  description = "All container_registry_task resources"
  value       = module.container_registry_tasks.container_registry_tasks
  sensitive   = true
}
output "container_registry_tasks_agent_pool_name" {
  description = "List of agent_pool_name values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.agent_pool_name]
}
output "container_registry_tasks_agent_setting" {
  description = "List of agent_setting values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.agent_setting]
}
output "container_registry_tasks_base_image_trigger" {
  description = "List of base_image_trigger values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.base_image_trigger]
  sensitive   = true
}
output "container_registry_tasks_container_registry_id" {
  description = "List of container_registry_id values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.container_registry_id]
}
output "container_registry_tasks_docker_step" {
  description = "List of docker_step values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.docker_step]
  sensitive   = true
}
output "container_registry_tasks_enabled" {
  description = "List of enabled values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.enabled]
}
output "container_registry_tasks_encoded_step" {
  description = "List of encoded_step values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.encoded_step]
  sensitive   = true
}
output "container_registry_tasks_file_step" {
  description = "List of file_step values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.file_step]
  sensitive   = true
}
output "container_registry_tasks_identity" {
  description = "List of identity values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.identity]
}
output "container_registry_tasks_is_system_task" {
  description = "List of is_system_task values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.is_system_task]
}
output "container_registry_tasks_log_template" {
  description = "List of log_template values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.log_template]
}
output "container_registry_tasks_name" {
  description = "List of name values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.name]
}
output "container_registry_tasks_platform" {
  description = "List of platform values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.platform]
}
output "container_registry_tasks_registry_credential" {
  description = "List of registry_credential values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.registry_credential]
  sensitive   = true
}
output "container_registry_tasks_source_trigger" {
  description = "List of source_trigger values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.source_trigger]
  sensitive   = true
}
output "container_registry_tasks_tags" {
  description = "List of tags values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.tags]
}
output "container_registry_tasks_timeout_in_seconds" {
  description = "List of timeout_in_seconds values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.timeout_in_seconds]
}
output "container_registry_tasks_timer_trigger" {
  description = "List of timer_trigger values across all container_registry_tasks"
  value       = [for k, v in module.container_registry_tasks.container_registry_tasks : v.timer_trigger]
}


# --- azurerm_container_registry_token ---
output "container_registry_tokens" {
  description = "All container_registry_token resources"
  value       = module.container_registry_tokens.container_registry_tokens
}
output "container_registry_tokens_container_registry_name" {
  description = "List of container_registry_name values across all container_registry_tokens"
  value       = [for k, v in module.container_registry_tokens.container_registry_tokens : v.container_registry_name]
}
output "container_registry_tokens_enabled" {
  description = "List of enabled values across all container_registry_tokens"
  value       = [for k, v in module.container_registry_tokens.container_registry_tokens : v.enabled]
}
output "container_registry_tokens_name" {
  description = "List of name values across all container_registry_tokens"
  value       = [for k, v in module.container_registry_tokens.container_registry_tokens : v.name]
}
output "container_registry_tokens_resource_group_name" {
  description = "List of resource_group_name values across all container_registry_tokens"
  value       = [for k, v in module.container_registry_tokens.container_registry_tokens : v.resource_group_name]
}
output "container_registry_tokens_scope_map_id" {
  description = "List of scope_map_id values across all container_registry_tokens"
  value       = [for k, v in module.container_registry_tokens.container_registry_tokens : v.scope_map_id]
}


# --- azurerm_container_registry_task_schedule_run_now ---
output "container_registry_task_schedule_run_nows" {
  description = "All container_registry_task_schedule_run_now resources"
  value       = module.container_registry_task_schedule_run_nows.container_registry_task_schedule_run_nows
}
output "container_registry_task_schedule_run_nows_container_registry_task_id" {
  description = "List of container_registry_task_id values across all container_registry_task_schedule_run_nows"
  value       = [for k, v in module.container_registry_task_schedule_run_nows.container_registry_task_schedule_run_nows : v.container_registry_task_id]
}


# --- azurerm_container_registry_token_password ---
output "container_registry_token_passwords" {
  description = "All container_registry_token_password resources"
  value       = module.container_registry_token_passwords.container_registry_token_passwords
  sensitive   = true
}
output "container_registry_token_passwords_container_registry_token_id" {
  description = "List of container_registry_token_id values across all container_registry_token_passwords"
  value       = [for k, v in module.container_registry_token_passwords.container_registry_token_passwords : v.container_registry_token_id]
}
output "container_registry_token_passwords_password1" {
  description = "List of password1 values across all container_registry_token_passwords"
  value       = [for k, v in module.container_registry_token_passwords.container_registry_token_passwords : v.password1]
  sensitive   = true
}
output "container_registry_token_passwords_password2" {
  description = "List of password2 values across all container_registry_token_passwords"
  value       = [for k, v in module.container_registry_token_passwords.container_registry_token_passwords : v.password2]
  sensitive   = true
}



