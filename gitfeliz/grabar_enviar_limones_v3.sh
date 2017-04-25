#!/bin/bash
# el 2017/04
rm -R pomelos/src
cp -r /home/xoldfusion/Descargas/openxava-5.6.1_pomelos/workspace/pomelos  pomelos

cp "/home/xoldfusion/Descargas/openxava-5.6.1_pomelos/workspace/Servers/Tomcat v7.0 Server at localhost-config/server.xml"  /home/xoldfusion/Descargas/openxava-5.6.1_pomelos/tomcat/conf/
cp "/home/xoldfusion/Descargas/openxava-5.6.1_pomelos/workspace/Servers/Tomcat v7.0 Server at localhost-config/context.xml" /home/xoldfusion/Descargas/openxava-5.6.1_pomelos/tomcat/conf/
cp "/home/xoldfusion/Descargas/openxava-5.6.1_pomelos/workspace/Servers/Tomcat v7.0 Server at localhost-config/web.xml" /home/xoldfusion/Descargas/openxava-5.6.1_pomelos/tomcat/conf/
cp /home/xoldfusion/Descargas/openxava-5.6.1_pomelos/tomcat/conf/server.xml /home/xoldfusion/Descargas/pomelos2017a/tomcatfeliz
cp /home/xoldfusion/Descargas/openxava-5.6.1_pomelos/tomcat/conf/context.xml /home/xoldfusion/Descargas/pomelos2017a/tomcatfeliz
cp /home/xoldfusion/Descargas/openxava-5.6.1_pomelos/tomcat/conf/web.xml /home/xoldfusion/Descargas/pomelos2017a/tomcatfeliz
cp tomcatfeliz/server.xml  	pomelos/tomcatfeliz/
cp tomcatfeliz/context.xml  	pomelos/tomcatfeliz/
cp tomcatfeliz/web.xml  	pomelos/tomcatfeliz/
cp *.sh pomelos/gitfeliz
cp  amazon2017llave/*.sh 	pomelos/amazon2017llave/
rm *.*~
rm pomelos/*.*~
cd pomelos
git add -A
git commit -a -m "control de stock - inicio abril2017"
git push -u origin master
