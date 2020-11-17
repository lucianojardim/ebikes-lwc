#!/usr/bin/env bash
env=${1}
if [[ ${env} != "dev" && ${env} != "qa" ]]
then
    env="dev"
fi

cci flow run ${env}_org --org ${env}
cci org default ${env}
cci org browser ${env}
