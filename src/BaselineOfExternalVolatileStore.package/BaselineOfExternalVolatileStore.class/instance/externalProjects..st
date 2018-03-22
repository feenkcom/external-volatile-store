private
externalProjects: spec
	spec for: #'common' do: [
		spec
			baseline: 'GToolkitExamples' with: [ spec 
				repository: 'github://feenkcom/gtoolkit-examples/src';
				loads: 'default' ]
	].