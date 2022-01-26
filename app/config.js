
module.exports = {

	from: {
		version: process.env.FROM_VERSION || '19.04',
		url: process.env.FROM_URL ||  'https://api.enterprise.apigee.com',
		userid: process.env.FROM_USER || 'admin@google.com',
		passwd: process.env.FROM_PWD ||'SuperSecret123',
		org: process.env.FROM_ORG ||'amer-mint-partner01',
		env: process.env.FROM_ENV ||'prod',
		gatewayType: process.env.FROM_GATEWAY_TYPE || 0 // 0 - Edge , 1 - Apigee X / Hybrid 
	},
	to: {
		version: process.env.TO_VERSION || '19.04',
		url: process.env.TO_URL ||  'https://api.enterprise.apigee.com',
		userid: process.env.TO_USER || 'admin@google.com',
		passwd: process.env.TO_PWD ||'SuperSecret123',
		org: process.env.TO_ORG ||'org1',
		env: process.env.TO_ENV ||'test',
		gatewayType: process.env.TO_GATEWAY_TYPE || 1

	}, 

	include: {
		app: process.env.INCLUDE_APPS || true ,
		csv: process.env.INCLUDE_CSV || true, 
		dev: process.env.INCLUDE_DEV || true , 
		flow_hook: process.env.INCLUDE_FLOW_HOOK || true ,
		key: process.env.INCLUDE_KEY || true , 
		kvm: process.env.INCLUDE_KVM || true , 
		product: process.env.INCLUDE_PRODUCT || true , 
		proxy: process.env.INCLUDE_PROXY || true , 
		report: process.env.INCLUDE_REPORT || true , 
		shared_flow: process.env.INCLUDE_SHARED_FLOW || true , 
		spec: process.env.INCLUDE_SPEC || true , 
		target_server: process.env.INCLUDE_TARGET_SERVER || true , 


	}
} ;
