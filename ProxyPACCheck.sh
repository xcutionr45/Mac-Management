#!/bin/bash
PROXYURL=`scutil --proxy | grep HTTPProxy && scutil --proxy | grep HTTPSProxy`
PACCHECK=`scutil --proxy | grep ProxyAutoConfigEnable`
if [[ $PACCHECK == *"1"* ]]; 
then 
    PACURL=`scutil --proxy | grep ProxyAutoConfigURLString`
else
    PACURL="No Pac file set"
fi

echo "<result> $PROXYURL
                $PACURL </result>"
