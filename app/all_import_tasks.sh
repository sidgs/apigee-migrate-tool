#!/bin/bash
node_modules/.bin/grunt importTargetServers -v
node_modules/.bin/grunt importProxies -v
node_modules/.bin/grunt importSharedFlows -v
node_modules/.bin/grunt importDevs -v
node_modules/.bin/grunt importProducts -v
node_modules/.bin/grunt importApps -v
node_modules/.bin/grunt importKeys -v
node_modules/.bin/grunt importProxyKVM -v
node_modules/.bin/grunt importEnvKVM -v
node_modules/.bin/grunt importOrgKVM -v
node_modules/.bin/grunt importFlowHooks -v
node_modules/.bin/grunt importReports -v
