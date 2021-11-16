# nov/16/2021 20:55:23 by RouterOS 6.48.5
# software id = 5ZUK-SCZ5
#
# model = RBD52G-5HacD2HnD
# serial number = A9740A43B599
/caps-man channel add band=5ghz-a/n/ac control-channel-width=20mhz extension-channel=XX frequency="" name=channel5GHz
/caps-man channel add band=2ghz-onlyn control-channel-width=20mhz extension-channel=disabled frequency=2412,2437,2462 name=channel24GHz
/caps-man channel add band=5ghz-a/n/ac control-channel-width=20mhz extension-channel=XX frequency=5180,5200,5220,5240,5260,5280,5300,5320 name=channel5ori
/interface sstp-client add connect-to=sevem48.itl-service.ru name=sstp-sevem48 password=596051 user=smithy verify-server-address-from-certificate=no
/interface sstp-server add disabled=yes name=sstp-chu2 user=chu2
/interface sstp-server add disabled=yes name=sstp-hap-chu user=hap-chu
/interface sstp-server add disabled=yes name=sstp-pevek951 user=pevek951
/interface l2tp-server add name=l2tp-chr-at-lap user=chr-at-lap
/interface l2tp-server add name=l2tp-eest-map user=eest-map
/interface l2tp-server add name=l2tp-kamchatka0 user=kamchatka0
/interface l2tp-server add name=l2tp-psi-work user=psi-work
/interface l2tp-server add name=l2tp-pyneng-lab user=pyneng-lab
/interface l2tp-server add name=l2tp-vol2 user=vol2
/interface l2tp-server add name=l2tp-volchie user=volchie
/interface bridge add admin-mac=6E:5A:74:61:54:FF auto-mac=no mtu=1500 name=br-guests
/interface bridge add name=br-ike2
/interface bridge add admin-mac=CE:37:81:28:CC:3D auto-mac=no fast-forward=no name=br-lan vlan-filtering=yes
/interface ethernet set [ find default-name=ether1 ] auto-negotiation=no speed=100Mbps
/interface ethernet set [ find default-name=ether2 ] comment=OnLime speed=100Mbps
/interface ethernet set [ find default-name=ether3 ] comment=RT speed=100Mbps
/interface ethernet set [ find default-name=ether4 ] auto-negotiation=no comment=VOIP speed=100Mbps
/interface ethernet set [ find default-name=ether5 ] comment=191 speed=100Mbps
/interface l2tp-client add allow=mschap2 connect-to=81.20.197.42 ipsec-secret=Nexponka mrru=1500 name=l2tp-D2A password=596051596051 user=ppp1-smithy
/interface l2tp-client add allow=mschap2 connect-to=213.247.232.243 ipsec-secret=5u017g3v max-mru=1400 max-mtu=1400 mrru=1504 name=l2tp-KADIR password=Kuz87vla user=smithy-it
/interface l2tp-client add allow=mschap2 connect-to=sevem48.itl-service.ru ipsec-secret="Sevem4\$office" name=l2tp-sevem48 password=p7dv1a30mx use-ipsec=yes user=delaemsite
/interface l2tp-client add allow=mschap2 connect-to=84a107471356.sn.mynetname.net name=l2tp-smi password=frzp8ol1ot user=kadir
/interface pptp-client add allow=mschap2 connect-to=195.208.202.185 max-mru=1400 max-mtu=1400 name=pptp-pevek3011 password=5nGmmPhd user=id015861
/interface vlan add disabled=yes interface=ether2 name=ipoe-1754 vlan-id=1754
/interface vlan add disabled=yes interface=ether2 name=mngt-1054 vlan-id=1054
/interface vlan add disabled=yes interface=ether2 name=real-1850 vlan-id=1850
/interface vlan add comment=Guests interface=br-lan name=vlan-14 vlan-id=14
/caps-man datapath add bridge=br-lan name=datapath1 vlan-id=14 vlan-mode=use-tag
/caps-man datapath add bridge=br-lan client-to-client-forwarding=yes name=datapath2 vlan-id=1 vlan-mode=use-tag
/caps-man security add authentication-types=wpa2-psk encryption=aes-ccm group-encryption=aes-ccm name=security1 passphrase=55667788
/caps-man security add authentication-types=wpa2-psk encryption=aes-ccm group-encryption=aes-ccm name=security2 passphrase=596051un3455
/caps-man configuration add datapath=datapath1 mode=ap name=cfg1-Guests security=security1 ssid=192-Guests
/caps-man configuration add channel=channel24GHz country=russia4 datapath=datapath2 installation=indoor mode=ap name=cfg1-lan security=security2 ssid=192
/caps-man configuration add channel=channel5ori country=russia4 datapath=datapath2 mode=ap name=cfg-5GHz security=security2 ssid=192
/interface list add comment=defconf name=WAN
/interface list add comment=defconf name=LAN
/interface list add exclude=dynamic name=discover
/interface list add name=mactel
/interface list add name=mac-winbox
/interface list add name=PSI
/interface list add name=VOIP
/interface list add name=ITL
/interface list add name=SSTP
/interface list add name=GUESTS
/interface list add name=L2TP
/interface list add name=ALLOW
/interface list add name=ISP
/interface wireless security-profiles set [ find default=yes ] authentication-types=wpa2-psk eap-methods="" mode=dynamic-keys supplicant-identity=MikroTik wpa2-pre-shared-key=55667788
/interface wireless security-profiles add authentication-types=wpa2-psk eap-methods="" name=HS supplicant-identity=MikroTik wpa2-pre-shared-key=596051un3455
/interface wireless security-profiles add authentication-types=wpa2-psk eap-methods="" management-protection=allowed mode=dynamic-keys name=profile-guest supplicant-identity="" wpa2-pre-shared-key=55667788
/interface wireless security-profiles add authentication-types=wpa2-psk eap-methods="" management-protection=allowed mode=dynamic-keys name=profile-my supplicant-identity="" wpa2-pre-shared-key=596051un3455
/interface wireless
# managed by CAPsMAN
# channel: 2412/20/gn(20dBm), SSID: 192, CAPsMAN forwarding
set [ find default-name=wlan1 ] antenna-gain=0 band=2ghz-g/n country=russia3 distance=indoors mode=ap-bridge security-profile=profile-my ssid=192 station-roaming=enabled tx-power=12 tx-power-mode=all-rates-fixed wireless-protocol=802.11 wps-mode=disabled
/interface wireless
# managed by CAPsMAN
# channel: 5260/20-Ce/ac/P(20dBm), SSID: 192, CAPsMAN forwarding
set [ find default-name=wlan2 ] antenna-gain=0 country=russia3 mode=ap-bridge security-profile=profile-my ssid=192-5 station-roaming=enabled wps-mode=disabled
/ip firewall layer7-protocol add name=banks regexp="^.+(zenit.ru).*\$"
/ip firewall layer7-protocol add name=youtube regexp="^.+(youtube).*\$"
/ip firewall layer7-protocol add name=video regexp="^.+youtube.com|youtu.be|netflix.com|vimeo.com|screen.yahoo.com|dailyMotion.com|hulu.com|twitch.tv|liveleak.com|vine.co|break.com|tv.com|metacafe.com|viewster.com.*\$"
/ip firewall layer7-protocol add name=social regexp="^.+vk.com|facebook.com|ok.ru|my.mail.ru.*\$"
/ip firewall layer7-protocol add name=sc.int regexp=sc.int
/ip ipsec mode-config add name=ike2-conf responder=no
/ip ipsec policy group add name=ike2-rw
/ip ipsec policy group add name=group-smithy.promsvyaz.ru
/ip ipsec profile add enc-algorithm=aes-256,aes-128,3des name=ike2-rw
/ip ipsec profile add dh-group=modp2048,modp1536,modp1024 enc-algorithm=aes-256,aes-192,aes-128 hash-algorithm=sha256 name=profile-smithy.promsvyaz.ru
/ip ipsec peer add address=194.32.230.1/32 disabled=yes exchange-mode=ike2 name=peer3976 profile=ike2-rw
/ip ipsec peer add exchange-mode=ike2 local-address=81.20.196.242 name=peer-81.20.196.242 passive=yes profile=profile-smithy.promsvyaz.ru
/ip ipsec proposal add auth-algorithms=sha512,sha256,sha1 enc-algorithms=aes-256-cbc,aes-128-cbc lifetime=8h name=ike2-rw pfs-group=none
/ip ipsec proposal add auth-algorithms=sha512,sha256,sha1 enc-algorithms=aes-256-cbc,aes-256-ctr,aes-256-gcm,aes-192-ctr,aes-192-gcm,aes-128-cbc,aes-128-ctr,aes-128-gcm lifetime=8h name=proposal-smithy.promsvyaz.ru pfs-group=none
/ip pool add name=voip ranges=192.168.131.210
/ip pool add name=dhcp_lan ranges=192.168.13.18-192.168.13.30
/ip pool add name=vpn ranges=192.168.13.50-192.168.13.57
/ip pool add name=pool-smithy.promsvyaz.ru ranges=192.168.13.130-192.168.13.158
/ip pool add name=dhcp_guests ranges=192.168.14.2-192.168.14.62
/ip dhcp-server add address-pool=voip disabled=no interface=ether4 lease-time=1d10m name=voip
/ip dhcp-server add address-pool=dhcp_lan disabled=no interface=br-lan lease-time=8h name=dhcp1
/ip dhcp-server add address-pool=dhcp_guests disabled=no interface=vlan-14 lease-time=3h name=dhcp2
/ip ipsec mode-config add address-pool=pool-smithy.promsvyaz.ru address-prefix-length=32 name=modecfg-smithy.promsvyaz.ru split-include=0.0.0.0/0 static-dns=192.168.13.129 system-dns=no
/ppp profile add change-tcp-mss=yes dns-server=192.168.13.17 interface-list=L2TP local-address=192.168.13.49 name=profile-ovpn on-down="/ip firewall address-list remove [find list=test and address=\$\"caller-id\"]" on-up=":log warning (\"Successful connection with \".(\$\"caller-id\"))\r\
    \n/ip firewall address-list add address=\$\"caller-id\"  timeout=8h list=test " only-one=yes remote-address=vpn use-encryption=yes
/ppp profile add change-tcp-mss=yes name=profile-out on-up="# isp2 \r\
    \n:local wan2 [/interface get [find comment=ISP2] name];\r\
    \n:local NewGW [/ip address get [find interface=\$wan2] network];\r\
    \n/ip route set [find comment=\"For recursion via ISP2\"] gateway=\$NewGW;\r\
    \n:log warning (\"New ISP2 gateway: \".(\$NewGW))}"
/ppp profile add bridge=br-guests name=profile1
/ppp profile add comment="for L2TP to ISP3" interface-list=WAN name=isp3_client on-down="/ip firewall nat remove  [find comment=\"NAT via ISP3\"];\r\
    \n/ip route remove [find comment=\"For recursion via ISP3\"];\r\
    \n/ip route remove [find comment=\"Unmarked via ISP3\"];\r\
    \n/ip route remove [find comment=\"Marked via ISP3 Main\"];\r\
    \n/ip route remove [find comment=\"Marked via ISP1 Backup2\"];\r\
    \n/ip route remove [find comment=\"Marked via ISP2 Backup2\"];\r\
    \n/ip route rule set [find comment=\"From ISP3 IP to Inet\"] disabled=yes;" on-up="/ip route add check-gateway=ping comment=\"For recursion via ISP3\" distance=1 dst-address=4.2.2.3/32 gateway=\$\"remote-address\" scope=10\r\
    \n/ip route add check-gateway=ping comment=\"Unmarked via ISP3\" distance=3 gateway=4.2.2.3;\r\
    \n/ip route add comment=\"Marked via ISP3 Main\" distance=1 gateway=4.2.2.3 routing-mark=PSI;\r\
    \n#/ip route add comment=\"Marked via ISP1 Backup2\" distance=3 gateway=4.2.2.3 routing-mark=to_isp1;\r\
    \n#/ip route add comment=\"Marked via ISP2 Backup2\" distance=3 gateway=4.2.2.3 routing-mark=to_isp2;\r\
    \n/ip firewall mangle set [find comment=\"Connmark in from ISP3\"] in-interface=\$\"interface\";\r\
    \n#/ip firewall nat add action=src-nat chain=srcnat ipsec-policy=out,none out-interface=\$\"interface\" to-addresses=\$\"local-address\" comment=\"NAT via ISP3\" place-before=1;\r\
    \nif ([/ip route rule find comment=\"From ISP3 IP to Inet\"] =\"\") do={\r\
    \n   /ip route rule add comment=\"From ISP3 IP to Inet\" src-address=\$\"local-address\" table=PSI \r\
    \n} else={\r\
    \n   /ip route rule set [find comment=\"From ISP3 IP to Inet\"] disabled=no src-address=\$\"local-address\"\r\
    \n};\r\
    \n"
/ppp profile add comment="for PPPoE to ISP2" name=isp2_client on-down="/ip firewall nat remove  [find comment=\"NAT via ISP2\"];\r\
    \n/ip route remove [find comment=\"For recursion via ISP2\"];\r\
    \n/ip route remove [find comment=\"Unmarked via ISP2\"];\r\
    \n/ip route remove [find comment=\"Marked via ISP2 Main\"];\r\
    \n/ip route remove [find comment=\"Marked via ISP2 Guests\"];\r\
    \n/ip route remove [find comment=\"Marked via ISP2 Backup1\"];\r\
    \n/ip route rule set [find comment=\"From ISP2 IP to Inet\"] disabled=yes;" on-up="/ip route add check-gateway=ping comment=\"For recursion via ISP2\" distance=1 dst-address=4.2.2.2/32 gateway=\$\"remote-address\" scope=10\r\
    \n/ip route add check-gateway=ping comment=\"Unmarked via ISP2\" distance=2 gateway=4.2.2.2;\r\
    \n/ip route add comment=\"Marked via ISP2 Main\" distance=1 gateway=4.2.2.2 routing-mark=RT;\r\
    \n/ip route add comment=\"Marked via ISP2 Guests\" distance=3 gateway=4.2.2.2@main routing-mark=GUEST;\r\
    \n#/ip route add comment=\"Marked via ISP2 Backup2\" distance=3 gateway=4.2.2.2 routing-mark=to_isp2;\r\
    \n/ip firewall mangle set [find comment=\"Connmark in from ISP2\"] in-interface=\$\"interface\";\r\
    \n#/ip firewall nat add action=src-nat chain=srcnat ipsec-policy=out,none out-interface=\$\"interface\" to-addresses=\$\"local-address\" comment=\"NAT via ISP3\" place-before=1;\r\
    \nif ([/ip route rule find comment=\"From ISP2 IP to Inet\"] =\"\") do={\r\
    \n   /ip route rule add comment=\"From ISP2 IP to Inet\" src-address=\$\"local-address\" table=RT \r\
    \n} else={\r\
    \n   /ip route rule set [find comment=\"From ISP2 IP to Inet\"] disabled=no src-address=\$\"local-address\"\r\
    \n};\r\
    \n"
/ppp profile set *FFFFFFFE use-encryption=required
/interface sstp-client add connect-to=office.loginet.ee name=sstp-loginet password=shy1Cet6uoj profile=default-encryption user=vlakuz
/interface pppoe-client add comment=ISP2 interface=ether3 name=pppoe-rt password=uq7OUA9c profile=profile-out user=72390-1061@lpc
/interface l2tp-client add connect-to=90.190.12.129 ipsec-secret=6gQIyVX9B2q76fcS3sKT name=l2tp-GRID password=07eiqewr7vb7 profile=default use-ipsec=yes user=smithy-it
/interface l2tp-client add allow=chap,mschap2 connect-to=vpn.avalanchelabs.com ipsec-secret=9m55we99tExWqS55are55Qym4sydaU55heroes55ALEA5C max-mru=1400 max-mtu=1400 mrru=1500 name=l2tp-avalanche-tmroots password=Qobrv1nkU2qjr8jj7KvJ profile=default use-ipsec=yes user=avalanche-tmroots
/interface l2tp-client add allow=mschap2 connect-to=vpn.itl-service.ru disabled=no ipsec-secret=bdvoVco3u1L0BPDE8SCX max-mru=1400 max-mtu=1400 mrru=1600 name=l2tp-itl password=wMosSJlTVVOzAUo5yKNL profile=default user=smithyhome
/interface l2tp-client add allow=mschap2 connect-to=vpn.smithy.su disabled=no ipsec-secret=D18nmCmeKx9S07LQqj8f max-mru=1400 max-mtu=1400 name=l2tp-o1 password=cg8Zoyzi3Fv8oh profile=default use-ipsec=yes user=msk13
/interface l2tp-client add connect-to=otto.gridgroup.ee ipsec-secret=MCHKQIwSOHoeEVCDYxLf name=l2tp-otto password=Tanskaa12! profile=default use-ipsec=yes user=grid-aleksandr
/interface l2tp-client add allow=mschap2 comment=ISP3 connect-to=10.69.94.25 ipsec-secret=Nexponka596051 mrru=1600 name=l2tp-psi password=Nexponka profile=default user=smithy
/queue simple add dst=ipoe-1754 max-limit=99M/99M name=ParrentZT1 target=""
/queue simple add limit-at=15M/15M max-limit=20M/20M name=zt1tvK parent=ParrentZT1 target=192.168.13.18/32
/queue simple add max-limit=98M/98M name=zt1all parent=ParrentZT1 target=192.168.13.0/24
/routing bgp instance set default as=64999 disabled=yes ignore-as-path-len=yes router-id=81.20.196.242
/routing bgp instance add client-to-client-reflection=no name=bgp-eest router-id=172.26.1.2
/routing ospf instance set [ find default=yes ] redistribute-connected=as-type-1 router-id=192.168.13.13
/snmp community set [ find default=yes ] addresses=172.16.53.1/32,192.168.13.16/28
/user group set full policy=local,telnet,ssh,ftp,reboot,read,write,policy,test,winbox,password,web,sniff,sensitive,api,romon,dude,tikapp
/caps-man access-list add action=reject allow-signal-out-of-range=10s disabled=no mac-address=9E:62:88:6E:C5:4D ssid-regexp=192-5
/caps-man access-list add action=reject allow-signal-out-of-range=10s disabled=no mac-address=9E:62:88:6E:C5:4D ssid-regexp=192
/caps-man manager set enabled=yes
/caps-man provisioning add action=create-dynamic-enabled hw-supported-modes=gn,g master-configuration=cfg1-lan name-format=identity slave-configurations=cfg1-Guests
/caps-man provisioning add action=create-dynamic-enabled hw-supported-modes=a,an,ac master-configuration=cfg-5GHz name-format=identity slave-configurations=cfg1-Guests
/interface bridge port add bridge=br-lan interface=ether1
/interface bridge port add bridge=br-lan interface=ether5 pvid=14
/ip firewall connection tracking set tcp-established-timeout=1h
/ip neighbor discovery-settings set discover-interface-list=!WAN
/interface bridge vlan add bridge=br-lan tagged=br-lan,ether1 vlan-ids=14
/interface l2tp-server server set authentication=mschap2 default-profile=profile-ovpn enabled=yes ipsec-secret=Nexponka max-mru=1400 max-mtu=1400 mrru=1600 use-ipsec=yes
/interface list member add comment=defconf interface=ether1 list=WAN
/interface list member add interface=wlan1 list=discover
/interface list member add interface=wlan2 list=discover
/interface list member add interface=ether3 list=discover
/interface list member add interface=ether4 list=discover
/interface list member add interface=ether5 list=discover
/interface list member add interface=ether4 list=VOIP
/interface list member add interface=pppoe-rt list=WAN
/interface list member add interface=br-lan list=LAN
/interface list member add interface=br-guests list=GUESTS
/interface list member add interface=l2tp-itl list=WAN
/interface list member add interface=l2tp-itl list=ITL
/interface list member add interface=l2tp-D2A list=WAN
/interface list member add interface=l2tp-volchie list=LAN
/interface list member add interface=ether2 list=WAN
/interface list member add interface=mngt-1054 list=WAN
/interface list member add interface=l2tp-psi list=PSI
/interface list member add interface=ipoe-1754 list=WAN
/interface list member add interface=l2tp-psi list=WAN
/interface list member add interface=l2tp-kamchatka0 list=WAN
/interface list member add interface=l2tp-KADIR list=WAN
/interface list member add interface=l2tp-psi list=ISP
/interface list member add interface=pppoe-rt list=ISP
/interface list member add interface=ipoe-1754 list=ISP
/interface list member add interface=l2tp-GRID list=WAN
/interface list member add interface=l2tp-psi-work list=ITL
/interface list member add interface=l2tp-psi-work list=WAN
/interface list member add interface=l2tp-pyneng-lab list=WAN
/interface list member add interface=real-1850 list=WAN
/interface list member add interface=real-1850 list=ISP
/interface list member add interface=sstp-hap-chu list=WAN
/interface list member add interface=sstp-pevek951 list=WAN
/interface list member add interface=pptp-pevek3011 list=WAN
/interface list member add interface=sstp-loginet list=WAN
/interface list member add interface=sstp-chu2 list=WAN
/interface list member add interface=l2tp-chr-at-lap list=LAN
/interface list member add interface=l2tp-o1 list=ALLOW
/interface list member add interface=l2tp-itl list=ALLOW
/interface ovpn-server server set auth=sha1 certificate=smithy.promsvyaz.ru cipher=aes128 default-profile=profile-ovpn enabled=yes netmask=28
/interface pptp-server server set authentication=mschap2 default-profile=profile-ovpn enabled=yes
/interface sstp-server server set authentication=mschap2 certificate=smithy.promsvyaz.ru enabled=yes force-aes=yes
/interface wireless cap
# 
set caps-man-addresses=127.0.0.1 enabled=yes interfaces=wlan1,wlan2
/ip address add address=192.168.131.209/30 disabled=yes interface=ether4 network=192.168.131.208
/ip address add address=192.168.13.17/28 interface=br-lan network=192.168.13.16
/ip address add address=192.168.13.129/27 interface=br-ike2 network=192.168.13.128
/ip address add address=192.168.14.1/26 interface=vlan-14 network=192.168.14.0
/ip cloud set ddns-enabled=yes
/ip dhcp-client add default-route-distance=3 dhcp-options=clientid,hostname disabled=no interface=ether2 use-peer-dns=no use-peer-ntp=no
/ip dhcp-client add add-default-route=special-classless default-route-distance=200 interface=ipoe-1754 use-peer-dns=no use-peer-ntp=no
/ip dhcp-server lease add address=192.168.13.22 client-id=1:0:28:f8:fb:b0:17 mac-address=00:28:F8:FB:B0:17 server=dhcp1
/ip dhcp-server network add address=192.168.13.16/28 dns-server=192.168.13.17 domain=home gateway=192.168.13.17 ntp-server=192.168.13.17
/ip dhcp-server network add address=192.168.14.0/26 dns-server=77.88.8.8,77.88.8.1 gateway=192.168.14.1
/ip dhcp-server network add address=192.168.131.208/30 dns-server=192.168.131.209 gateway=192.168.131.209 ntp-server=192.168.131.209
/ip dns set allow-remote-requests=yes servers=77.88.8.8
/ip dns static add address=127.0.0.1 disabled=yes regexp="^.+(youtube).*\$"
/ip dns static add address=192.168.13.22 name=smithy-gg.home
/ip dns static add address=192.168.13.28 name=aclite.smithy.home
/ip firewall address-list add address=vpn.itl-service.ru list=mngt
/ip firewall address-list add address=81.20.197.42 list=mngt
/ip firewall address-list add address=217.107.198.12 list=mngt
/ip firewall address-list add address=192.168.131.208/29 list=nomasq-wan
/ip firewall address-list add address=10.69.108.2 list=mngt
/ip firewall address-list add address=81.20.192.32 list=mngt
/ip firewall address-list add address=192.168.13.128/27 list=ike2
/ip firewall address-list add address=81.20.197.43 list=mngt
/ip firewall address-list add address=172.16.176.0/27 list=mngt
/ip firewall address-list add address=o1.smithy.su list=mngt
/ip firewall address-list add address=95.108.175.28 comment=yndx list=mngt
/ip firewall address-list add address=141.8.151.229 comment=yndx list=mngt
/ip firewall address-list add address=95.108.172.134 list=mngt
/ip firewall address-list add address=172.16.176.1 list=OSPF
/ip firewall address-list add address=172.16.176.1 list=mngt
/ip firewall filter add action=accept chain=input comment="defconf: accept established,related,untracked" connection-state=established,related,untracked
/ip firewall filter add action=drop chain=input comment="defconf: drop invalid" connection-state=invalid
/ip firewall filter add action=accept chain=input comment="defconf: accept ICMP" protocol=icmp
/ip firewall filter add action=accept chain=input comment="defconf: accept to local loopback (for CAPsMAN)" dst-address=127.0.0.1
/ip firewall filter add chain=input in-interface-list=ALLOW protocol=ospf
/ip firewall filter add action=accept chain=input dst-port=2234,8291 protocol=tcp src-address-list=mngt
/ip firewall filter add action=drop chain=input comment="defconf: drop all not coming from LAN" in-interface-list=!LAN
/ip firewall filter add action=accept chain=forward comment="defconf: accept in ipsec policy" ipsec-policy=in,ipsec
/ip firewall filter add action=accept chain=forward comment="defconf: accept out ipsec policy" ipsec-policy=out,ipsec
/ip firewall filter add action=fasttrack-connection chain=forward comment="defconf: fasttrack" connection-state=established,related
/ip firewall filter add action=accept chain=forward comment="defconf: accept established,related, untracked" connection-state=established,related,untracked
/ip firewall filter add action=drop chain=forward comment="defconf: drop invalid" connection-state=invalid
/ip firewall filter add action=drop chain=forward comment="defconf: drop all from WAN not DSTNATed" connection-nat-state=!dstnat connection-state=new in-interface-list=WAN
/ip firewall mangle add action=mark-connection chain=prerouting dst-address=192.168.13.17 dst-port=53 layer7-protocol=sc.int new-connection-mark=sc.int-fwd passthrough=yes protocol=udp
/ip firewall mangle add action=mark-connection chain=prerouting comment=GUEST connection-mark=no-mark in-interface=vlan-14 new-connection-mark=con-guest passthrough=yes
/ip firewall mangle add action=mark-routing chain=prerouting connection-mark=con-guest in-interface=l2tp-itl new-routing-mark=GUEST passthrough=no
/ip firewall mangle
# l2tp-psi not ready
add action=mark-routing chain=prerouting connection-mark=con-guest in-interface=l2tp-psi new-routing-mark=GUEST passthrough=no
/ip firewall mangle add action=mark-routing chain=prerouting connection-mark=con-guest in-interface=ether2 new-routing-mark=GUEST passthrough=no
/ip firewall mangle add action=mark-connection chain=prerouting comment="PCC to ZT" connection-mark=no-mark disabled=yes in-interface-list=LAN new-connection-mark=con-zt passthrough=yes per-connection-classifier=src-address:3/0
/ip firewall mangle add action=mark-connection chain=prerouting connection-mark=no-mark disabled=yes in-interface-list=LAN new-connection-mark=con-zt passthrough=yes per-connection-classifier=src-address:3/1
/ip firewall mangle add action=mark-connection chain=prerouting comment="PCC to RT" connection-mark=no-mark disabled=yes in-interface-list=LAN new-connection-mark=con-rt passthrough=yes per-connection-classifier=src-address:3/2
/ip firewall mangle add action=mark-connection chain=prerouting comment=MAIN connection-mark=no-mark in-interface=ether2 new-connection-mark=con-rt passthrough=yes
/ip firewall mangle
# real-1850 not ready
add action=mark-connection chain=prerouting connection-mark=no-mark in-interface=real-1850 new-connection-mark=con-zt passthrough=yes
/ip firewall mangle
# l2tp-psi not ready
add action=mark-connection chain=prerouting connection-mark=no-mark in-interface=l2tp-psi new-connection-mark=con-psi passthrough=yes
/ip firewall mangle
# l2tp-psi-work not ready
add action=mark-connection chain=prerouting connection-mark=no-mark in-interface=l2tp-psi-work new-connection-mark=con-psiwork passthrough=yes
/ip firewall mangle add action=mark-routing chain=prerouting connection-mark=con-rt in-interface-list=!ISP new-routing-mark=RT passthrough=yes
/ip firewall mangle add action=mark-routing chain=prerouting connection-mark=con-zt in-interface-list=!ISP new-routing-mark=ZT passthrough=yes
/ip firewall mangle add action=mark-routing chain=prerouting connection-mark=con-psi in-interface-list=!ISP new-routing-mark=PSI passthrough=yes
/ip firewall mangle add action=mark-routing chain=prerouting connection-mark=con-psiwork in-interface-list=!ISP new-routing-mark=PSIWORK passthrough=yes
/ip firewall mangle add action=mark-routing chain=output connection-mark=con-rt new-routing-mark=RT passthrough=yes
/ip firewall mangle add action=mark-routing chain=output connection-mark=con-zt new-routing-mark=ZT passthrough=yes
/ip firewall mangle add action=mark-routing chain=output connection-mark=con-psi new-routing-mark=PSI passthrough=yes
/ip firewall mangle add action=mark-routing chain=output connection-mark=con-psiwork new-routing-mark=PSIWORK passthrough=yes
/ip firewall mangle add action=mark-connection chain=prerouting connection-mark=no-mark disabled=yes dst-port=53 layer7-protocol=youtube new-connection-mark=con-youtube passthrough=yes protocol=udp src-address=192.168.17.30
/ip firewall mangle add action=mark-packet chain=prerouting connection-mark=con-youtube disabled=yes new-packet-mark=pckg-youtube passthrough=yes
/ip firewall mangle add action=change-mss chain=forward comment="IKE2 Clamp TCP MSS" ipsec-policy=in,ipsec new-mss=1300 passthrough=yes protocol=tcp src-address=192.168.13.128/27 tcp-flags=syn tcp-mss=!0-1300
/ip firewall mangle add action=change-mss chain=forward comment="IKE2 Clamp TCP MSS" dst-address=192.168.13.128/27 ipsec-policy=in,ipsec new-mss=1300 passthrough=yes protocol=tcp tcp-flags=syn tcp-mss=!0-1300
/ip firewall nat add action=masquerade chain=srcnat comment="MASQ for PSI" out-interface-list=PSI src-address=!192.168.131.208/30
/ip firewall nat add action=dst-nat chain=dstnat comment="for dns sc.int" connection-mark=sc.int-fwd to-addresses=192.168.1.11
/ip firewall nat add action=masquerade chain=srcnat comment="masq guest" out-interface-list=WAN routing-table=GUEST
/ip firewall nat add action=masquerade chain=srcnat disabled=yes out-interface=l2tp-D2A
/ip firewall nat add action=masquerade chain=srcnat comment="defconf: masquerade" ipsec-policy=out,none out-interface-list=WAN src-address-list=!nomasq-wan
/ip firewall nat add action=redirect chain=dstnat disabled=yes dst-port=53 in-interface-list=LAN protocol=udp
/ip firewall nat add action=dst-nat chain=dstnat disabled=yes dst-port=69 in-interface=real-1850 protocol=udp to-addresses=192.168.13.22
/ip ipsec identity add auth-method=digital-signature certificate=cert_export_c1@bitbyte.ee.p12_0 disabled=yes generate-policy=port-strict mode-config=ike2-conf peer=peer3976 policy-template-group=ike2-rw
/ip ipsec identity add auth-method=digital-signature certificate=smithy.promsvyaz.ru generate-policy=port-strict match-by=certificate mode-config=modecfg-smithy.promsvyaz.ru peer=peer-81.20.196.242 policy-template-group=group-smithy.promsvyaz.ru remote-certificate=smithyad@smithy.promsvyaz.ru remote-id=user-fqdn:smithyad@smithy.promsvyaz.ru
/ip ipsec identity add auth-method=digital-signature certificate=smithy.promsvyaz.ru generate-policy=port-strict match-by=certificate mode-config=modecfg-smithy.promsvyaz.ru peer=peer-81.20.196.242 policy-template-group=group-smithy.promsvyaz.ru remote-certificate=smithylt@smithy.promsvyaz.ru remote-id=user-fqdn:smithylt@smithy.promsvyaz.ru
/ip ipsec identity add auth-method=digital-signature certificate=smithy.promsvyaz.ru generate-policy=port-strict match-by=certificate mode-config=modecfg-smithy.promsvyaz.ru peer=peer-81.20.196.242 policy-template-group=group-smithy.promsvyaz.ru remote-certificate=y.gryzov@smithy.promsvyaz.ru remote-id=user-fqdn:y.gryzov@smithy.promsvyaz.ru
/ip ipsec policy add dst-address=0.0.0.0/0 group=ike2-rw proposal=ike2-rw src-address=0.0.0.0/0 template=yes
/ip ipsec policy add dst-address=192.168.13.128/27 group=group-smithy.promsvyaz.ru proposal=proposal-smithy.promsvyaz.ru src-address=0.0.0.0/0 template=yes
/ip route add distance=1 gateway=10.68.0.1@main routing-mark=GUEST
/ip route add check-gateway=ping disabled=yes distance=12 gateway=4.2.2.3@main routing-mark=GUEST
/ip route add check-gateway=ping disabled=yes distance=6 gateway=4.2.2.2@main routing-mark=GUEST
/ip route add check-gateway=ping comment="Unmarked via ISP3" disabled=yes distance=7 gateway=4.2.2.3
/ip route add check-gateway=ping disabled=yes distance=4 gateway=4.2.2.2
/ip route add check-gateway=ping disabled=yes distance=2 gateway=4.2.2.1
/ip route add comment="For recursion via ISP1" disabled=yes distance=2 dst-address=4.2.2.1/32 gateway=10.127.179.1 scope=10
/ip route add comment="For recursion via ISP1" disabled=yes distance=1 dst-address=4.2.2.1/32 gateway=213.59.132.113 scope=10
/ip route add comment="For recursion via ISP2" distance=1 dst-address=4.2.2.2/32 gateway=10.68.0.1 scope=10
/ip route add comment="For recursion via ISP3" disabled=yes distance=1 dst-address=4.2.2.3/32 gateway=172.16.3.100 scope=10
/ip route add distance=1 dst-address=172.16.60.252/30 gateway=192.168.13.28
/ip route add distance=1 dst-address=172.16.176.0/24 gateway=172.16.176.1
/ip route add disabled=yes distance=1 dst-address=172.17.252.0/22 gateway=l2tp-KADIR
/ip route add distance=1 dst-address=192.168.13.160/28 gateway=192.168.13.20
/ip route add distance=1 dst-address=192.168.131.208/30 gateway=192.168.13.28
/ip route rule add disabled=yes src-address=10.45.111.135/32 table=users
/ip route rule add disabled=yes dst-address=192.168.13.32/28 table=GUEST
/ip route rule add disabled=yes dst-address=192.168.0.0/16 table=main
/ip route rule add disabled=yes dst-address=172.16.0.0/12 table=main
/ip route rule add disabled=yes dst-address=10.0.0.0/8 table=main
/ip route rule add comment=tv disabled=yes src-address=192.168.13.18/32 table=ZT
/ip route rule add comment=tv disabled=yes src-address=192.168.13.27/32 table=ZT
/ip route rule add comment=tv disabled=yes src-address=192.168.13.21/32 table=ZT
/ip route vrf add interfaces=br-guests,vlan-14 routing-mark=GUEST
/ip service set telnet disabled=yes
/ip service set ftp disabled=yes
/ip service set www disabled=yes
/ip service set ssh port=2234
/ip service set api disabled=yes
/ip service set api-ssl disabled=yes
/ip ssh set allow-none-crypto=yes always-allow-password-login=yes forwarding-enabled=remote
/ipv6 address add address=::1 from-pool=onlime-pooil interface=br-lan
/ipv6 dhcp-client add add-default-route=yes default-route-distance=10 interface=ether2 pool-name=onlime-pooil pool-prefix-length=56 request=address,prefix
/ipv6 firewall address-list add address=::/128 comment="defconf: unspecified address" list=bad_ipv6
/ipv6 firewall address-list add address=::1/128 comment="defconf: lo" list=bad_ipv6
/ipv6 firewall address-list add address=fec0::/10 comment="defconf: site-local" list=bad_ipv6
/ipv6 firewall address-list add address=::ffff:0.0.0.0/96 comment="defconf: ipv4-mapped" list=bad_ipv6
/ipv6 firewall address-list add address=::/96 comment="defconf: ipv4 compat" list=bad_ipv6
/ipv6 firewall address-list add address=100::/64 comment="defconf: discard only " list=bad_ipv6
/ipv6 firewall address-list add address=2001:db8::/32 comment="defconf: documentation" list=bad_ipv6
/ipv6 firewall address-list add address=2001:10::/28 comment="defconf: ORCHID" list=bad_ipv6
/ipv6 firewall address-list add address=3ffe::/16 comment="defconf: 6bone" list=bad_ipv6
/ipv6 firewall address-list add address=::224.0.0.0/100 comment="defconf: other" list=bad_ipv6
/ipv6 firewall address-list add address=::127.0.0.0/104 comment="defconf: other" list=bad_ipv6
/ipv6 firewall address-list add address=::/104 comment="defconf: other" list=bad_ipv6
/ipv6 firewall address-list add address=::255.0.0.0/104 comment="defconf: other" list=bad_ipv6
/ipv6 firewall address-list add address=2a02:6b8::/29 list=yandex
/ipv6 firewall address-list add address=2a0e:fd80::/29 list=yandex
/ipv6 firewall filter add action=accept chain=input comment="defconf: accept established,related,untracked" connection-state=established,related,untracked
/ipv6 firewall filter add action=drop chain=input comment="defconf: drop invalid" connection-state=invalid
/ipv6 firewall filter add action=accept chain=input comment="defconf: accept ICMPv6" protocol=icmpv6
/ipv6 firewall filter add action=accept chain=input comment="defconf: accept UDP traceroute" port=33434-33534 protocol=udp
/ipv6 firewall filter add action=accept chain=input comment="defconf: accept DHCPv6-Client prefix delegation." dst-port=546 protocol=udp src-address=fe80::/10
/ipv6 firewall filter add action=accept chain=input comment="defconf: accept IKE" dst-port=500,4500 protocol=udp
/ipv6 firewall filter add action=accept chain=input comment="defconf: accept ipsec AH" disabled=yes protocol=ipsec-ah
/ipv6 firewall filter add action=accept chain=input comment="defconf: accept ipsec ESP" protocol=ipsec-esp
/ipv6 firewall filter add action=accept chain=input comment="defconf: accept all that matches ipsec policy" ipsec-policy=in,ipsec
/ipv6 firewall filter add action=accept chain=input dst-port=2234,8291 protocol=tcp src-address-list=yandex
/ipv6 firewall filter add action=drop chain=input comment="defconf: drop everything else not coming from LAN" in-interface-list=!LAN
/ipv6 firewall filter add action=accept chain=forward comment="defconf: accept established,related,untracked" connection-state=established,related,untracked
/ipv6 firewall filter add action=drop chain=forward comment="defconf: drop invalid" connection-state=invalid
/ipv6 firewall filter add action=drop chain=forward comment="defconf: drop packets with bad src ipv6" src-address-list=bad_ipv6
/ipv6 firewall filter add action=drop chain=forward comment="defconf: drop packets with bad dst ipv6" dst-address-list=bad_ipv6
/ipv6 firewall filter add action=drop chain=forward comment="defconf: rfc4890 drop hop-limit=1" hop-limit=equal:1 protocol=icmpv6
/ipv6 firewall filter add action=accept chain=forward comment="defconf: accept ICMPv6" protocol=icmpv6
/ipv6 firewall filter add action=accept chain=forward comment="defconf: accept HIP" protocol=139
/ipv6 firewall filter add action=accept chain=forward comment="defconf: accept IKE" dst-port=500,4500 protocol=udp
/ipv6 firewall filter add action=accept chain=forward comment="defconf: accept ipsec AH" disabled=yes protocol=ipsec-ah
/ipv6 firewall filter add action=accept chain=forward comment="defconf: accept ipsec ESP" protocol=ipsec-esp
/ipv6 firewall filter add action=accept chain=forward comment="defconf: accept all that matches ipsec policy" ipsec-policy=in,ipsec
/ipv6 firewall filter add action=drop chain=forward comment="defconf: drop everything else not coming from LAN" in-interface-list=!LAN
/ipv6 route add distance=1 dst-address=2a02:2168:a784:bf02::/64 gateway=2a02:2168:a784:bf00::2
/mpls interface add interface=l2tp-chr-at-lap mpls-mtu=1400
/mpls ldp set enabled=yes lsr-id=192.168.13.49 transport-address=192.168.13.49
/ppp secret add name=smithyhome password=596051596051 profile=profile-ovpn service=l2tp
/ppp secret add name=volchie password=aayoda2f profile=profile-ovpn service=l2tp
/ppp secret add name=vol2 password=aayoda2f profile=profile-ovpn routes=192.168.16.0/24 service=l2tp
/ppp secret add disabled=yes name=aignatenko password=Nexponka profile=profile-ovpn service=l2tp
/ppp secret add disabled=yes name=kamchatka0 password=frzp8ol1ot profile=profile-ovpn service=l2tp
/ppp secret add name=eest-map password=ZSihzFczoR0BvNKvigej profile=profile-ovpn routes=192.168.13.64/28 service=l2tp
/ppp secret add name=eest-work password=596051596051 profile=profile-ovpn service=l2tp
/ppp secret add name=psi-work password=596051596051 profile=profile-ovpn remote-address=192.168.13.60 service=l2tp
/ppp secret add name=pyneng-lab password=FPAbUnstYiGutiZc3nT8 profile=profile-ovpn routes=192.168.100.0/24 service=l2tp
/ppp secret add name=smithymap password=596051596051 profile=profile-ovpn
/ppp secret add disabled=yes name=hap-chu password=g3WPezwxyo profile=profile-ovpn remote-address=192.168.13.58
/ppp secret add disabled=yes name=pevek951 password=ecAuWzM1agEoUd3y9Msa profile=profile-ovpn remote-address=192.168.13.59
/ppp secret add name=chu2 password=g3WPezwxyo profile=profile-ovpn remote-address=192.168.13.58
/ppp secret add name=chr-at-lap password=123654 profile=profile-ovpn remote-address=192.168.13.57
/ppp secret add name=smithyad@smithy.promsvyaz.ru password=OVsIL5U0kXGu6Qo profile=profile-ovpn service=ovpn
/ppp secret add name=smithyml@smithy.promsvyaz.ru password=92YuwwAF7dGoMr profile=profile-ovpn service=ovpn
/ppp secret add name=wal2 password=qazxsw21 profile=profile-ovpn service=l2tp
/ppp secret add name=teste3011 password=123
/routing bgp peer add in-filter=bgp_in instance=bgp-eest keepalive-time=30s multihop=yes name=peer_eest remote-address=172.16.1.192 remote-as=64999 ttl=default update-source=*D use-bfd=yes
/routing filter add action=discard chain=bgp_in comment=zendesk prefix=104.16.0.0/12 prefix-length=12-24
/routing filter add action=accept chain=bgp_in comment="Set nexthop to VPN" set-in-nexthop-direct=*D
/routing filter add action=accept chain=ospf-out prefix=192.168.13.16/28
/routing filter add action=reject chain=ospf-out
/routing ospf interface add passive=yes
/routing ospf interface add authentication=md5 authentication-key=98Ywr5Hq3KXArZyy interface=l2tp-o1 network-type=point-to-point
/routing ospf interface add authentication=md5 authentication-key=bP8Y2kf0Mk1iHcy4 interface=l2tp-itl network-type=point-to-point
/routing ospf network add area=backbone network=172.16.53.1/32
/routing ospf network add area=backbone disabled=yes network=172.24.3.33/32
/routing ospf network add area=backbone disabled=yes network=172.24.3.3/32
/routing ospf network add area=backbone network=192.168.13.60/32
/routing ospf network add area=backbone network=172.16.176.1/32
/snmp set contact=smithy1208@gmail.com enabled=yes trap-generators=interfaces,temp-exception
/system clock set time-zone-autodetect=no time-zone-name=Europe/Moscow
/system identity set name=msk13.smithy.su
/system logging add topics=ntp,!debug
/system ntp client set enabled=yes primary-ntp=95.128.246.34 secondary-ntp=192.36.143.130
/system ntp server set enabled=yes
/system package update set channel=long-term
/system routerboard settings set auto-upgrade=yes
/system scheduler add comment="Update No-IP DDNS" disabled=yes interval=5m name=no-ip_ddns_update on-event=no-ip_ddns_update policy=read,write,test start-time=startup
/system scheduler add disabled=yes interval=5m name=checkIP on-event=checkIPchange policy=read,write,test start-time=startup
/system scheduler add disabled=yes interval=1d name=adblock on-event=adblock policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-time=startup
/system scheduler add disabled=yes name=adblock_startup on-event=":delay 30;\r\
    \n/system script run adblock" policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-time=startup
/system script add dont-require-permissions=no name=no-ip_ddns_update owner=smithy policy=read,write,test source="##############Script Settings##################\r\
    \n\
    \n\
    \n\
    \n\
    \n:local NOIPUser \"smithy1208@gmail.com\"\
    \n\
    \n\r\
    \n:local NOIPPass \"pwd-414220\"\
    \n\r\
    \n\
    \n:local WANInter \"pppoe-rt\"\r\
    \n\
    \n\
    \n\
    \n\
    \n###############################################\
    \n\
    \n\r\
    \n\
    \n\
    \n:local NOIPDomain \"smithy1208.sytes.net\"\r\
    \n\
    \n:local IpCurrent [/ip address get [find interface=\$WANInter] address];\r\
    \n:for i from=( [:len \$IpCurrent] - 1) to=0 do={ \r\
    \n  :if ( [:pick \$IpCurrent \$i] = \"/\") do={ \r\
    \n    :local NewIP [:pick \$IpCurrent 0 \$i];\r\
    \n    :if ([:resolve \$NOIPDomain] != \$NewIP) do={\r\
    \n      /tool fetch mode=http user=\$NOIPUser password=\$NOIPPass url=\"http://dynupdate.no-ip.com/nic/update\\3Fhostname=\$NOIPDomain&myip=\$NewIP\" keep-result=no\r\
    \n      :log info \"NO-IP Update: \$NOIPDomain - \$NewIP\"\r\
    \n     }\r\
    \n   } \r\
    \n}"
/system script add dont-require-permissions=no name=adblock owner=smithy policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source=":log warning \"starting adblock update\";\r\
    \n\
    \n\
    \n:delay 20;\r\
    \n\
    \n\
    \n:log warning \"downloading adblock\";\r\
    \n\
    \n\
    \n\
    \n\
    \n:local hostScriptUrl \"https://www.micu.eu/adblock/adblock_lite.php\";\
    \n\
    \n\
    \n\
    \n\r\
    \n:local scriptName \"adblock\";\
    \n\
    \n\
    \n\
    \n\r\
    \ndo {\
    \n\
    \n /tool fetch mode=http url=\$hostScriptUrl dst-path=(\"./\".\$scriptName);\
    \n\
    \n\r\
    \n:delay 20;\
    \n\
    \n\r\
    \n:if ([:len [/file find name=\$scriptName]] > 0) do={\r\
    \n\
    \n\
    \n :log warning \"removing old adblock list\";\
    \n\
    \n\r\
    \n /ip dns static remove [/ip dns static find address=127.0.0.1];\
    \n\
    \n\r\
    \n :log warning \"importing new adblock list\";\r\
    \n\
    \n\
    \n /import file-name=\$scriptName;\r\
    \n\
    \n\
    \n /file remove \$scriptName;\r\
    \n\
    \n\
    \n :log warning \"adblock list imported\";\r\
    \n\
    \n\
    \n } else={\
    \n\
    \n \r\
    \n:log warning \"adblock list not downloaded, script stopped\";\r\
    \n\
    \n\
    \n }\r\
    \n\
    \n\
    \n} on-error={\
    \n\
    \n \r\
    \n:log warning \"adblock list download FAILED\";\
    \n\
    \n\r\
    \n};"
/tool graphing interface add
/tool mac-server set allowed-interface-list=LAN
/tool mac-server mac-winbox set allowed-interface-list=LAN
/tool mac-server ping set enabled=no
/tool romon set enabled=yes
