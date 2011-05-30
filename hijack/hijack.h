#ifndef __HIJACK_H__
#define __HIJACK_H__

// declare all of our includes
#include <ctype.h>
#include <errno.h>
#include <fcntl.h>
#include <getopt.h>
#include <limits.h>
#include <linux/input.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <dirent.h>
#include <signal.h>
#include <sys/reboot.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/limits.h>
#include <sys/stat.h>
#include <sys/mount.h>
#include <cutils/properties.h>

// file that throws us into recovery mode
#ifndef RECOVERY_MODE_FILE
#define RECOVERY_MODE_FILE "/data/.recovery_mode"
#endif

// update-binary executable
#ifndef UPDATE_BINARY
#define UPDATE_BINARY "/preinstall/update-binary"
#endif
// recovery update.zip
#ifndef RECOVERY_UPDATE_ZIP
#define RECOVERY_UPDATE_ZIP "/preinstall/update-recovery.zip"
#endif

// function prototypes! :D
int exec_and_wait(char ** argp);
int remount_root(const char * hijack_exec, int rw);
int hijack_mount(const char * hijack_exec, const char * dev, const char * mount_point);
int hijack_mount_ex(const char * hijack_exec, const char * type, const char * dev, const char * mount_point);
int hijack_umount(const char * hijack_exec, const char * mount_point);
int mark_file(char * filename);

#endif
