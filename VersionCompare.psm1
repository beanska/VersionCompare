"$(Split-Path -Path $MyInvocation.MyCommand.Path)\*.ps1" | Resolve-Path | Where-Object {$_ -notlike "*tests.ps1"} | % { . $_.ProviderPath }

