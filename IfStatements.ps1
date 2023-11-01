$a = 2
$b=3

if($a -gt $b){
    $messageOne = "Matched: This is msg one"
}else{
    $messageOne = "Not Matched: This is msg one"
}

if($a -lt $b){
    $messageTwo = "Matched: This is msg two"
}else{
    $messageTwo = "Not Matched: This is msg two"
}

if($a -eq $b){
    $messageThree = "Matched: This is msg three"
}else{
    $messageThree = "Not Matched: This is msg three"
}

Write-Host $messageOne
Write-Host $messageTwo
Write-Host $messageThree

$customobject = [PSCustomObject]@{
    "messageOne"= $messageOne
"messageTwo" =  $messageTwo
"messageThree" = $messageThree
}
$customobject.messageThree

$customTernaryobject = [PSCustomObject]@{
    "messageOne"= (($a -gt $b)? "Matched: This is msg one":"Not Matched: This is msg one")
"messageTwo" =  (($a -lt $b)?"Matched: This is msg two":"Not Matched: This is msg two")
"messageThree" = (($a -eq $b)?"Matched: This is msg three":"Not Matched: This is msg three")
}

$customTernaryobject

$value = Read-Host "Type your favorite car brand"

switch ($value) {
    Brand1 {'You typed: Brand 1'}
    Brand2 {'You typed: Brand 2'}
    Brand3 {'You typed: Brand 3'}
    Brand4 {'You typed: Brand 4'}
    default {'You did not type any brand'}
}