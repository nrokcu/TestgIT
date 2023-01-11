Get-Content C:\Users\Administrator.NILTEST\Desktop\OUStructureDemo.csv | Foreach-Object {
$DomainName = 'OU=OUTest,DC=niltest,DC=com'
$OrgUnitPath=''
$orgUnits = (Split-Path $_-Parent).Split('\')
[array]::Reverse($OrgUnits)
$OrgUnits | Foreach-Object {
if($_.Lenght -eq 0){
return
}
$OrgUnitPath = $OrgUnitPath + 'OU=' + $_+ ','
}
$OrgUnitPath +=$DomainName
echo $NewOrgUnitPath
	$NewOrgUnitName = Split-Path $_-Leaf
echo $NewOrgUnitName
	#New-ADOrganizationalUnit -Name "$NewOrgUnitName" -Path "$OrgUnitPath" -ProtectedFromAccidentalDeletion
