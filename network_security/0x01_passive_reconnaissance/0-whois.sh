#!/bin/bash
whois "$1" | awk '
/^Registrant |^Admin |^Tech / {
    section=$1
}
/^(Registrant|Admin|Tech) (Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Fax|Email):/ {
    split($0, a, ": ")
    key=a[1]
    value=a[2]
    if ($0 ~ /Street/) value=value" "
    if ($0 ~ /Ext:/) {
        print key":,"value
    } else {
        print key","value
    }
}
' > "$1.csv"
