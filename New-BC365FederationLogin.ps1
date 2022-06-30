Function New-BC365FederationLogin() {
    [CmdletBinding()]
    param(    
        [Parameter()]
        [string]$TenantID,
        [Parameter()]
        [string]$AppIdUri,
        [Parameter()]
        [string]$RedirectURL
    )
    $BC365FederationLogin = (
        'https://login.microsoftonline.com/', $TenantID, `
        '/wsfed?wa=wsignin1.0%26wtrealm=', $AppIdUri, `
        '%26wreply=', $RedirectURL ) -Join ('')

    $global:FederationLogin = $BC365FederationLogin
    #.Replace(' ', '%20')
    return $global:FederationLogin   
}
$FederationLogin = New-BC365FederationLogin `
-TenantID 'adec0e79-ae11-4666-98c3-061ad560514f' `
-AppIdUri 'api://6dd0ae58-96e6-49d0-998e-a09a27dbf7cf' `
-RedirectURL 'https://dynamics.businesscentral.bg/a67aa7d4-f38c-4a65-a2ac-89422d51da83/SignIn'
$FederationLogin

$BC20FederationLogin = New-BC365FederationLogin `
-TenantID 'adec0e79-ae11-4666-98c3-061ad560514f' `
-AppIdUri 'api://9b30f044-e61b-4dd7-9aaa-d095617b05f1' `
-RedirectURL 'https://dynamics.businesscentral.bg/a67aa7d4-f38c-4a65-a2ac-89422d51da83/SignIn'

Write-Host $BC20FederationLogin -ForegroundColor Green

#https://login.microsoftonline.com/adec0e79-ae11-4666-98c3-061ad560514f/wsfed?wa=wsignin1.0%26wtrealm=api://9b30f044-e61b-4dd7-9aaa-d095617b05f1%26wreply=https://dynamics.businesscentral.bg/a67aa7d4-f38c-4a65-a2ac-89422d51da83/SignIn
#https://login.microsoftonline.com/adec0e79-ae11-4666-98c3-061ad560514f/wsfed?wa=wsignin1.0%26wtrealm=api://9b30f044-e61b-4dd7-9aaa-d095617b05f1%26wreply=https://dynamics.businesscentral.bg/a67aa7d4-f38c-4a65-a2ac-89422d51da83/SignIn