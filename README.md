# External Volatile Store

Secure (string) in-memory storage for passwords and other sensitive data.

## How to load

You can load the whole code in Pharo 6.1 using the following snippet:

```Smalltalk
"If you want Iceberg integration, uncomment the next line"
"Iceberg enableMetacelloIntegration: true."
Metacello new
   baseline: 'ExternalVolatileStore';
   repository: 'github://feenkcom/external-volatile-store/src';
   load.
```

## Examples

### Core

Copy and paste it to your GT-Playground and execute it:

```Smalltalk
bytes := ExternalVolatileValue fromBytes: #[ 20 03 20 18 ].
bytes value. "result: #[ 20 03 20 18 ]"

string := ExternalVolatileValue fromString: 'Very secret information'.
string value. "result:  'Very secret information'"

"Now save, quit, and open again your image."
bytes value. "result: #[ ] (empty byte array)"
string value. "result: '' (empty string)"
```

### System Settings

Create a class `SecretSettings` that inherits from `Object`. Add methods:

```Smalltalk
SecretSettings class >> passwordOn: aBuilder
	<systemsettings>
	(aBuilder setting: #mySystemPassword)
		label: 'My system password';
		target: self;
		selector: #password;
		setSelector: #password:;
		type: #Password.
```

```Smalltalk
SecretSettings class >> initialize
	password := AutoReloadableVolatileSystemSetting fromString: '' settingId: #password.
```

Evaluate `SecretSettings initialize`.

```Smalltalk
SecretSettings class >> password
	^ password value
```

```Smalltalk
SecretSettings class >> password: aString
	password value: aString
```

```Smalltalk
SecretSettings class >> rawPassword
	"This method for demostration purpose only"
	^ password
```

Open System Settings, set the password as `this is my secret password`, and store it on the local disk:

![System Settings](assets/img/system-settings.png)

Evaluate `SecretSettings password` and you should receive `this is my
secret password` value. Also evaluate `SecretSettings rawPassword printString` and you will
obtain `Setting of #mySystemPassword, type: ExternalVolatileString with value`.

Then save and close the image and open it again. Evaluate `SecretSettings rawPassword printString` and you will obtain `Setting of #mySystemPassword, type: ExternalVolatileString without value`.  Evalute `SecretSettings password` and you should receive `this is my secret password` value.
