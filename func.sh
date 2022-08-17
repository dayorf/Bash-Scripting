#!/bin/bash
message="creating user acct of"
useracct(){
echo -n "enter user name to be created: "
read name
echo -n "enter new password: "
read -s password
echo -n "confirm password: "
read -s conpassword
if [ $password -ne $conpassword ]
then
  echo "incorrect password, go back and create a new username and password"
else
  sudo useradd $name
  echo "$password" | sudo passwd "$name" --stdin
  id $name
  grep -i $name /etc/passwd
  echo "acct created successfully"
fi
}

echo $message class1
useracct

echo $message class2
useracct
