#!/bin/bash 





set -euo pipefail




CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/job_tools"
mkdir -p "$CONFIG_DIR"



CONFIG_FILE="$CONFIG_DIR/configuration.txt"








#Peronal Information 
read -p  "First Name" Name_First
read -p "Last Name" Name_Last
read -p  "Phone Number" Phone_Number 
read -p "Email" Email 
read -p	"City" City 
read -p "State" State 
read -p "Address" Address 



#Jobs 

#first job
read -p "Current or most recent Job :" Current_Job
read -p "Start Year "	CurrentStartYear
read -p "End Year (or present)" CurrentEndYear 
read -p "Current job Achievement" Current_JOB_ACHIEVEMENT






read -p "Current or most recent Job :" Second_Job
read -p "Start Year " Second_Start_Year
read -p "End Year (or present)" Second_End_Year
read -p "Second job Achievement" Second_JOB_ACHIEVEMENT




read -p "Third Job" Third_Job 
read -p "Start Year "	Third_Start_Year
read -p "End Year (or present)" Third_End_Year 
read -p "Third job Achievement" Third_JOB_ACHIEVEMENT


#Websites 
read -p "Linkedin" LINKEDIN 
read -p "Github" GITHUB 

#Skills and Certs 

read -p "Soft Skills" Soft_skills 
read -p "Certifications" Certs 
read -p "Strength" STR1
read -p "Strength 2" STR2 
read -p "Avalibility" AVAILIBILITY


#FOR COVER LETTER BULLETS
read -p "BULLET POINT ONE"=BULLET_ONE 
read -p "BULLET POINT TWO"=BULLET_TWO
read -p "BULLET POINT THREE"=BULLET_THREE
read -p "BULLET POINT FOUR"=BULLET_FOUR
read -p "BULLET POINT FIVE"=BULLET_FIVE





cat > "$config_file" << EOL
NAME_FIRST="$Name_First"
NAME_LAST="$NAME_Last"
PHONE="$Phone_Number"
EMAIL="$Email"
CITY="$City"
STATE="$State"
ADDRESS="$Address"

CURRENT_JOB="$Current_Job"
CURRENT_START_YEAR="$CurrentStartYear"
CURRENT_END_YEAR="$CurrentEndYear"
CURRENT_JOB_ACHIEVEMENT"=$Current_JOB_ACHIEVEMENT"

SECOND_JOB="$SECOND_Job"
SECOND_START_YEAR="$Second_Start_Year"
SECOND_END_YEAR="$Second_End_Year"
SECOND_JOB_ACHIEVEMENT="$Second_JOB_ACHIEVEMENT"

THIRD_JOB="$Third_Job"
THIRD_START_YEAR="$Third_Start_Year"
THIRD_END_YEAR="$Third_End_Year"
THIRD_JOB_ACHIEVEMENT="$Third_JOB_ACHIEVEMENT"

LINKEDIN="$LINKEDIN"
GITHUB="$GITHUB" 
SOFT_SKILLS="$Soft_skills"
CERTIFICATIONS="$Certs"
Personal_Strenght_one="$STR1"
Personal_Strength_two="$STR2"


BULLET POINT ONE="$BULLET_ONE"
BULLET POINT TWO="$BULLET_TWO"
BULLET POINT THREE="$BULLET_THREE"
BULLET POINT FOUR="$BULLET_FOUR"
BULLET POINT FIVE="$BULLET_FIVE"



EOL


echo "	Saved to $config_file" 
