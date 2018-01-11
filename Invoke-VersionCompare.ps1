function Invoke-VersionCompare {
    [cmdletbinding()]
    param(
		    [parameter(Mandatory=$true, HelpMessage="First Value")]
		    [ValidateNotNullOrEmpty()]
		    [string]$ValueA,

		    [parameter(Mandatory=$true, HelpMessage="Second Value")]
		    [ValidateNotNullOrEmpty()]
		    [string]$ValueB
    )

    Try {
        [version] $vA = $ValueA
        [version] $vB = $ValueB
        if ($vA -gt $vB){
            return '>'
        } elseif ($vA -lt $vB) {
            return '<'
        } else {
            return '='
        }
    } Catch {
        write-verbose "Could not cast values to datatype [version]"
    }

    # We could not compare using the [version] datatype so compare using [ArrayList]
     [System.Collections.ArrayList]$versionArrayA = @($ValueA.ToUpper().Split('.') | % {$_.Split(' ')})
     [System.Collections.ArrayList]$versionArrayB = @($ValueB.ToUpper().Split('.') | % {$_.Split(' ')})

     write-verbose "A: $($versionArrayA.ToArray())"
     write-verbose "B: $($versionArrayB.ToArray())"

     if ( $versionArrayA.Count -ge $versionArrayB.Count ) {
        $minCount = $versionArrayA.Count
     } else {
        $minCount = $versionArrayB.Count
     }

     write-Verbose "The minimum numbers of elements is $minCount"

     for([int]$i = 0; $i -le $minCount; $i++){
        if ($versionArrayA[$i] -gt $versionArrayB[$i]){
            return '>'
        } elseif ($versionArrayA[$i] -lt $versionArrayB[$i]){
            return '<'
        }
     }

     # If we have gotten this far then all element in 0..minCount are equal
     if ($versionArrayA.Count -gt $minCount){
        return '>'
     } elseif ($versionArrayB.Count -gt $minCount) {
        return '<'
     } else {
        return '='
     }
}
