$matches = [regex]::Matches(
    $logs,
    "\s(?<ip>\d{1,3}(?:\.\d{1,3}){3})\s(GET|POST) (?<url>.+?)(UNION|SELECT|OR \d=\d|\w=\w|--|#) HTTP"
)
$result = foreach ($m in $matches){
    Write-Host "[SQL INJECTION] $($m.Groups['ip'].Value) -> $($m.groups['url'].Value)"
}
