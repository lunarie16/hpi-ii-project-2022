#!/bin/bash

protoc --proto_path=proto --python_out=build/gen proto/bakdata/corporate/v1/corporate.proto
protoc --proto_path=proto --python_out=build/gen proto/bakdata/stock/v1/stock.proto
protoc --proto_path=proto --python_out=build/gen proto/bakdata/corporate_updates/v1/corporate_updates.proto
