#!/usr/bin/env bash
function_name="SANTEC_CLOCHE_CREATE_PNG"
#working_dir=FUNCTION_FOLDER
cd ..
rm -rf ./node_modules
rm ./build.zip
npm install --production
zip -r build.zip ./
#profile="de"
env=""
resourcePrefix=""
profile="default"

#if [[ "$1" = "PREDEV"  ||  "$1" = "ROQUE-PREDEV" ]]; then
#  profile=${1}
#  env="PREDEV"
#  resourcePrefix="dtkpredev"
#  function_name="InterfaceCisatV2-interfacecisat"
#fi
#
#if [[ "$1" = "DEV" ]]; then
##  profile=${1}
#  env="DEV"
#  resourcePrefix="dtkdev"
#  function_name="InterfaceCisatV2-interfacecisat"
#fi
#
#if [[ "$1" = "QA" ]]; then
##  profile=${1}
#  env="QA"
#  resourcePrefix="qa"
#  function_name="InterfaceCisatV2-interfacecisat"
#fi

#zip -r build.zip ./src/
#function_name=${env}-GREMIALES-POST_UNION_LICENSE
#function_name=${resourcePrefix}-${function_name}
function_name=${function_name}

echo ${profile}
echo ${env}
echo ${function_name}
aws lambda update-function-code --function-name ${function_name} --zip-file fileb://./build.zip --profile ${profile}
#aws lambda update-function-code --function-name $function_name --zip-file fileb://./build.zip
npm install
