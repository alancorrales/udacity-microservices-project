#!/bin/bash

function apply() {
    kubectl apply -f $1
}

function applyAllInDirectory() {
    dir=$1
    cd $dir
    for file in *
    do
        echo applying "$file"...
        apply "$file"
    done
    cd ..
}

# run environment
applyAllInDirectory "environment"

# run deployments
applyAllInDirectory "deployments"

# run services
applyAllInDirectory "services"
