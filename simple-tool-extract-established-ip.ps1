$remoteObject = Get-NetTCPConnection -State Established 

Write-Host "$(" " * 10)---- Established Connections ----`n"

ForEach ($remote in $remoteObject) {  

    $remoteIp = $remote.RemoteAddress
    $remotePort =$remote.RemotePort


    $c = $remoteIp.Length
    $n = 20 - [System.Int32]$c
    $remoteIp = $remoteIp + (" " * $n)

    Write-Host "Remote Ip: $remoteIp -- Remote Port: $remotePort" 
}
