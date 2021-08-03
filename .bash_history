clear
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update ; clear
sudo apt-get install -y docker-ce
sudo service docker start ; clear
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update ; clear
sudo apt-get install -y kubelet kubeadm kubectl
sudo kubeadm init --ignore-preflight-errors=all
sudo mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
kubectl get nodes
kubectl get all --all-namespaces
kubectl get nodes
kubectl get all --all-namespaces
exit
cd ~/.ssh/
ls
ls -ltr
cat authorized_keys 
exit
kubectl get nodes
kubectl version
exit
kubectl run pod1 --image nginx
kubectl get pods
kubectl get pods -o wide
kubectl run pod2 --image nginx
kubectl get pods -o wide
kubectl describe pod pod1
kubectl get pods
kubectl run pod3 --image alpine
kubectl get pods
kubectl delete pod pod1
kubectl delete pod pod2
kubectl get pods
kubectl delete pod pod3
clear
kubectl delete pod pod3
kubectl get pods
exit
clear
kubectl get pods
kubectl run pod --image=nginx dry-run=client -o yaml
kubectl get resources
kubectl api-versions
kubectl api-resources
kubectl get po
kubectl run pod --image=nginx 
kubectl get pods
kubectl delete pod pod
clear
kubectl explain pod
kubectl explain pod.metadata
kubectl explain pod.version
kubectl explain pod.Version
kubectl explain pod
kubectl explain pod.apiVersion
kubectl api-resources
kubectl explain pod.spec
vi myFirstPod.yml
cat myFirstPod.yml 
clear
kubectl create pod myFirstPod.yml 
kubectl create pod -f myFirstPod.yml 
kubectl create -f myFirstPod.yml 
kubectl run pod --image=nginx --dry-run=client > test.yaml
cat test.yaml 
kubectl run --image=nginx --dry-run=client -o yaml > test.yaml
kubectl run nginx --image=nginx --dry-run=client -o yaml > test.yaml
cat test.yaml 
cat myFirstPod.yml 
vi myFirstPod.yml 
cat myFirstPod.yml 
kubectl create -f myFirstPod.yml 
vi myFirstPod.yml 
clear
cat test.yaml 
cat myFirstPod.yml 
kubectl create -f myFirstPod.yml 
vi myFirstPod.yml 
clear
kubectl create -f myFirstPod.yml 
kubectl get pods
kubectl get pods -o wide
curl 10.44.0.1
curl 10.44.0.1:8080
kubectl get pod my-first-pod -o json
kubectl get pod my-first-prod -o json
docker ps
kubectl get pods --show-labels
kubectl run pod secondnginx --image=nginx 
kubectl get pods --show-labels
kubectl logs pod pod
kubectl get pods --show-labels
kubectl delete pod pod
kubectl get pods --show-labels
kubectl run mytestpod --image=ubuntu 
kubectl get pods --show-labels
kubectl get pods -l env=dev
kubectl label pods mytestpod env=dev
kubectl get pods -l env=dev
kubectl get pods --show-labels
kubectl exec --it myubuntupod --image=ubuntu -- bash
kubectl exec -it myubuntupod --image=ubuntu -- bash
kubectl run -it myubuntupod --image=ubuntu -- bash
kubectl get pods -o wide
kubectl logs -f my-first-pod -c mytomcat
kubectl logs -f myFirstPod -c mytomcat
kubectl logs -f my-first-prod -c mytomcat
kubectl logs my-first-prod -c mynginx
kubectl exec my-first-prod -c mytomcat  -- /bin/bash
kubectl exec my-first-prod -c mytomcat  -- ls /h
kubectl exec my-first-prod -c mytomcat  -- ls /l
kubectl exec -it my-first-prod -c mytomcat -- /bin/bash
clear
kubectl get pods -o wide
kubectl pod my-first-prod -l app=db
clear
kubectl get pods
kubectl delete pod node1staticpod-node1
kubectl get pods
kubectl delete pod --all
kubectl get pods
kubectl exec -it node1staticpod-node1 -- bash
clear
kubectl get pods
kubectl run envpod --image=nginx --env DB_NAME=devdb.com
kubectl exec --it envpod -- bash
kubectl exec -it envpod -- bash
kubectl delete pod --all
clear
vi multipod.yml
clear
kubectl apply -f multipod.yml 
vi multipod.yml 
kubectl apply -f multipod.yml 
vi multipod.yml 
kubectl apply -f multipod.yml 
vi multipod.yml 
kubectl apply -f multipod.yml 
vi multipod.yml 
clear
kubectl apply -f multipod.yml 
vi multipod.yml 
kubectl apply -f multipod.yml 
vi multipod.yml 
kubectl apply -f multipod.yml 
vi multipod.yml 
kubectl run envpod --image=nginx --env DB_NAME=devdb.com --env DB_PORT=2020 --dry-run=client -o yaml
vi multipod.yml 
kubectl apply -f multipod.yml 
vi multipod.yml 
kubectl apply -f multipod.yml 
vi multipod.yml 
clear
kubectl run envpod --image=nginx --env DB_NAME=devdb.com --env DB_PORT=2020 --dry-run=client -o yaml
cat multipod.yml 
kubectl apply -f multipod.yml 
vi multipod.yml 
clear
kubectl apply -f multipod.yml 
vi multipod.yml 
cat multipod.yml 
kubectl run envpod --image=nginx --env DB_NAME=devdb.com --env DB_PORT=2020 --dry-run=client -o yaml
vi multipod.yml 
kubectl apply -f multipod.yml 
cat multipod.yml 
vi multipod.yml 
clear
kubectl apply -f multipod.yml 
vi multipod.yml 
clear
kubectl apply -f multipod.yml 
vi multipod.yml 
kubectl apply -f multipod.yml 
kubectl get pods - wide
kubectl get pods -0 wide
kubectl get pods -o wide
cat multipod.yml 
vi multipodwithoutenv.yml
kubectl apply -f multipodwithoutenv.yml 
vi multipodwithoutenv.yml
clear
kubectl apply -f multipodwithoutenv.yml 
vi multipodwithoutenv.yml
kubectl apply -f multipodwithoutenv.yml 
cat multipodwithoutenv.yml 
cat multipod.yml 
kubectl get pods
clear
ls
pwd
kubectl get pods
kubectl get pods -o wide
kubectl label pod withoutenv "testLabel=My test label"
kubectl label pod withoutenv "testLabel=Mytestlabel"
kubectl get pods -o wide
kubectl get pods -L 
kubectl get pods L  
kubectl L withoutend  
kubectl L withoutenv  
kubectl -L withoutenv  
kubectl get labels  withoutenv  
kubectl get pod  withoutenv --L  
kubectl get pod  withoutenv --show-labels
clear
kubectl get pods -n all
kubectl get pods -n --all
kubectl get pods -n kube-system
kubectl get pods -n kube-system -o wide
cd /var/lib/kubelet/
ls
cat config.yaml 
cd /etc/kubernetes/manifests/
clear
ls
more kube-apiserver.yaml 
kubectl get namespaces
kubectl get pods -n kube-system
kubectl get pods -n kube-public
kubectl create namespace nisha
kubectl run loveyounishapod --image nginx -n nisha
kubectl get pods -o wide
kubectl get pods -n nisha -o wide
kubectl delete -ns nisha
kubectl delete ns  nisha
kubectl get pods -n nisha -o wide
kubectl get pods -o wide
clear
kubectl get pods --all-namespaces
kubectl create namespace nisha
kubectl run loveyounishapod --image nginx -n nisha
kubectl get pods --all-namespaces
cd ..
cd /
ls
exit
clear
vi namespacepod.yml
clear
ls
kubectly apply -f namespacepod.yml 
kubectl apply -f namespacepod.yml 
vi namespacepod.yml
kubectl apply -f namespacepod.yml 
cat myFirstPod.yml 
vi namespacepod.yml
kubectl apply -f namespacepod.yml 
kubectl explain metadata
kubectl explain pod.metadata
vi namespacepod.yml
kubectl get ns nisha
kubectl explain pod.metadata
kubectl apply -f namespacepod.yml 
vi namespacepod.yml
clear
cat namespacepod.yml 
cat myFirstPod.yml 
kubectl explain pod.metadata
cat myFirstPod.yml 
cat namespacepod.yml 
vi namespacepod.yml
clear
kubectl apply -f namespacepod.yml 
kubectl get pods --all-namespaces
vi createnamespace.yaml
kubectl apply -f createnamespace.yaml 
clear
kubectl get pods --all-namespaces
kubectl get ns --all
kubectl get ns --all-namespace
kubectl get ns --all-namespaces
clear
kubectl api-resources
kubectl api-version
kubectl api-versions
clear
kubectl api-resources
kubectl explain Deployments
clear
exit
kubectl get pods --all
kubectl get pods 
clear
vi myrs.yml
cat myrs.yml 
kubectl apply -f myrs.yml 
kubectl get pods 
vi myrs.yml
clear
kubectl apply -f myrs.yml 
kubectl get pods 
kubectl get pods  -o wide
kubectl describe rs myrs
kubectl get pods  -o wide
vi myrs.yml
kubectl get pods  -o wide
kubectl delete rs myrs
kubectl get pods  -o wide
clear
kubectl get ns --all
kubectl get ns 
clear
vi myrs.yml
kubectl delete pods --all
kubectl get pods --all-namespaces
clear
kubectl get pods --all-namespaces
kubectl get pods --ns nisha
kubectl get pods --nisha
clear
kubectl get pods  -o wide
kubectl apply -f myrs.yml 
kubectl get pods  -o wide
kubectl describe rs myrs
kubectl get pods  -o wide
vi podmatchingrs.yml
kubectl get pods  -o wide
kubectl apply -f podmatchingrs.yml 
kubectl get pods  -o wide
kubectl logs podwithsamelabelasrs
kubectl get pods  -o wide
kubectl scale rs --help
kubectl scale myrs --replicas=5
kubectl scale rs myrs --replicas=5
kubectl get pods  -o wide
kubectl apply -f podmatchingrs.yml 
kubectl get pods  -o wide
kubectl get pod myrs-7wkcx --dry-run=client -o yaml
kubectl get pod myrs-7wkcx --dry-run=client-only -o yaml
kubectl get pod myrs-7wkcx  -o yaml
clear
kubectl get pods  -o wide
vi podmatchingrs.yml 
kubectl apply -f podmatchingrs.yml 
kubectl get pods  -o wide
kubectl get pod podwithsamelabelasrs  -o yaml
kubectl get pod myrs-7wkcx  -o yaml
kubectl get pod podwithsamelabelasrs  -o yaml
clear
kubectl get pod podwithsamelabelasrs  -o yaml
clear
kubectl get pod podwithsamelabelasrs  -o yaml
kubectl get pod myrs-7wkcx  -o yaml
kubectl get pod podwithsamelabelasrs  -o yaml
clear
kubectl get pod myrs-7wkcx  -o yaml
clear
kubectl get pods  -o wide
kubectl delete pods myrs-7wkcx,myrs-mz9r8,myrs-9wnpc 
kubectl delete pods myrs-7wkcx myrs-mz9r8 myrs-9wnpc 
kubectl get pods  -o wide
kubectl scale rs myrs --replicas=3
kubectl get pods  -o wide
kubectl describe pod myrs-hnhhk
clear
kubectl get rs
kubectl get rs -o wide
kubectl describe rs myrs
kubectl expose rs myrs --name myrs-service --type NodePort --port 2303 --target-port 3000 -0 yaml
kubectl expose rs myrs --name myrs-service --type NodePort --port 2303 --target-port 3000 -o yaml
vi myrs-service.yml
clear
kubectl expose rs myrs --name myrs-service --type NodePort --port 2303 --target-port 3000 
kubectl delete svc myrs-service
clear
kubectl expose rs myrs --name myrs-service --type NodePort --port 2303 --target-port 3000 
kubectl get svc
kubectl describe svc myrs-service
kubectl get pods  -o wide
kubectl scale rs myrs --replicas=5
kubectl describe svc myrs-service
kubectl get pods  -o wide
kubectl get svc
kubectl get svc myrs-service -o yaml
clear
kubectl get svc -o wide
curl 34.151.92.157:9999
curl 34.151.92.157:31709
kubectl scale rs myrs-service --replicas 2
kubectl scale rs myrs --replicas 2
kubectl scale rs myrs --replicas 4
kubectl get pods -o wide
kubectl scale rs myrs --replicas 3
kubectl get pods -o wide
kubectl scale rs myrs --replicas 3 
kubectl get pods -o wide
kubectl describe rs myrs
kubectl descrive svc mrs-service
kubectl describe svc mrs-service
kubectl describe svc myrs-service
clear
pwd
ls -ltr
clear
ls
kubectl get pods 
more myrs.yml 
kubectl label pods myrs-kmvqq app-
more myrs.yml 
kubectl get pods 
kubectl delete pod myrs-kmvqq 
kubectl get pods 
history
clear
kubectl get pods -o wide
more myrs.yml
curl 10.36.0.4:3000
kubectl explain Service
vi mysvc.yml
kubectl explain Service.spec
kubectl explain Service.spec.type
clear
vi mysvc.yml
kubectl get pods --show-labels
vi mysvc.yml
kubectl apply -f mysvc.yml
kubectl get svc
curl 10.97.9.87
ls -l
more myrs-service.yml
vi mysvc.yml
clear
kubectl apply -f mysvc.yml
kubectl get svc
curl 10.97.9.87
clear
curl 10.97.9.87:3000
ls
move mysvc.yml myclusterip-svc.yml
mv mysvc.yml myclusterip-svc.yml
kubectl delete svc mysvc
vi myclusterip-svc.yml 
clear
kubectl get svc
kubectl apply -f myclusterip-svc.yml 
kubectl get svc
curl 10.104.138.120:3000
cp myclusterip-svc.yml mynodeport-svc.yml
ls
vi mynodeport-svc.yml 
kubectl apply -f mynodeport-svc.yml 
vi mynodeport-svc.yml 
clear
kubectl apply -f mynodeport-svc.yml 
kubectl get svc
curl 10.102.33.191:32000
curl 10.102.33.191:3000
vi mynodeport-svc.yml 
kubectl apply -f mynodeport-svc.yml 
vi mynodeport-svc.yml 
kubectl explain service.type
kubectl explain Service.type
kubectl explain Service
kubectl explain Service.spec.type
kubectl explain Service.spec.type.LoadBalancer
clear
ls -ltr
cp myrs.yml mydeamonset.yml
vi mydeamonset.yml 
mb mydeamonset.yml mydaemonset.yml
my mydeamonset.yml mydaemonset.yml
mv mydeamonset.yml mydaemonset.yml
clear
kubectl apply -f mydaemonset.yml 
kubectl get ds
kubectl get pods -o wide
kubectl delete pod mydaemonset-kln22
kubectl get pods -o wide
kubectl get pods -n kube-system
kubectl get ds -n kube-system
vi mydeployment.yml
kubectl describe rs myrs
kubectl apply -f mydeployment.yml 
vi mydeployment.yml
clear
kubectl describe rs myrs
kubectl apply -f mydeployment.yml 
vi mydeployment.yml
kubectl apply -f mydeployment.yml 
kubectl get deployment
kubectl get rs
kubectl describe deployment mydeployment
ls
exit
kubectl get pods -o wide
kubectl explain Deployment
kubectl explain Deployment.kind
vi vcababatatadeployment.yml
ls
clear
kubectl apply -f vcababatatadeployment.yml 
vi vcababatatadeployment.yml 
clear
kubectl apply -f vcababatatadeployment.yml --record
kubectl get deploy
clear
kubectl get deploy
kubectl remove deploy vcababatatadeployment
kubectl delete deploy vcababatatadeployment
vi vcababatatadeployment.yml 
clear
kubectl apply -f vcababatatadeployment.yml --record
kubectl get deploy
kubectl get pods
kubectl get svc
curl 10.100.154.31:8080
kubectl get nodes
vi vcababatatadeployment.yml 
clear
kubectl set image deployment vcababatatadeployment nodejs=vcababatata/vhttpnode:v2 --record
kubectl rollout status deployment vcababatatadeployment
kubectl rollout history deployment vcababatatadeployment
kubectl set image deployment vcababatatadeployment nodejs=vcababatata/vhttpnode:v3 --record
kubectl rollout status deployment vcababatatadeployment
kubectl rollout history deployment vcababatatadeployment
kubectl rollout undo deployment vcababatatadeployment
kubectl rollout status deployment vcababatatadeployment
kubectl rollout undo deployment vcababatatadeployment --to-revision=1 
kubectl rollout status deployment vcababatatadeployment
vi vcababatatadeployment.yml 
ls -ltr
more namespacepod.yml 
more myclusterip-svc.yml 
clear
ls -ltr
pwd
exit
