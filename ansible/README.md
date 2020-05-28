## Ygdrassil Project Deployment

1. Deploy credential using:
```
ansible-playbook bootstrap-ygdrassil.yml --tags master-user -u root
```

2. Bootstrap full cluster:
```
ansible-playbook bootstrap-ygdrassil.yml
```

3. Bootstap only prerrequisites and accessories (certbot, haproxy, fail2ban, and so):
```
ansible-playbook bootstrap-ygdrassil.yml--tags bootstrap
```

4. Deploy Nginx Ingress
```
ansible-playbook deploy-apps.yml --tags nginx
```

5. Enjoy deploying stuff
