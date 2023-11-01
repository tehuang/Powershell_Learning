function Add-FourNumbers() {
    param (
        [int32]
        #Specifies the first number
        $first,
        [int32]
        #Specifies the seconde number
        $second,
        [int32]
        #Specifies the third number
        $three,
        [int32]
        #Specifies the fourth number
        $fourth
    )
    #Add the four numbers and return the result
    $result = $first + $second + $three + $fourth

    #Write the Sum to the Console
    Write-Host "$($first) + $($second) + $($three) + $($fourth) = $($result)"    
}