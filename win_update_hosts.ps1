$hostname=$args[0]
$hosts="$env:windir\system32\drivers\etc\hosts"
$result = (Get-Content $hosts | Select-String -Pattern 'hello.example.com' -NotMatch) + "127.0.0.1 hello.$hostname dashboard.$hostname"
$result = $result -replace "`t|`n|`r",""
$result = $result -replace " ;|; ",";"
echo $result | out-file -encoding ASCII $hosts
