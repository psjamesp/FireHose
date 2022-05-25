

# BIG SCRIPT TO CREATE NEW ONBOARDING USERS

$newusers = Import-Csv GiantHRFile.csv

foreach ($newuser in $newusers) {

    New-GMUser -Name $newuser.name -Bl;ah Blah Blah -MailboxEnable

    New-GMLicense -Name $newuser.name -Licenses $newusers.softwareapps

}