#LEVEL02

In the home found the file level02.pcap, see in google that it can be opened
with Wireshark software, a software to analyze packets.

-> Go to my Kali linux VM and change it into a server machine:
>$ sudo /etc/init.d/ssh start
Done!

Go back to my snowcrash VM, and copy this file to my kali server machine:
>$ scp level02.pcap root@my.kali.server.ip:/path/wherecopy/thefile

I have the file now on my Kali VM, Wireshark is already installed, I just open
the file with it.

We can see in the #43 data the word : Password, we analyse all the data in the
packets upcomming and we got :
-> 66 74 5f 77 61 6e 64 72 7f 7f 7f 4e 44 52 65 6c 7f 4c 30 4c

After converted it to string with  we got : ft_wandr...NDRel.L0L
(The points are here to replace not printable chars);
Look on the Ascii table and 7f look to be the DEL key.
We apply to the string and now got : ft_waNDReL0L

>$ su flag02
Password : ft_waNDReL0L

>$ getflag
We got the flag : kooda2puivaav1idi4f57q8iq

Go to the next level!
