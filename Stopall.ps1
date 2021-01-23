$currentprocessid = gps | ? {$_.mainwindowhandle -ne 0} |Select id
$currentprocessid.Count
$currentprocessid.GetType()
foreach($hh in $currentprocessid)
{
Stop-Process -Id $hh.Id
print $currentprocessid[$i].Id;
}