# demo-terraform-vault
Repository used for the talk 'Secure deployments with HashiCorp Vault'

```bash
# Enable azure secrets engine
vault secrets enable azure

# Write config
vault write azure/config \
        subscription_id=<GUID>  \
        client_id=<GUID> \
        client_secret=<GUID> \
        tenant_id=<GUID>

vault write azure/roles/vses ttl=5m azure_roles=-<<EOF
    [
        {
            "role_name": "Contributor",
            "scope":  "/subscriptions/<GUID>"
        }
    ]
EOF
```