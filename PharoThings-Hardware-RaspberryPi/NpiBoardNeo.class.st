Class {
	#name : #NpiBoardNeo,
	#superclass : #RpiBoard,
	#category : #'PharoThings-Hardware-RaspberryPi'
}

{ #category : #initialization }
NpiBoardNeo >> initialize [
	super initialize.
	self
		addNewConnector: 'P1'
		with:{
			PotPower3dot3VPin new. PotPower5VPin new.
			(PotSDAPin id: 8). PotPower5VPin new.
			(PotSCLPin id: 9). PotGroundPin new.
			(PotClockGPIOPin id: 203 number: 7). (PotSerialPortTXDPin id: 15).
			PotGroundPin new. (PotSerialPortRXDPin id: 16).
			(PotGPIOPin id: 0 number: 0). (PotPwmGPIOPin id: 1 number: 6).
			(PotGPIOPin id: 2 number: 2). PotGroundPin new.
			(PotGPIOPin id: 3 number: 3). (PotGPIOPin id: 4 number: 200).
			PotPower3dot3VPin new. (PotGPIOPin id: 5 number: 201).
			(PotMOSIPin id: 12). PotGroundPin new.
			(PotMISOPin id: 13). (PotGPIOPin id: 6 number: 1).
			(PotSCLKPin id: 14). (PotCEPin id: 10 number: 67)
			}
]
