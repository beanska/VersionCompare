. "$PSScriptRoot\Invoke-VersionCompare.ps1"
#import-module ".\VersionCompare.psm1"

Describe 'Invoke-VersionCompare.ps1' {
    It 'Should be able to use version datatype for comparision. Quicker' {
        $ret = Compare-Versions -ValueA "0.1.2.3" -ValueB "0.1.2.4"
        $ret  | Should be '<'
    }


    It 'Returns = when inputs are same' {
        $ret = Compare-Versions -ValueA "00.01.2 A 1" -ValueB "00.01.2 A 1"
        $ret  | Should be '='
    }

    It 'Returns >' {
        $ret = Compare-Versions -ValueA "00.01.2 A 13" -ValueB "00.01.2 A 1"
        $ret  | Should be '>'
    }

    It 'Returns <' {
        $ret = Compare-Versions -ValueA "00.01.2 A 1" -ValueB "00.01.2 B 1"
        $ret  | Should be '<'
    }

   It 'Returns >' {
        $ret = Compare-Versions -ValueA "00.01.2 B 1" -ValueB "00.01.2 A 1"
        $ret  | Should be '>'
    }

   It 'Returns <' {
        $ret = Compare-Versions -ValueA "00.01.2" -ValueB "00.01.2 A"
        $ret  | Should be '<'
   }

   It 'Returns <' { 
        $ret = Compare-Versions -ValueA "00.01.2" -ValueB "00.01.2 A 6"
        $ret  | Should be '<'
   }


}