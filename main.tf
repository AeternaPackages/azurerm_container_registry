locals {
  container_registries = { for k1, v1 in var.container_registries : k1 => { admin_enabled = v1.admin_enabled, anonymous_pull_enabled = v1.anonymous_pull_enabled, azuread_authentication_as_arm_policy_enabled = v1.azuread_authentication_as_arm_policy_enabled, data_endpoint_enabled = v1.data_endpoint_enabled, encryption = v1.encryption, export_policy_enabled = v1.export_policy_enabled, georeplications = v1.georeplications, identity = v1.identity, location = v1.location, name = v1.name, network_rule_bypass_for_tasks_enabled = v1.network_rule_bypass_for_tasks_enabled, network_rule_bypass_option = v1.network_rule_bypass_option, network_rule_set = v1.network_rule_set, public_network_access_enabled = v1.public_network_access_enabled, quarantine_policy_enabled = v1.quarantine_policy_enabled, resource_group_name = v1.resource_group_name, retention_policy_in_days = v1.retention_policy_in_days, role_assignment_mode = v1.role_assignment_mode, sku = v1.sku, tags = v1.tags, zone_redundancy_enabled = v1.zone_redundancy_enabled } }

  container_connected_registries = merge([
    for k1, v1 in var.container_registries : {
      for k2, v2 in coalesce(v1.container_connected_registries, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_registry_id = module.container_registries.container_registries_id["${k1}"]
      })
    }
  ]...)

  container_registry_agent_pools = merge([
    for k1, v1 in var.container_registries : {
      for k2, v2 in coalesce(v1.container_registry_agent_pools, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_registry_name = module.container_registries.container_registries_name["${k1}"]
      })
    }
  ]...)

  container_registry_cache_rules = merge([
    for k1, v1 in var.container_registries : {
      for k2, v2 in coalesce(v1.container_registry_cache_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_registry_id = module.container_registries.container_registries_id["${k1}"]
      })
    }
  ]...)

  container_registry_credential_sets = merge([
    for k1, v1 in var.container_registries : {
      for k2, v2 in coalesce(v1.container_registry_credential_sets, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_registry_id = module.container_registries.container_registries_id["${k1}"]
      })
    }
  ]...)

  container_registry_scope_maps = merge([
    for k1, v1 in var.container_registries : {
      for k2, v2 in coalesce(v1.container_registry_scope_maps, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_registry_name = module.container_registries.container_registries_name["${k1}"]
      })
    }
  ]...)

  container_registry_tasks = merge([
    for k1, v1 in var.container_registries : {
      for k2, v2 in coalesce(v1.container_registry_tasks, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_registry_id = module.container_registries.container_registries_id["${k1}"]
      })
    }
  ]...)

  container_registry_tokens = merge([
    for k1, v1 in var.container_registries : {
      for k2, v2 in coalesce(v1.container_registry_tokens, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_registry_name = module.container_registries.container_registries_name["${k1}"]
      })
    }
  ]...)

  container_registry_task_schedule_run_nows = merge([
    for k1, v1 in var.container_registries : merge([
      for k2, v2 in coalesce(v1.container_registry_tasks, {}) : {
        for k3, v3 in coalesce(v2.container_registry_task_schedule_run_nows, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          container_registry_task_id = module.container_registry_tasks.container_registry_tasks_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  container_registry_token_passwords = merge([
    for k1, v1 in var.container_registries : merge([
      for k2, v2 in coalesce(v1.container_registry_tokens, {}) : {
        for k3, v3 in coalesce(v2.container_registry_token_passwords, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          container_registry_token_id = module.container_registry_tokens.container_registry_tokens_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)
}

module "container_registries" {
  source               = "git::https://github.com/AeternaModules/azurerm_container_registry.git?ref=v5.0.1"
  container_registries = local.container_registries
}

module "container_connected_registries" {
  source                         = "git::https://github.com/AeternaModules/azurerm_container_connected_registry.git?ref=v5.0.1"
  container_connected_registries = local.container_connected_registries
  depends_on                     = [module.container_registries]
}

module "container_registry_agent_pools" {
  source                         = "git::https://github.com/AeternaModules/azurerm_container_registry_agent_pool.git?ref=v5.0.1"
  container_registry_agent_pools = local.container_registry_agent_pools
  depends_on                     = [module.container_registries]
}

module "container_registry_cache_rules" {
  source                         = "git::https://github.com/AeternaModules/azurerm_container_registry_cache_rule.git?ref=v5.0.1"
  container_registry_cache_rules = local.container_registry_cache_rules
  depends_on                     = [module.container_registries]
}

module "container_registry_credential_sets" {
  source                             = "git::https://github.com/AeternaModules/azurerm_container_registry_credential_set.git?ref=v5.0.1"
  container_registry_credential_sets = local.container_registry_credential_sets
  depends_on                         = [module.container_registries]
}

module "container_registry_scope_maps" {
  source                        = "git::https://github.com/AeternaModules/azurerm_container_registry_scope_map.git?ref=v5.0.1"
  container_registry_scope_maps = local.container_registry_scope_maps
  depends_on                    = [module.container_registries]
}

module "container_registry_tasks" {
  source                   = "git::https://github.com/AeternaModules/azurerm_container_registry_task.git?ref=v5.0.1"
  container_registry_tasks = local.container_registry_tasks
  depends_on               = [module.container_registries]
}

module "container_registry_tokens" {
  source                    = "git::https://github.com/AeternaModules/azurerm_container_registry_token.git?ref=v5.0.1"
  container_registry_tokens = local.container_registry_tokens
  depends_on                = [module.container_registries]
}

module "container_registry_task_schedule_run_nows" {
  source                                    = "git::https://github.com/AeternaModules/azurerm_container_registry_task_schedule_run_now.git?ref=v5.0.1"
  container_registry_task_schedule_run_nows = local.container_registry_task_schedule_run_nows
  depends_on                                = [module.container_registry_tasks]
}

module "container_registry_token_passwords" {
  source                             = "git::https://github.com/AeternaModules/azurerm_container_registry_token_password.git?ref=v5.0.1"
  container_registry_token_passwords = local.container_registry_token_passwords
  depends_on                         = [module.container_registry_tokens]
}

