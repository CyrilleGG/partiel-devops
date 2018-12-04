
start:
  go run main.go

test:
  cd handler && go test && cd ..

build:
  go build

infra:
  terraform apply
