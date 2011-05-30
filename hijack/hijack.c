#include "hijack.h"

int exec_and_wait(char ** argp)
{
    pid_t pid;
    sig_t intsave, quitsave;
    sigset_t mask, omask;
    int pstat;

    sigemptyset(&mask);
    sigaddset(&mask, SIGCHLD);
    sigprocmask(SIG_BLOCK, &mask, &omask);
    switch (pid = vfork()) {
    case -1:            /* error */
        sigprocmask(SIG_SETMASK, &omask, NULL);
        return(-1);
    case 0:                /* child */
        sigprocmask(SIG_SETMASK, &omask, NULL);
        execve(argp[0], argp, environ);
    _exit(127);
  }

    intsave = (sig_t)  bsd_signal(SIGINT, SIG_IGN);
    quitsave = (sig_t) bsd_signal(SIGQUIT, SIG_IGN);
    pid = waitpid(pid, (int *)&pstat, 0);
    sigprocmask(SIG_SETMASK, &omask, NULL);
    (void)bsd_signal(SIGINT, intsave);
    (void)bsd_signal(SIGQUIT, quitsave);
    return (pid == -1 ? -1 : pstat);
}

int remount_root(const char * hijack_exec, int rw) {
    char * remount_root_args[5];
    remount_root_args[0] = strdup(hijack_exec);
    remount_root_args[1] = strdup("mount");
    if (rw > 0) {
        remount_root_args[2] = strdup("-orw,remount");
    } else {
        remount_root_args[2] = strdup("-oro,remount");
    }
    remount_root_args[3] = strdup("/");
    remount_root_args[4] = NULL;
    return exec_and_wait(remount_root_args);
}
int remount_system(const char * hijack_exec, int rw) {
    char * remount_root_args[5];
    remount_root_args[0] = strdup(hijack_exec);
    remount_root_args[1] = strdup("mount");
    if (rw > 0) {
        remount_root_args[2] = strdup("-orw,remount");
    } else {
        remount_root_args[2] = strdup("-oro,remount");
    }
    remount_root_args[3] = strdup("/system");
    remount_root_args[4] = NULL;
    return exec_and_wait(remount_root_args);
}


int hijack_mount(const char * hijack_exec, const char * dev, const char * mount_point) {
    char * mount_args[5];
    mount_args[0] = strdup(hijack_exec);
    mount_args[1] = strdup("mount");
    mount_args[2] = strdup(dev);
    mount_args[3] = strdup(mount_point);
    mount_args[4] = NULL;
    return exec_and_wait(mount_args);
}

int hijack_mount_ex(const char * hijack_exec, const char * type, const char * dev, const char * mount_point) {
    char * mount_args[7];
    mount_args[0] = strdup(hijack_exec);
    mount_args[1] = strdup("mount");
    mount_args[2] = strdup("-t");
    mount_args[3] = strdup(type);
    mount_args[4] = strdup(dev);
    mount_args[5] = strdup(mount_point);
    mount_args[6] = NULL;
    return exec_and_wait(mount_args);
}

int hijack_umount(const char * hijack_exec, const char * mount_point) {
    char * umount_args[5];
    umount_args[0] = strdup(hijack_exec);
    umount_args[1] = strdup("umount");
    umount_args[2] = strdup("-l");
    umount_args[3] = strdup(mount_point);
    umount_args[4] = NULL;
    return exec_and_wait(umount_args);
}
int mark_file(char * filename) {
    FILE *f = fopen(filename, "wb");
    fwrite("1", 1, 1, f);
    if (f != NULL) {
        fclose(f);
        return 0;
    } else {
        return -1;
    }
}

int main(int argc, char ** argv) {
    char * hijacked_executable = argv[0];
    struct stat info;
    int result = 0;
    int i;
    if (NULL != strstr(hijacked_executable, "hijack")) {
        if (argc >= 2) {
            return busybox_driver(argc - 1, argv + 1);
        }

        return 0;
    }
    if ( 0 == stat(RECOVERY_MODE_FILE, &info))
    
                result = remove(RECOVERY_MODE_FILE);
                result = remount_root("/system/bin/hijack", 1);
                result = mkdir("/preinstall", S_IRWXU);
                result = mkdir("/tmp", S_IRWXU);
                result = mkdir("/res", S_IRWXU);
                result = mkdir("/res/images", S_IRWXU);
                result = remove("/etc");
                result = mkdir("/etc", S_IRWXU);
                result = rename("/sbin/adbd", "/sbin/adbd.old");
                result = property_set("ctl.stop", "runtime");
                result = property_set("ctl.stop", "zygote");
                result = property_set("persist.service.adb.enable", "1");
                printf("mountting cache and mount preinstall");
                result = hijack_mount("/system/bin/hijack", "/dev/block/mmcblk0p15", "/cache");
                result = hijack_mount("/system/bin/hijack", "/dev/block/mmcblk0p17", "/preinstall");

                result = hijack_umount("/preinstall/hijack", "/pds");
                result = hijack_umount("/preinstall/hijack", "/osh");
                result = remount_system("/preinstall/hijack", 1);
                char * updater_args[] = { UPDATE_BINARY, "2", "0", RECOVERY_UPDATE_ZIP, NULL };
                result = exec_and_wait(updater_args);
                return result;

    }
    char real_executable[PATH_MAX];
    printf("calling original logwrapper.bin\n");
    sprintf(real_executable, "%s.bin", hijacked_executable);
    char ** argp = (char **)malloc(sizeof(char *) * (argc + 1));
    for (i = 0; i < argc; i++) {
        argp[i]=argv[i];
    }
    argp[argc] = NULL;

    argp[0] = real_executable;
    result = exec_and_wait(argp);

    return result;
    }
