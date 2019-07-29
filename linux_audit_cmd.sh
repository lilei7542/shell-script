####德勤审计Linux资料需求文档#####


#####0 导出当前系统信息System Information
echo "#####0 导出当前系统信息System Information"
echo 'cat /etc/redhat-release'
cat /etc/redhat-release
echo ''
echo ''

echo "#####1,2 导出用户及密码文件（确认默认账号是否禁用） /etc/passwd and /etc/shadow file"
echo 'cat /etc/passwd'
cat /etc/passwd 
echo ''
echo ''
echo "cat /etc/shadow |awk -F: '{print \$1":"substr(\$2,1,3)\":\"\$3\":\"\$4\":\"\$5\":\"\$6\":\"\$7\":\"\$8\":\"\$9}'"
cat /etc/shadow |awk -F: '{print $1":"substr($2,1,3)":"$3":"$4":"$5":"$6":"$7":"$8":"$9}' 
echo ''
echo ''

echo "####3 导出密码安全设置（本机是否设置密码安全策略） /etc/login.defs command"
echo 'cat /etc/login.defs'
cat /etc/login.defs 
echo ''
echo ''

echo "####4 导出PAM模块设置 /etc/pam.d/login command"
echo 'cat /etc/pam.d/system.auth'
cat /etc/pam.d/system.auth 
echo 'cat /etc/pam.d/system-auth'
cat /etc/pam.d/system-auth 
echo 'cat /etc/pamd.conf'
cat /etc/pamd.conf 
echo ''
echo ''

echo "#####5 导出受信任主机 /etc/hosts.equiv file"
echo 'cat /etc/hosts.equiv'
cat /etc/hosts.equiv 
echo 'cat /etc/hosts.allow'
cat /etc/hosts.allow
echo ''
echo ''

echo "#####6 导出用户组清单（确认管理员组及账号）/etc/group file"
echo 'cat /etc/group '
cat /etc/group 
echo ''
echo ''

echo "#####7 导出提权日志 /var/log/sudolog file"
echo 'cat /var/log/sudo.log '
cat /var/log/sudo.log 
echo 'cat /var/log/syslog '
cat /var/log/syslog 
echo 'cat /var/adm/sulog '
cat /var/adm/sulog
echo 'cat /var/log/secure '
cat /var/log/secure
echo ''
echo ''


echo "#####8 导出sudo root账号/etc/sudoers file"
echo 'cat /etc/sudoers '
cat /etc/sudoers 
echo ''
echo ''

echo "#####9-a 导出关键目录访问权限 access permissions of critical files"
echo 'ls -la /etc/exports '
ls -la /etc/exports 
echo 'ls -la /etc/inetd.conf '
ls -la /etc/inetd.conf 
echo 'ls -la /etc/passwd '
ls -la /etc/passwd 
echo 'ls -la /etc/services '
ls -la /etc/services 
echo 'ls -la /etc/shadow '
ls -la /etc/shadow 
echo 'ls -la /etc/securetty '
ls -la /etc/securetty 
echo 'ls -la /etc/group '
ls -la /etc/group 
echo 'ls -la /etc/ftpusers '
ls -la /etc/ftpusers 
echo ''
echo ''

echo "#####9-b 导出源代码存放目录的访问权限<directories where complied application code resides>"
echo 'ls -la  /app |grep svr'
ls -la  /app |grep svr
echo ''
echo ''

echo "#####9-b 导出数据库存放目录的访问权限<directories where database and other financial relevant data resides>"
echo 'ls -la / |grep "app$"'
ls -la / |grep "app$"
echo ''
echo ''


echo "#####10 导出允许访问终端/etc/securetty file"
echo 'cat /etc/securetty '
cat /etc/securetty 
echo ''
echo ''

echo "#####11 导出禁用root直接登录设置 /etc/ssh/sshd_config"
echo 'cat /etc/ssh/sshd_config '
cat /etc/ssh/sshd_config 
echo 'cat /etc/pam.d/login'
cat cat /etc/pam.d/login
echo ''
echo ''

echo "#####12 导出定时任务文件设置账号 schedule jobs file"
echo 'cat /etc/cron.allow '
cat /etc/cron.allow 
echo 'cat /etc/cron.deny '
cat /etc/cron.deny 
echo 'cat /etc/at.allow '
cat /etc/at.allow 
echo 'cat /etc/at.deny '
cat /etc/at.deny 
echo ''
echo ''

echo "#####13 导出定时任务文件访问权限 schedule jobs file"
echo 'ls -la /etc/cron.allow'
ls -la /etc/cron.allow
echo 'ls -la /etc/cron.deny '
ls -la /etc/cron.deny 
echo 'ls -la /etc/at.allow '
ls -la /etc/at.allow 
echo 'ls -la /etc/at.deny '
ls -la /etc/at.deny 
echo 'ls -la /var/log/cron'
ls -la /var/log/cron
echo 'ls -la /var/spool/cron/* '
ls -la /var/spool/cron/* 
echo 'ls -la /var/spool/at/* '
ls -la /var/spool/at/* 
echo 'ls -la /etc/cron*'
ls -la /etc/cron*
echo 'ls -la /etc/at*'
ls -la /etc/at* 
echo ''
echo ''


echo "#####14 导出cron及at定时任务文件cron&at job files"
echo 'ls -l /var/spool/cron/ | grep -v "total" '
ls -l /var/spool/cron/ | grep -v "total" 
echo 'ls -l /var/spool/at/ | grep -v "total" '
ls -l /var/spool/at/ | grep -v "total" 

echo 'crontab -l'
crontab -l
echo ''
echo ''


echo '#####15 导出cron定时任务执行日志 /var/log/cron file'
echo 'cat /var/log/cron '
cat /var/log/cron 
echo ''
echo ''

echo "#####16 导出软件已安装记录 softwares history"
echo 'rpm -qai '
rpm -qai 
echo ''
echo ''