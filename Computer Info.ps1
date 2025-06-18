Clear-Host
$jsonfile = Get-Content .\computer.json | ConvertFrom-Json

Write-Host "- - - - - - - - - - - - - - - - - - - - - - -" -ForegroundColor White
Write-Host "             PC Specs van *name*             " -ForegroundColor Red
Write-Host "- - - - - - - - - - - - - - - - - - - - - - -" -ForegroundColor White

Write-Host "Merk               " $jsonfile.computer.Merk
Write-Host "Type               " $jsonfile.computer.Type
Write-Host "CPU                " $jsonfile.computer.cpu 
if ($jsonfile.computer.ram -lt 32){
    Write-Host "RAM                " $jsonfile.computer.ram -ForegroundColor Red
}
else{
    Write-Host "RAM                " $jsonfile.computer.ram -ForegroundColor Green
}

Write-Host "Opslag             " $jsonfile.computer.opslag
if ($jsonfile.computer.vrijeRuimte -gt 100){
    Write-Host "Vrije Ruimte       " $jsonfile.computer.vrijeRuimte -ForegroundColor Green
}
else{
    Write-Host "Vrije Ruimte       " $jsonfile.computer.vrijeRuimte -ForegroundColor Red
}
Write-Host "GPU                " $jsonfile.computer.gpu
Write-Host "Besturingssysteem  " $jsonfile.computer.besturingssysteem
Write-Host "Serienummer        " $jsonfile.computer.serienummer