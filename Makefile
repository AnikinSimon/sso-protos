.PHONY: gen

gen:
	protoc -I proto proto/sso/sso.proto -I proto/google/api/  \
	--go_out=./gen/go/ \
	--go_opt paths=source_relative \
	--go-grpc_out=./gen/go/ \
	--go-grpc_opt=paths=source_relative \
	--grpc-gateway_out=./gen/go/ \
    --grpc-gateway_opt logtostderr=true \
    --grpc-gateway_opt paths=source_relative \
    --grpc-gateway_opt generate_unbound_methods=true \
    --openapiv2_out ./openapiv2