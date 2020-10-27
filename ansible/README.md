## Ygdrassil Project Deployment

1. Deploy credential using:
```
ansible-playbook bootstrap-ygdrassil.yml --tags master-user -u root
```

2. Bootstrap full cluster:
```
ansible-playbook bootstrap-ygdrassil.yml
```

3. Bootstap only prerrequisites and accessories (fail2ban, and so):
```
ansible-playbook bootstrap-ygdrassil.yml--tags bootstrap
```

4. Deploy Traefik Ingress
```
ansible-playbook deploy-apps.yml --tags traefik
```

5. Enjoy deploying stuff
```
ansible-playbook -i inventory/minikube deploy-apps.yml --tags your-app # For local testing
ansible-playbook -i inventory/ygdrassil deploy-apps.yml --tags your-app # For production
```

## TODO:

- [ ] Create vars files per environment (test & prod).
- [ ] Modify tasks to use them in roles depending on the inventory used (minikube or ygdrassil).
- [ ] Ensure Test environment deployment is possible.
