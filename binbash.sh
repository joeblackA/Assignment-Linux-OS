#!/bin/bash
clear
echo "List of users with /bin/bash CLI in passwd using grep+awk"
grep /bin/bash /etc/passwd | awk -F: '{print $1}'
echo "-----------------"
echo "List of users with /bin/bash CLI in passwd awk only"
awk -F: '$7 == "/bin/bash" {print $1}' /etc/passwd
echo "-----------------"
+
