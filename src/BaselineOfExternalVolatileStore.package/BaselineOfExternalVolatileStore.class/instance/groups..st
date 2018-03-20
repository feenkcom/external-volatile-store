private
groups: spec
	spec for: #'common' do: [
		spec
			group: #'core' with: #( #'ExternalVolatileStore-Core' );
			group: #'settings' with: #( #'ExternalVolatileStore-Settings' );
			group: #'examples' with: #( 
				#'ExternalVolatileStore-CoreExamples' 
				#'ExternalVolatileStore-SettingsExamples' );
			group: #'tests' with: #( #'ExternalVolatileStore-Tests' );
			group: #'default' with: #( #'core' #'settings' #'examples' #'tests' )
	].