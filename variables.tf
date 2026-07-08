variable "container_registries" {
  description = <<EOT
Map of container_registries, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku
Optional:
    - admin_enabled
    - anonymous_pull_enabled
    - data_endpoint_enabled
    - export_policy_enabled
    - network_rule_bypass_option
    - public_network_access_enabled
    - quarantine_policy_enabled
    - retention_policy_in_days
    - tags
    - trust_policy_enabled
    - zone_redundancy_enabled
    - encryption (block)
    - georeplications (block)
    - identity (block)
    - network_rule_set (block)
Nested container_connected_registries (azurerm_container_connected_registry):
    Required:
        - name
        - sync_token_id
    Optional:
        - audit_log_enabled
        - client_token_ids
        - log_level
        - mode
        - parent_registry_id
        - sync_message_ttl
        - sync_schedule
        - sync_window
        - notification (block)
Nested container_registry_agent_pools (azurerm_container_registry_agent_pool):
    Required:
        - location
        - name
        - resource_group_name
    Optional:
        - instance_count
        - tags
        - tier
        - virtual_network_subnet_id
Nested container_registry_cache_rules (azurerm_container_registry_cache_rule):
    Required:
        - name
        - source_repo
        - target_repo
    Optional:
        - credential_set_id
Nested container_registry_credential_sets (azurerm_container_registry_credential_set):
    Required:
        - login_server
        - name
        - authentication_credentials (block)
        - identity (block)
Nested container_registry_scope_maps (azurerm_container_registry_scope_map):
    Required:
        - actions
        - name
        - resource_group_name
    Optional:
        - description
Nested container_registry_tasks (azurerm_container_registry_task):
    Required:
        - name
    Optional:
        - agent_pool_name
        - enabled
        - is_system_task
        - log_template
        - tags
        - timeout_in_seconds
        - agent_setting (block)
        - base_image_trigger (block)
        - docker_step (block)
        - encoded_step (block)
        - file_step (block)
        - identity (block)
        - platform (block)
        - registry_credential (block)
        - source_trigger (block)
        - timer_trigger (block)
    Nested container_registry_task_schedule_run_nows (azurerm_container_registry_task_schedule_run_now):
Nested container_registry_tokens (azurerm_container_registry_token):
    Required:
        - name
        - resource_group_name
        - scope_map_id
    Optional:
        - enabled
    Nested container_registry_token_passwords (azurerm_container_registry_token_password):
        Required:
            - password1 (block)
        Optional:
            - password2 (block)
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    sku                           = string
    admin_enabled                 = optional(bool) # Default: false
    anonymous_pull_enabled        = optional(bool)
    data_endpoint_enabled         = optional(bool)
    export_policy_enabled         = optional(bool)   # Default: true
    network_rule_bypass_option    = optional(string) # Default: "AzureServices"
    public_network_access_enabled = optional(bool)   # Default: true
    quarantine_policy_enabled     = optional(bool)
    retention_policy_in_days      = optional(number)
    tags                          = optional(map(string))
    trust_policy_enabled          = optional(bool) # Default: false
    zone_redundancy_enabled       = optional(bool) # Default: false
    encryption = optional(object({
      identity_client_id = string
      key_vault_key_id   = string
    }))
    georeplications = optional(object({
      location                  = string
      regional_endpoint_enabled = optional(bool)
      tags                      = optional(map(string))
      zone_redundancy_enabled   = optional(bool) # Default: false
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    network_rule_set = optional(object({
      default_action = optional(string) # Default: "Allow"
      ip_rule = optional(object({
        action   = string
        ip_range = string
      }))
    }))
    container_connected_registries = optional(map(object({
      name               = string
      sync_token_id      = string
      audit_log_enabled  = optional(bool) # Default: false
      client_token_ids   = optional(list(string))
      log_level          = optional(string) # Default: "None"
      mode               = optional(string) # Default: "ReadWrite"
      parent_registry_id = optional(string)
      sync_message_ttl   = optional(string) # Default: "P1D"
      sync_schedule      = optional(string) # Default: "* * * * *"
      sync_window        = optional(string)
      notification = optional(object({
        action = string
        digest = optional(string)
        name   = string
        tag    = optional(string)
      }))
    })))
    container_registry_agent_pools = optional(map(object({
      location                  = string
      name                      = string
      resource_group_name       = string
      instance_count            = optional(number) # Default: 1
      tags                      = optional(map(string))
      tier                      = optional(string) # Default: "S1"
      virtual_network_subnet_id = optional(string)
    })))
    container_registry_cache_rules = optional(map(object({
      name              = string
      source_repo       = string
      target_repo       = string
      credential_set_id = optional(string)
    })))
    container_registry_credential_sets = optional(map(object({
      login_server = string
      name         = string
      authentication_credentials = object({
        password_secret_id = string
        username_secret_id = string
      })
      identity = object({
        type = string
      })
    })))
    container_registry_scope_maps = optional(map(object({
      actions             = list(string)
      name                = string
      resource_group_name = string
      description         = optional(string)
    })))
    container_registry_tasks = optional(map(object({
      name               = string
      agent_pool_name    = optional(string)
      enabled            = optional(bool) # Default: true
      is_system_task     = optional(bool) # Default: false
      log_template       = optional(string)
      tags               = optional(map(string))
      timeout_in_seconds = optional(number) # Default: 3600
      agent_setting = optional(object({
        cpu = number
      }))
      base_image_trigger = optional(object({
        enabled                     = optional(bool) # Default: true
        name                        = string
        type                        = string
        update_trigger_endpoint     = optional(string)
        update_trigger_payload_type = optional(string)
      }))
      docker_step = optional(object({
        arguments            = optional(map(string))
        cache_enabled        = optional(bool) # Default: true
        context_access_token = string
        context_path         = string
        dockerfile_path      = string
        image_names          = optional(list(string))
        push_enabled         = optional(bool) # Default: true
        secret_arguments     = optional(map(string))
        target               = optional(string)
      }))
      encoded_step = optional(object({
        context_access_token = optional(string)
        context_path         = optional(string)
        secret_values        = optional(map(string))
        task_content         = string
        value_content        = optional(string)
        values               = optional(map(string))
      }))
      file_step = optional(object({
        context_access_token = optional(string)
        context_path         = optional(string)
        secret_values        = optional(map(string))
        task_file_path       = string
        value_file_path      = optional(string)
        values               = optional(map(string))
      }))
      identity = optional(object({
        identity_ids = optional(set(string))
        type         = string
      }))
      platform = optional(object({
        architecture = optional(string)
        os           = string
        variant      = optional(string)
      }))
      registry_credential = optional(object({
        custom = optional(object({
          identity     = optional(string)
          login_server = string
          password     = optional(string)
          username     = optional(string)
        }))
        source = optional(object({
          login_mode = string
        }))
      }))
      source_trigger = optional(object({
        authentication = optional(object({
          expire_in_seconds = optional(number)
          refresh_token     = optional(string)
          scope             = optional(string)
          token             = string
          token_type        = string
        }))
        branch         = optional(string)
        enabled        = optional(bool) # Default: true
        events         = list(string)
        name           = string
        repository_url = string
        source_type    = string
      }))
      timer_trigger = optional(object({
        enabled  = optional(bool) # Default: true
        name     = string
        schedule = string
      }))
      container_registry_task_schedule_run_nows = optional(map(object({

      })))
    })))
    container_registry_tokens = optional(map(object({
      name                = string
      resource_group_name = string
      scope_map_id        = string
      enabled             = optional(bool) # Default: true
      container_registry_token_passwords = optional(map(object({
        password1 = object({
          expiry = optional(string)
        })
        password2 = optional(object({
          expiry = optional(string)
        }))
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.container_registries) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.container_registries : [for kk in keys(coalesce(v0.container_connected_registries, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_registries : [for kk in keys(coalesce(v0.container_registry_agent_pools, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_registries : [for kk in keys(coalesce(v0.container_registry_cache_rules, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_registries : [for kk in keys(coalesce(v0.container_registry_credential_sets, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_registries : [for kk in keys(coalesce(v0.container_registry_scope_maps, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_registries : [for kk in keys(coalesce(v0.container_registry_tasks, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_registries : [for k1, v1 in coalesce(v0.container_registry_tasks, {}) : [for kk in keys(coalesce(v1.container_registry_task_schedule_run_nows, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.container_registries : [for kk in keys(coalesce(v0.container_registry_tokens, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_registries : [for k1, v1 in coalesce(v0.container_registry_tokens, {}) : [for kk in keys(coalesce(v1.container_registry_token_passwords, {})) : !strcontains(kk, "/")]]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
