#!/bin/bash
# ------------------------------------------------------------------------
#
# Copyright 2005-2015 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

# ------------------------------------------------------------------------
set -e

product_name=es
product_version=2.0.0
image_version=$1
product_profiles=$2

if [ -z "$1" ]
  then
    echo "Usage: ./run.sh [docker-image-version] [C for Cluster (Optional)]"
    echo "eg: ./run.sh 1.0.0 or ./run.sh 1.0.0 C"
    exit
fi

if [ -z "$2" ]
  then
    product_profiles='default'
fi

prgdir=`dirname "$0"`
script_path=`cd "$prgdir"; pwd`
common_folder=`cd "${script_path}/../../common/scripts/docker/"; pwd`

bash ${common_folder}/docker-run.sh ${product_name} ${product_version} ${image_version} ${product_profiles}