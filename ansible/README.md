## Ygdrassil Project Deployment

1. Install dependency Ansible roles:
```
 ansible-galaxy role install geerlingguy.containerd
 ansible-galaxy role install geerlingguy.kubernetes
```

2. Deploy credential using:
```
ansible-playbook -i inventories/ygdrassil bootstrap-ygdrassil.yml --tags master-user -u root
```

3. Bootstrap full cluster:
```
ansible-playbook -i inventories/ygdrassil bootstrap-ygdrassil.yml
```

4. Bootstap only prerrequisites and accessories (fail2ban, and so):
```
ansible-playbook -i inventories/ygdrassil bootstrap-ygdrassil.yml--tags bootstrap
```

5. DEPRECTAED Deploy Traefik Ingress
```
Use Helm to deploy Traefik
```

6. Enjoy deploying stuff
```
ansible-playbook -i inventory/minikube deploy-apps.yml --tags your-app # For local testing
ansible-playbook -i inventory/ygdrassil deploy-apps.yml --tags your-app # For production
```

7. Minikube

You can access all deployments in TST Minikube using IP of Minikube node and exposed port:

```
Minikube IP:
$ minikube ssh
$ ip a show

Minikube Port:
$ kubectl describe service your-cool-service
NAME                TYPE           CLUSTER-IP      EXTERNAL-IP      PORT(S)                   AGE
your-cool-service   LoadBalancer   10.101.83.190   <pending>        8080:30354/TCP            24m

```

## TODO:

- [x] Create vars files per environment (test & prod).
- [x] Modify tasks to use them in roles depending on the inventory used (minikube or ygdrassil).
- [x] Ensure Test environment deployment is possible.
