accessing
label
	"Return a setting label that appears in Settings Browser"
	<return: #String>
	^ 'Temporary setting with id: ', self settingId asString