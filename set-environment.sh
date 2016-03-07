#!/bin/bash -x

# Copyright 2016 Cisco Systems, Inc.  All rights reserved.
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.
#
#author:  James Scollard
#email:  jscollar@cisco.com
#source: https://code.launchpad.net/~openstack-tailgate/openstack-tailgate/mythos
#
# Uses inotify to monitor the outage log for appends, and notifies the server node if
# an outage occurs.

echo "Setting global path variables"

cb_home=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
echo "Home (Cloudbench Deployment Automations) = $cb_home"

cloudbench_home="$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/../cbtool"
echo "Home (Cloudbench Orchestrator Home) = $cloudbench_home"

