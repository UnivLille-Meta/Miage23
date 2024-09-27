
# Resources to learn from

- Slides and Videos [https://rmod-files.lille.inria.fr/DesignCoffeeClub/2023-Miage/]

Other source
- [http://rmod-pharo-mooc.lille.inria.fr/AdvancedDesignMooc/Slides/]
- [http://rmod-pharo-mooc.lille.inria.fr/AdvancedDesignMooc/Videos/]

## Git resources

### Slides
- https://rmod-files.lille.inria.fr/DesignCoffeeClub/2023-Miage/Git-PADR-1.2-GitAndDistributedVCS.pdf
- https://rmod-files.lille.inria.fr/DesignCoffeeClub/2023-Miage/Git-PADR-1.3-PracticalGit.pdf
- https://rmod-files.lille.inria.fr/DesignCoffeeClub/2023-Miage/Git-PADR-2-AdvancedGit.pdf
  
### Tutorials
- https://rmod-files.lille.inria.fr/DesignCoffeeClub/2023-Miage/Support-1-BasicGit.pdf
- https://rmod-files.lille.inria.fr/DesignCoffeeClub/2022-Miage-Slides/Support-2-AdvancedGit.pdf
- https://rmod-files.lille.inria.fr/DesignCoffeeClub/2022-Miage-Slides/Support-2-PracticalGit.pdf
  
## Links
- [http://mooc.pharo.org](a super cool mooc)
- [https://discord.gg/QewZMZa](Pharo discord channel)
- [http://books.pharo.org](Pharo by Example)
- [http://books.pharo.org](Pharo with Style)
- [https://scg.unibe.ch/download/oorp/OORP.pdf](Object-Oriented Reengineering Patterns)

## Optional
- Web https://rmod-files.lille.inria.fr/?dir=FreeBooks/SeasideBook


## Pharo automatic configuration

You can place in a file with whatever.st, in the Preferences folder of your OS (check self fullName in the pane of Startup>Version Preferences)

```
StartupPreferencesLoader default executeAtomicItems: {
	StartupAction 
		name: 'Logo' 
		code: [ PolymorphSystemSettings showDesktopLogo: false] .
	StartupAction 
		name: 'Git Settings' 
		code: [ 
			Iceberg enableMetacelloIntegration: true.
			IceCredentialsProvider sshCredentials
					username: 'git';
					publicKey: '/Users/XXX/.ssh/id_rsa.pub';
					privateKey: '/Users/XX/.ssh/id_rsa'.
			IceCredentialStore current
					storeCredential: (IcePlaintextCredentials new
					username: 'GHUSER';
					password: 'PassWord';
					host: 'github.com';
					yourself).		


			IceCredentialStore current
				storeCredential: (IceTokenCredentials new
					username: 'GHUSER';
					token: 'YOUR TOKEN';
					yourself) 
				forHostname: 'github.com'.
			]. 
}.

```
Note that we remove the logo so that we can see if the startup action got executed

