private
groups: spec
	spec for: #'common' do: [
		spec
			group: #'core' with: #( #'ExternalVolatileStore-Core' );
			group: #'settings' with: #( 
				#'ExternalVolatileStore-Settings'
				#'ExternalVolatileStore-TemporarySettings' );
			group: #'examples' with: #( 
				#'ExternalVolatileStore-CoreExamples' 
				#'ExternalVolatileStore-SettingsExamples'
				#'ExternalVolatileStore-TemporarySettingsExamples' );
			group: #'tests' with: #( #'ExternalVolatileStore-Tests' );
			group: #'default' with: #( #'core' #'settings' #'examples' #'tests' );
			group: #'minimal' with: #( #'core' #'settings' )
	].