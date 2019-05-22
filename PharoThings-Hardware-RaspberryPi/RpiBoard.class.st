Class {
	#name : #RpiBoard,
	#superclass : #PotBoard,
	#category : #'PharoThings-Hardware-RaspberryPi'
}

{ #category : #initialization }
RpiBoard class >> defaultDriver [
	^RpiWiringPiDriver default
]

{ #category : #testing }
RpiBoard class >> isAbstract [
	^self = RpiBoard 
]
