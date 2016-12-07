#!/bin/bash
function exec_request()
{
	for i in {1..60}
	do
		echo "$i"
		(curl -l http://127.0.0.1:8889/trigger &)
	    #(curl -H "Content-Type: application/json" -X POST -d 'data={"clientID":"6BAE68A4-3aa0-0001-478e-1a081d409f10","sessionID":"pa31o5jsbhu2iikbdkk5brrpf3","accountID":"","behaviorType":"1","platformType":"1","url":"http://www.jyqq.com/","refer":"http://www.jyqq.com/index/contact","advisoryType":"","formData":"","utmcsr":"pb11-1","utmccn":"B1-S-JD-JT","utmcmd":"sem","utmctr":"jindao","utmcct":"JD"}' http://192.168.1.205/buffer &)
	
		/bin/sleep 1
	done

	return $?
}

exec_request

exit 0