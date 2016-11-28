Accounts.onCreateUser (options, user) ->
	if user.services.hasOwnProperty('google')
		options.profile.email = user.services.google.email
		options.profile.picture = user.services.google.picture
		options.profile.firstName = user.services.google.given_name
		options.profile.lastName = user.services.google.family_name
	else if user.services.hasOwnProperty('facebook')
		options.profile.email = user.services.facebook.email
		options.profile.firstName = user.services.facebook.first_name
		options.profile.lastName = user.services.facebook.last_name

	user.profile = options.profile
	user.profile.firstTime = true

	return user

# SERVICES
if inDevelopment
	googleServiceConfiguration =
		clientId: '653157452383-kbm5sotv867csr29ue6i9kqooei32tlr.apps.googleusercontent.com'
		secret: ''
	facebookServiceConfiguration =
		appId: '1092579600798152'
		secret: ''

if inProduction
	googleServiceConfiguration =
		clientId: '653157452383-j4uaibnb1i16cror80ul0nuc414t4rsf.apps.googleusercontent.com'
		secret: '-FDqlS3'
	facebookServiceConfiguration =
		appId: '1092579047464874'
		secret: ''

ServiceConfiguration.configurations.upsert { service: 'google' }, { $set: googleServiceConfiguration }
ServiceConfiguration.configurations.upsert { service: 'facebook' }, { $set: facebookServiceConfiguration }