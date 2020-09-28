class { 'java' :
 package => 'java-1.8.0-openjdk-devel',
 }
 tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
  source_url => 'https://downloads.apache.org/tomcat/tomcat-8/v8.5.58/bin/apache-tomcat-8.5.58.tar.gz',
 }
 tomcat::war { 'SampleWebApp.war':
  deployment_path => '/opt/tomcat/webapps',
  war_source => 'https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war',
  require => Tomcat::Instance['default'],
 }
