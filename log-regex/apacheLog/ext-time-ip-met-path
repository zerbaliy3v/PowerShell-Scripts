$logs = Get-Content ".\access.log"

$pattern = "(?<ip>\d{1,3}(\.\d{1,3}){3}) - - \[(?<time>.*?)\].*?(?<met>(GET|PUT|POST)) (?<path>/.*?) HTTP"
foreach ($log  in $logs) {
    $match = $log -match $pattern
    if ($match) {
        Write-Output "$($Matches['time']): $($Matches['ip']) | $($Matches['met']) -- $($Matches['path'])" 
    }
}
