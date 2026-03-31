$targetComputer = "localhost"
$ports = 130..150
$count_port = 0
foreach($port in $ports ){

 $result = Test-NetConnection -ComputerName $targetComputer -Port $port -InformationLevel Quiet
    
    if($result){
        Write-Output "[+] -- $targetComputer -- $port"
        $count_port++
    
    }else{
        Write-Output "[-] -- $targetComputer -- $port"
    }
}
Write-Output "Total $count_port opens";
