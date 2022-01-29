#!/bin/bash

node_modules/.bin/grunt exportDevs $VERBOSE
node_modules/.bin/grunt exportProducts $VERBOSE
node_modules/.bin/grunt exportApps $VERBOSE
node_modules/.bin/grunt exportProxies $VERBOSE
node_modules/.bin/grunt exportSharedFlows $VERBOSE
node_modules/.bin/grunt exportProxyKVM $VERBOSE
node_modules/.bin/grunt exportEnvKVM $VERBOSE
node_modules/.bin/grunt exportOrgKVM $VERBOSE
node_modules/.bin/grunt exportFlowHooks $VERBOSE
node_modules/.bin/grunt exportTargetServers $VERBOSE
node_modules/.bin/grunt exportReports $VERBOSE

echo "Delete All from Dest ${TO_ORG}"

node_modules/.bin/grunt  deleteKeys $VERBOSE
node_modules/.bin/grunt  deleteApps $VERBOSE
node_modules/.bin/grunt  deleteDevs $VERBOSE
node_modules/.bin/grunt  deleteProducts $VERBOSE
node_modules/.bin/grunt  deleteProxies $VERBOSE
node_modules/.bin/grunt  deleteEnvKVM $VERBOSE
node_modules/.bin/grunt  deleteOrgKVM $VERBOSE
node_modules/.bin/grunt  deleteProxyKVM $VERBOSE
node_modules/.bin/grunt  deleteFlowHooks $VERBOSE
node_modules/.bin/grunt  deleteSharedFlows $VERBOSE
node_modules/.bin/grunt  deleteTargetServers $VERBOSE

echo "Import all to Dest ${TO_ORG}"

node_modules/.bin/grunt importTargetServers $VERBOSE
node_modules/.bin/grunt importProxies $VERBOSE
node_modules/.bin/grunt importSharedFlows $VERBOSE
node_modules/.bin/grunt importDevs $VERBOSE
node_modules/.bin/grunt importProducts $VERBOSE
node_modules/.bin/grunt importApps $VERBOSE
node_modules/.bin/grunt importKeys $VERBOSE
node_modules/.bin/grunt importProxyKVM $VERBOSE
node_modules/.bin/grunt importEnvKVM $VERBOSE
node_modules/.bin/grunt importOrgKVM $VERBOSE
node_modules/.bin/grunt importFlowHooks $VERBOSE
node_modules/.bin/grunt importReports $VERBOSE


