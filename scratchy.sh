#!/usr/bin/env bash
env=${1}
if [[ ${env} != "dev" && ${env} != "qa" ]]
then
    env="dev"
fi

# sfdx force:org:create -s -f config/project-scratch-def.json -a ebikes
# sfdx force:source:push
# sfdx force:user:permset:assign -n ebikes
# sfdx force:user:permset:assign -n Walkthroughs
# sfdx force:data:tree:import -p ./data/sample-data-plan.json
# sfdx force:user:permset:assign -n Walkthroughs
# echo "sleeping for 120 seconds because SF is so slow"
# sleep 120
# sfdx force:community:publish -n E-Bikes
# sfdx force:org:open


cci flow run ${env}_org --org ${env}
cci org default ${env}
cci org browser ${env}
