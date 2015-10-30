#define LBOUND 1001  //Servers can listen on ports 1 to LBOUND
#define UBOUND 65000 // Write Everything else i.e. 65001 to 65535 as ephemeral port range in /proc/sys/net/ipv4/ip_local_port_range.Used for outgoing conxn
#define notreserved(p) (p!=0) // && p!=3306 If some software listens on port between LBOUND-UBOUND then use more && to add more reserved ports
#define TOTALPORTS 65536 //TCP has 1-65535 but our array is larger to ignore member[0]use member[1-65535] for corresponding ports
#define TIMEOUT 300000000  // Connxn Inactivity timeout in MicroSeconds
#define MSLEEP 500  //Housekeeper thread sleep time in Milli Sec
#define PORT_SEARCH_ATTEMPTS 200
#define MAXALLIPS 30
#define PKDEBUG //To enable Debug Messages
//Least Useful settings used only when GUESSIP=0
#define S1 192
#define S2 168
#define S3 43
#define S4 96
//RARELY changed
#define GUESSIP 1
#define PROCFS_NAME "pktab"
#define KERNBUFSIZE 1024
#define USABLEPORTS (UBOUND-LBOUND+1)
