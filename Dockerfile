#FROM centos:7.5.1804
FROM alpine:3.8

COPY consul-1.4.0-bin /bin/consul
RUN chmod +x /bin/consul

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
CMD ["/bin/consul","--help"]



# docker build -t registry.cn-hangzhou.aliyuncs.com/yuxing/consul:1.4.0 .
# docker push registry.cn-hangzhou.aliyuncs.com/yuxing/consul:1.4.0

#docker run --net=host -d -p 8500:8500 -p 8300:8300 -p 8301:8301 --restart=always --name=consul-master registry.cn-hangzhou.aliyuncs.com/yuxing/consul:1.4.0 consul agent -server  -bootstrap-expect=1 -ui --data-dir=/data/consul-master --client=0.0.0.0 --advertise=10.0.0.61 -node=10.0.0.61


#docker run --net=host -d -p 8500:8500 -p 8300:8300 -p 8301:8301 --restart=always --name=consul-node1 registry.cn-hangzhou.aliyuncs.com/yuxing/consul:1.4.0 consul agent -join=10.0.0.61 --data-dir=/data/consul-node1 --advertise=10.0.0.62 --client=0.0.0.0 -node=10.0.0.62

#docker run --net=host -d -p 8500:8500 -p 8300:8300 -p 8301:8301 --restart=always --name=consul-node2 registry.cn-hangzhou.aliyuncs.com/yuxing/consul:1.4.0 consul agent -join=10.0.0.61 --data-dir=/data/consul-node2 --advertise=10.0.0.63 --client=0.0.0.0 -node=10.0.0.63

#curl --request PUT --data "hello consul" http://127.0.0.1:8501/v1/kv/aaa
#curl --request GET http://127.0.0.1:8501/v1/kv/aaa