#ifndef rs232_INCLUDED
#define rs232_INCLUDED

#ifdef __cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <string.h>

#include <termios.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <limits.h>

	int RS232_OpenComport(int, int, const char *);
	int RS232_PollComport(int, unsigned char *, int);
	int RS232_SendByte(int, unsigned char);
	int RS232_SendBuf(int, unsigned char *, int);
	void RS232_CloseComport(int);
	void RS232_cputs(int, const char *);
	int RS232_IsDCDEnabled(int);
	int RS232_IsCTSEnabled(int);
	int RS232_IsDSREnabled(int);
	void RS232_enableDTR(int);
	void RS232_disableDTR(int);
	void RS232_enableRTS(int);
	void RS232_disableRTS(int);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif
