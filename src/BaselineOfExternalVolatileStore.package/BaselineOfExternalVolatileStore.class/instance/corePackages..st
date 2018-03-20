private
corePackages: spec
	spec for: #'common' do: [
		spec
			package: #'ExternalVolatileStore-Core';
			package: #'ExternalVolatileStore-CoreExamples' with: [
				spec requires: #( #'ExternalVolatileStore-Core' ) ];
			package: #'ExternalVolatileStore-Settings' with: [
				spec requires: #( #'ExternalVolatileStore-Core' ). ];

			package: #'ExternalVolatileStore-SettingsExamples' with: [
				spec requires: #( 
					#'ExternalVolatileStore-Core' 
					#'ExternalVolatileStore-SettingsExamples' ) ];

			package: #'ExternalVolatileStore-Tests' with: [
				spec requires: #( 
					#'ExternalVolatileStore-Core'
					#'ExternalVolatileStore-CoreExamples'
					#'ExternalVolatileStore-Settings'
					#'ExternalVolatileStore-SettingsExamples' ) ]
	].