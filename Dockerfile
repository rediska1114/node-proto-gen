FROM node

RUN node -v

RUN npm i -g grpc grpc_tools_node_protoc_ts grpc-tools
