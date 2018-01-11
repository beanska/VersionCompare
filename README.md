# VersionCompare
Powershell module used to compare alphanumeric versions. Invoke-VersionCompare takes two version strings and returns a single character to represent relationship ('>', '=', '<').

Examples

Import-Module VersionCompare

Invoke-VersionCompare -ValueA "1.2" -ValueB "1.3"
> returns '<'

Invoke-VersionCompare -ValueA "1.2.3.4 rev A" -ValueB "1.2.3.4"
> returns '>'
