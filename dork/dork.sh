#! /bin/bash

# Author: Twinkle Sharma

# Colors
green='\e[92m'
yellow='\e[93m'

# Colors
green='\e[92m'
yellow='\e[93m'
reset='\e[0m'

# Prompt the user to enter the domain with color
echo -e "${green}Enter the domain:${reset}"
read domain

# Check if the domain is empty
if [ -z "$domain" ]; then
  echo -e "No URL Specified."
  echo -e "Usage: bash $0 domain.com"
  exit
else
  clear
fi

echo -e "${green}Domain: $domain"

echo -e "${yellow}"
echo -e "[01] Directory Listings"
echo -e "[02] Document files"
echo -e "[03] Configuration files"
echo -e "[04] Database files"
echo -e "[05] Log files"
echo -e "[06] Old/Backup files"
echo -e "[07] Vulnerable Files"
echo -e "[08] PhpInfo"
echo -e "[09] Sql Errors"
echo -e "[10] Login pages"
echo -e "[11] Open Redirects"
echo -e "[12] Pastebin Entries"
echo -e "[13] Employees on LinkedIn"
echo -e "[14] Cached By Google"
echo -e "[15] Archives"

echo -e "${green}"

read -p "[Enter your choice] => " input

# Process user input and execute corresponding option
google="https://www.google.com/search?q="

#Directory Listings
if [[ $input == "1" || $input == "01" ]]; then
        xdg-open $google'site:'$domain' intitle:index.of' &> /dev/null

#Document files
elif [[ $input == "2" || $input == "02" ]]; then
        xdg-open $google'site:'$domain' ext:doc | ext:docx | ext:odt | ext:pdf | ext:rtf | ext:sxw | ext:psw | ext:ppt | ext:pptx | ext:pps | ext:csv' &> /dev/null

#Configuration files
elif [[ $input == "3" || $input == "03"  ]]; then
        xdg-open $google'site:'$domain' ext:cf | ext:axd | ext:asmx | ext:ascx | ext:cfg | ext:cgi | ext:dat | ext:cfm | ext:csr | ext:cnf | ext:conf | ext:config | ext:ftp | ext:gitconfig | ext:htaccess | ext:inf | ext:ini | ext:ora | ext:pwd | ext:pgp | ext:passwd | ext:key | ext:crt ext:rdp | ext:reg | ext:txt | ext:plist | ext:pem | ext:xml' &> /dev/null

#Database files
elif [[ $input == "4" || $input == "04"  ]]; then
        xdg-open $google'site:'$domain' ext:accdb | ext:accde | ext:db | ext:dbf | ext:frm | ext:gdb | ext:gtable | ext:kexi | ext:ldb | ext:mda | ext:mdb | ext:adp | ext:mde | ext:mdf | ext:myd | ext:myi | ext:odb | ext:ora | ext:pcontact | ext:pdb | ext:pdi | ext:pdx | ext:prc | ext:sql | ext:rec | ext:sdf | ext:sqlite | ext:wdb | ext:wmdb' &> /dev/null

#Log files
elif [[ $input == "5" || $input == "05"  ]]; then
        xdg-open $google'site:'$domain' ext:log | ext:logs' &> /dev/null

#Old/Backup files
elif [[ $input == "6" || $input == "06"  ]]; then
        xdg-open $google'site:'$domain' ext:bkf | ext:bkp | ext:bak | ext:old | ext:backup' &> /dev/null

#Vulnerable Files
elif [[ $input == "7" || $input == "07"  ]]; then
        xdg-open $google'site:'$domain' ext:action | ext:struts | ext:do' &> /dev/null

#PhpInfo
elif [[ $input == "8" || $input == "08"  ]]; then
        xdg-open $google'site:'$domain' ext:php intitle:phpinfo "published by the PHP Group"' &> /dev/null

#SQL Errors
elif [[ $input == "9" || $input == "09"  ]]; then
        xdg-open $google'site:'$domain' intext:"sql syntax near" | intext:"syntax error has occurred" | intext:"incorrect syntax near" | intext:"unexpected end of SQL command" | intext:"Warning: mysql_connect()" | intext:"Warning: mysql_query()" | intext:"Warning: pg_connect()" | intext:"A syntax error has occurred" | intext:"Access denied for user" "Using password" | intext:"The script whose uid is " "is not allowed to access" | intext:"ORA-00921: unexpected end of SQL command" | intext:"error found handling the request" | intext:"Invision Power Board Database Error" | intext:"Warning: mysql _ query()" "invalid query" | intext:"Error Message : Error loading required libraries"' &> /dev/null

#Login pages
elif [[ $input == "10" ]]; then
        xdg-open $google'site:'$domain' intitle:"log in" | intitle:"login" | intitle:"sign in" | intitle:"signin" | inurl:/login | inurl:/log-in | inurl:/signin | inurl:/sign-in' &> /dev/null

#Open Redirects
elif [[ $input == "11" ]]; then
        xdg-open $google'site:'$domain' inurl:return=https | inurl:return=http | inurl:return?https | inurl:return?http | inurl:src=https | inurl:src=http | inurl:src?https | inurl:src?http | inurl:r=https | inurl:r=http | inurl:r?https | inurl:r?http | inurl:url=https | inurl:url=http | inurl:url?https | inurl:url?http | inurl:u=https | inurl:u=http | inurl:u?https | inurl:u?http | inurl:redirect=https | inurl:redirect=http | inurl:redirect?https | inurl:redirect?http | inurl:link=https | inurl:link=http | inurl:link?https | inurl:link?http' &> /dev/null

#Pastebin Entries
elif [[ $input == "12" ]]; then
        xdg-open $google'site:pastebin.com '$domain &> /dev/null

#Employees on LinkedIn
elif [[ $input == "13" ]]; then
        xdg-open $google'site:linkedin.com employees '$domain &> /dev/null

#Cache
elif [[ $input == "14" ]]; then
        xdg-open $google'cache:'$domain &> /dev/null

#Archives
elif [[ $input == "15" ]]; then
        xdg-open http://web.archive.org/web/*/$domain &> /dev/null

else
	echo -e ""
	echo -e "${yellow}Incorrect input recieved. Exiting :("
	echo -e ""
fi