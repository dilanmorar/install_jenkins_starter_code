# jenkins

## what is it
an open source automation/continuous integration (CI) tool

## what is it for?
to build and test software continuously, to make it easier to integrate changes to the project

## Getting admin password
go into the vm
```
vagrant ssh
```
type in the following code
```
cat /var/log/jenkins/jenkins.log
```
copy and paste the output into the

When in Jenkins

manage jenkins --> manage plugins
go available and search for nodejs

go back to dashboard

select new item
enter item name

choose freestyle project

General:
write a description

select github project tick box

enter the project url

Source code management:

repository url in ssh

add key
select kind ssh username with private keys
private key select enter directly
create keys
```
ssh-keygen -t rsa
```
copy and paste private keys
private key
specify branch

Build:
Execute shell
```
cd starter_code
npm install
npm run test
```
save
