cd src/infrastructure
Start-Process powershell -ArgumentList ".\start-all.ps1" -Wait

cd ../../src/VehicleRegistrationService
Start-Process powershell -ArgumentList ".\start-selfhosted.ps1" 

cd ../../src/FineCollectionService
Start-Process powershell -ArgumentList ".\start-selfhosted.ps1" 

cd ../../src/TrafficControlService
Start-Process powershell -ArgumentList ".\start-selfhosted.ps1" 

cd ../../src/VisualSimulation
Start-Process dotnet -ArgumentList "run"

Start-Sleep -Seconds 10

Start-Process "http://localhost:5000"
Start-Process "http://localhost:4000"
Start-Process "http://localhost:9411/zipkin/"
