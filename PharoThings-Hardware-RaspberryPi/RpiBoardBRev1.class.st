Class {
	#name : #RpiBoardBRev1,
	#superclass : #RpiBoardB,
	#category : #'PharoThings-Hardware-RaspberryPi'
}

{ #category : #initialization }
RpiBoardBRev1 >> gpio2PinId [
	^21
]

{ #category : #initialization }
RpiBoardBRev1 >> sclPinId [
	^1
]

{ #category : #initialization }
RpiBoardBRev1 >> sdaPinId [
	^0
]
