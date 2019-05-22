Class {
	#name : #RpiBoard3B,
	#superclass : #RpiBoardB,
	#category : #'PharoThings-Hardware-RaspberryPi'
}

{ #category : #initialization }
RpiBoard3B >> gpio2PinId [
	^27
]

{ #category : #initialization }
RpiBoard3B >> initialize [
	super initialize.
	
	self extendConnector: 'P1' with: { 
		PotSDAPin id: 0.PotSCLPin id: 1. 
		PotGPIOPin id: 5 number: 21. PotGroundPin new. 
		PotGPIOPin id: 6 number: 22. PotPwmGPIOPin id: 12 number: 26. 
		PotPwmGPIOPin id: 13 number: 23. PotGroundPin new. 
		PotMISOPin id: 19. PotGPIOPin id: 16 number: 27. 
		PotGPIOPin id: 26 number: 25. PotMOSIPin id: 20. 
		PotGroundPin new. PotSCLKPin id: 21.  
	}
]

{ #category : #initialization }
RpiBoard3B >> sclPinId [
	^3
]

{ #category : #initialization }
RpiBoard3B >> sdaPinId [
	^2
]
