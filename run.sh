#!/bin/sh
#
#  run.sh -- launch Bento
#

java -cp lib/bento.jar:lib/jetty-http-9.2.3.v20140905.jar:lib/jetty-io-9.2.3.v20140905.jar:lib/jetty-security-9.2.3.v20140905.jar:lib/jetty-server-9.2.3.v20140905.jar:lib/jetty-servlet-9.2.3.v20140905.jar:lib/jetty-util-9.2.3.v20140905.jar:lib/servlet-api-3.1.jar bento.runtime.BentoServer


