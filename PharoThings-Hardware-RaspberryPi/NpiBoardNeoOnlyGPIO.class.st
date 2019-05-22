Class {
	#name : #NpiBoardNeoOnlyGPIO,
	#superclass : #RpiBoard,
	#category : #'PharoThings-Hardware-RaspberryPi'
}

{ #category : #initialization }
NpiBoardNeoOnlyGPIO >> initialize [
	super initialize.
	self
		addNewConnector: 'P1'
		with:{
			PotPower3dot3VPin new. PotPower5VPin new.
			(PotGPIOPin id: 12 number: 8).	PotPower5VPin new.
			(PotGPIOPin id: 11 number: 9).	PotGroundPin new.
			(PotGPIOPin id: 203 number: 7).(PotGPIOPin id: 198 number: 15).
			PotGroundPin new.(PotGPIOPin id: 199 number: 16).
			(PotGPIOPin id: 0 number: 0).(PotGPIOPin id: 6 number: 1).
			(PotGPIOPin id: 2 number: 2).PotGroundPin new.
			(PotGPIOPin id: 3 number: 3).(PotGPIOPin id: 200 number: 4).
			PotPower3dot3VPin new.(PotGPIOPin id: 201 number: 5).
			(PotGPIOPin id: 64 number: 12).PotGroundPin new.
			(PotGPIOPin id: 65 number: 13).(PotGPIOPin id: 1 number: 6).
			(PotGPIOPin id: 66 number: 14).(PotGPIOPin id: 67 number: 10)
			}
]
