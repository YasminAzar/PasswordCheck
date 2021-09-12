$instantPassword = $args[0]
$passwordFromFile = $args[1]

if($instantPassword -eq '-f'){
    $password = Get-Content -Path $passwordFromFile
}
else {
    $password = $instantPassword
}

if($password.length -le 9){
    write-host -ForegroundColor red "Password length should be 10 characters or more"
}
elseif (!(($password -cmatch '[a-z]') -and ($password -cmatch '[A-Z]') -and ($password -match '\d'))){
    write-host -ForegroundColor red "Password must contains lowecase, upparcase and number"
}
else {
    write-host -ForegroundColor green "Strong Password"
}
