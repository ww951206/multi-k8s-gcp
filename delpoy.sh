docker build -t ww951206/multi-client:latest -f ./client/Dockerfile ./client
docker build -t ww951206/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t ww951206/multi-server:latest -f ./server/Dockerfile ./server
docker build -t ww951206/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t ww951206/multi-worker:latest -f ./worker/Dockerfile ./worker
docker build -t ww951206/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push ww951206/multi-client:latest
docker push ww951206/multi-server:latest
docker push ww951206/multi-worker:latest

docker push ww951206/multi-client:$SHA
docker push ww951206/multi-server:$SHA
docker push ww951206/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deloyments/client-deployment client=ww951206/multi-client:$SHA
kubectl set image deloyments/server-deployment server=ww951206/multi-server:$SHA
kubectl set image deloyments/worker-deployment worker=ww951206/multi-worker:$SHA