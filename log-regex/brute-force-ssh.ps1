$matches = [regex]::Matches(
    $logs,
    "Failed password for (?:invalid user )?(?<user>\S+) from (?<ip>\d{1,3}(?:\.\d{1,3}){3})"
)

$result = foreach ($m in $matches) {
    [PSCustomObject]@{
        User = $m.Groups["user"].Value
        IP   = $m.Groups["ip"].Value
    }
}

$result | Group-Object IP | Where-Object { $_.Count -gt 3 }
