# Apache Tiles example

## How to run

### 1. (Current Settings)
Edit ROOT.xml.(Context file of Tomcat's root application)
$ **mvn compile war:inplace**
Start Tomcat and visit http://localhost:8080
(If dependencies change, run $ **mvn clean** first)

### 2.
if you want use jetty plugin, edit pom.xml and run $ **mvn jetty:run**. 
