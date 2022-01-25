
module.exports = {

	from: {
		version: process.env.FROM_VERSION || '19.04',
		url: process.env.FROM_URL ||  'https://api.enterprise.apigee.com',
		userid: process.env.FROM_USER || 'admin@google.com',
		passwd: process.env.FROM_PWD ||'SuperSecret123',
		org: process.env.FROM_ORG ||'org1',
		env: process.env.FROM_ENV ||'test',
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

	}
} ;
