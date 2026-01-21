
function Sum {
    param (
        [int]$a,
        [int]$b
    )

    return "$a + $b = $($a + $b)"
}

function Sub {
    param (
        [int]$a,
        [int]$b
    )

    return "$a - $b = $($a - $b)"
}

function Mul {
    param (
        [int]$a,
        [int]$b
    )

    return "$a * $b = $($a * $b)"
}

function Div {
    param (
        [int]$a,
        [int]$b
    )

    if ($b -eq 0) {
        return "Division durch 0 nicht erlaubt"
        }

    return "$a / $b = $([math]::Round($a / $b, 2))"
}