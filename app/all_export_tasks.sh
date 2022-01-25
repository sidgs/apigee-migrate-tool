#!/bin/bash
node_modules/.bin/grunt exportDevs -v
node_modules/.bin/grunt exportProducts -v
node_modules/.bin/grunt exportApps -v
node_modules/.bin/grunt exportProxies -v
node_modules/.bin/grunt exportSharedFlows -v
node_modules/.bin/grunt exportProxyKVM -v
node_modules/.bin/grunt exportEnvKVM -v
node_modules/.bin/grunt exportOrgKVM -v
node_modules/.bin/grunt exportFlowHooks -v
node_modules/.bin/grunt exportTargetServers -v
# node_modules/.bin/grunt exportReports -v
