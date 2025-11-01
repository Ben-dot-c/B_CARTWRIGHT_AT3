$sum = 0
#prompt user for numbers and convert to floats for manipulation
$num1 = [float](Read-Host "Enter first number") 
$num2 = [float](Read-Host "Enter second number")
$opp = Read-Host "Enter Operator (+,-,*,/)"

if ($opp -eq "+"){
    $sum = $num1 + $num2
}
elseif ($opp -eq "-") {
    $sum = $num1 - $num2
}
elseif ($opp -eq "*") {
    $sum = $num1 * $num2
}
elseif ($opp -eq "/") {
    #prevent division by zero
    if ($num2 -eq 0) {
        Write-Host "Error cannot divide by zero"
    }
    else {
        $sum = $num1 / $num2
    }
}
else {
    #error handling for if the user inputs an invalid operator
    Write-Host "error invalid operator"
}

Write-Host "The final answer is $sum"