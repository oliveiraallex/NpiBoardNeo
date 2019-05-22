Class {
	#name : #RpiBoardBRev2,
	#superclass : #RpiBoardB,
	#category : #'PharoThings-Hardware-RaspberryPi'
}

{ #category : #initialization }
RpiBoardBRev2 >> gpio2PinId [
	^27
]

{ #category : #initialization }
RpiBoardBRev2 >> initialize [
	super initialize.
	
	self addNewConnector: 'P5' with: { 
		PotPower5VPin new. PotPower3dot3VPin new. 
		PotGPIOPin id: 28 number: 8. PotGPIOPin id: 29 number: 9.
		PotGPIOPin id: 30 number: 10. PotGPIOPin id: 31 number: 11.
		PotGroundPin new. PotGroundPin new.
	}
]

{ #category : #initialization }
RpiBoardBRev2 >> sclPinId [
	^3
]

{ #category : #initialization }
RpiBoardBRev2 >> sdaPinId [
	^2
]
