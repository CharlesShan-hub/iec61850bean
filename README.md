# IEC61850bean
IEC61850bean (previously known as OpenIEC61850) is a library implementing the IEC 61850 standard based on the MMS mapping for client and server communication.

For detailed information on IEC61850bean visit https://www.beanit.com/iec-61850/.

服务器写一个数据

w
Enter reference to write (e.g. myld/MYLN0.do.da.bda):
ied1lDevice1/DSCH1.SchdSt.stVal
Enter functional constraint of referenced node:
ST
Enter value to write:
100
Successfully wrote data.
ied1lDevice1/DSCH1.SchdSt.stVal: 100

客户端收一个数据

g
Enter reference (e.g. myld/MYLN0.do.da.bda):
ied1lDevice1/DSCH1.SchdSt.stVal
Enter functional constraint of referenced node:
ST
Sending GetDataValues request...
Successfully read data.
ied1lDevice1/DSCH1.SchdSt.stVal: 100

客户端获取一个值下边是服务器发送的

15:20:14.070 [iec61850bean-server-thread-1] DEBUG com.beanit.iec61850bean.ServerAssociation - Got a GetDataValues request for node: ied1lDevice1/DSCH1.SchdSt.stVal: 100
15:20:14.070 [iec61850bean-server-thread-1] DEBUG com.beanit.jositransport.TConnection - [PER-DEBUG] TConnection.send totalBytes=25
15:20:14.070 [iec61850bean-server-thread-1] DEBUG com.beanit.jositransport.TConnection - [PER-DEBUG]   tsdu[0] 01 00 01 00
15:20:14.070 [iec61850bean-server-thread-1] DEBUG com.beanit.jositransport.TConnection - [PER-DEBUG]   tsdu[1] 61 13 30 11 02 01 03 A0 0C A1 0A 02 01 0B A4 05 A1 03 85 01 64 

客户端获取一个值下边是客户端收到的

15:20:14.068 [main] DEBUG com.beanit.jositransport.TConnection - [PER-DEBUG] TConnection.send totalBytes=67
15:20:14.068 [main] DEBUG com.beanit.jositransport.TConnection - [PER-DEBUG]   tsdu[0] 01 00 01 00
15:20:14.069 [main] DEBUG com.beanit.jositransport.TConnection - [PER-DEBUG]   tsdu[1] 61 3D 30 3B 02 01 03 A0 36 A0 34 02 01 0B A4 2F A1 2D A0 2B 30 29 A0 27 A1 25 1A 0C 69 65 64 31 6C 44 65 76 69 63 65 31 1A 15 44 53 43 48 31 24 53 54 24 53 63 68 64 53 74 24 73 74 56 61 6C
15:20:14.071 [Thread-0] DEBUG com.beanit.jositransport.TConnection - [PER-DEBUG] TConnection.receive len=25
15:20:14.071 [Thread-0] DEBUG com.beanit.jositransport.TConnection - [PER-DEBUG]   01 00 01 00 61 13 30 11 02 01 03 A0 0C A1 0A 02 01 0B A4 05 A1 03 85 01 64 

