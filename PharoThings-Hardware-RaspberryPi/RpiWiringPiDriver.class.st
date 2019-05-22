Class {
	#name : #RpiWiringPiDriver,
	#superclass : #PotBoardDriver,
	#instVars : [
		'lib'
	],
	#category : #'PharoThings-Hardware-RaspberryPi'
}

{ #category : #accessing }
RpiWiringPiDriver class >> default [
	^self lib: WiringPiLibrary uniqueInstance
		
]

{ #category : #accessing }
RpiWiringPiDriver class >> lib: aWiringPiLibrary [
	^self new 
		lib: aWiringPiLibrary
		
]

{ #category : #controlling }
RpiWiringPiDriver >> connectToBoard [
	lib wiringPiSetupGpio
]

{ #category : #'io protocols' }
RpiWiringPiDriver >> connectToI2CDevice: deviceAddressInt [
	
	^lib openI2C: deviceAddressInt 
]

{ #category : #accessing }
RpiWiringPiDriver >> lib [
	^ lib
]

{ #category : #accessing }
RpiWiringPiDriver >> lib: aWiringPiLibrary [
	lib := aWiringPiLibrary
]

{ #category : #operations }
RpiWiringPiDriver >> readDigitalValueFrom: aPin [
	^lib readPin: aPin id
]

{ #category : #operations }
RpiWiringPiDriver >> setIOMode: aPinMode into: aPin [ 
	lib pin: aPin id mode: aPinMode asWiringPiConstant.
]

{ #category : #operations }
RpiWiringPiDriver >> setPUDResister: aPinResisterClass into: aPin [
	lib pin: aPin id pullUpDnMode: aPinResisterClass asWiringPiConstant
]

{ #category : #operations }
RpiWiringPiDriver >> writeDigitalValue: aBit into: aPin [
	lib pin: aPin id write: aBit
]

{ #category : #operations }
RpiWiringPiDriver >> writePWMValue: anInteger into: aPin [ 
	lib pin: aPin id pwmWrite: anInteger
]
