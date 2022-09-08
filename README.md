This is the repository of the MIAGE C3P lectures done by S. Ducasse and G. Polito

contact: stephane.ducasse@inria.fr / guillermo.polito@inria.fr

## Files
All the actual pdfs are hosted under [https://rmod-files.lille.inria.fr/DesignCoffeeClub/Slides/]()

Please note that the actual lectures raw files are hosted under
- [http://github.com/pharo-mooc/AdvancedOODesign/Slides/Stable]() for the mooc related ones and 
- [http://github.com/pharo-mooc/AdvancedOODesign/Slides/Lectures]() 

## Register 
Register your groups in the file RegisteredGroups.md by giving a name to your group and listing your name as shown in the file.

## Reports
- Create a folder with the name of your group under the folder Groups
- Add your weekly reports in your group folder.
- Make sure that the name of your reports identifies uniquely your group and week (e.g. 01Prof.md)



## Configuration automatique

- Install PharoLauncher from [http://www.pharo.org](http://www.pharo.org)
- Pick Pharo 10

```
StartupPreferencesLoader default executeAtomicItems: {
	StartupAction 
		name: 'Logo' 
		code: [ PolymorphSystemSettings showDesktopLogo: false] .
	StartupAction 
		name: 'Git Settings' 
		code: [ 
			Iceberg enableMetacelloIntegration: true.
		
			IceCredentialStore current
					storeCredential: (IcePlaintextCredentials new
					username: 'YourName';
					password: 'xxxx';
					host: 'github.com';
					yourself).		


			IceCredentialStore current
				storeCredential: (IceTokenCredentials new
					username: 'YourName';
					token: 'yourtoken';
					yourself) 
				forHostname: 'github.com'.
			]. 
}.
```
