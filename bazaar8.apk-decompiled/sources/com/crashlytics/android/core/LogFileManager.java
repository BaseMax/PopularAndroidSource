package com.crashlytics.android.core;

import android.content.Context;
import e.a.a.a.f;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.File;
import java.util.Set;

public class LogFileManager {
    public static final String COLLECT_CUSTOM_LOGS = "com.crashlytics.CollectCustomLogs";
    public static final String LOGFILE_EXT = ".temp";
    public static final String LOGFILE_PREFIX = "crashlytics-userlog-";
    public static final int MAX_LOG_SIZE = 65536;
    public static final NoopLogStore NOOP_LOG_STORE = new NoopLogStore();
    public final Context context;
    public FileLogStore currentLog;
    public final DirectoryProvider directoryProvider;

    public interface DirectoryProvider {
        File getLogFileDir();
    }

    private static final class NoopLogStore implements FileLogStore {
        public NoopLogStore() {
        }

        public void closeLogFile() {
        }

        public void deleteLogFile() {
        }

        public ByteString getLogAsByteString() {
            return null;
        }

        public byte[] getLogAsBytes() {
            return null;
        }

        public void writeToLog(long j2, String str) {
        }
    }

    public LogFileManager(Context context2, DirectoryProvider directoryProvider2) {
        this(context2, directoryProvider2, null);
    }

    private String getSessionIdForFile(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(LOGFILE_EXT);
        if (lastIndexOf == -1) {
            return name;
        }
        return name.substring(20, lastIndexOf);
    }

    private File getWorkingFileForSession(String str) {
        return new File(this.directoryProvider.getLogFileDir(), LOGFILE_PREFIX + str + LOGFILE_EXT);
    }

    public void clearLog() {
        this.currentLog.deleteLogFile();
    }

    public void discardOldLogFiles(Set<String> set) {
        File[] listFiles = this.directoryProvider.getLogFileDir().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!set.contains(getSessionIdForFile(file))) {
                    file.delete();
                }
            }
        }
    }

    public ByteString getByteStringForLog() {
        return this.currentLog.getLogAsByteString();
    }

    public byte[] getBytesForLog() {
        return this.currentLog.getLogAsBytes();
    }

    public final void setCurrentSession(String str) {
        this.currentLog.closeLogFile();
        this.currentLog = NOOP_LOG_STORE;
        if (str != null) {
            if (!CommonUtils.a(this.context, COLLECT_CUSTOM_LOGS, true)) {
                f.e().d(CrashlyticsCore.TAG, "Preferences requested no custom logs. Aborting log file creation.");
            } else {
                setLogFile(getWorkingFileForSession(str), MAX_LOG_SIZE);
            }
        }
    }

    public void setLogFile(File file, int i2) {
        this.currentLog = new QueueFileLogStore(file, i2);
    }

    public void writeToLog(long j2, String str) {
        this.currentLog.writeToLog(j2, str);
    }

    public LogFileManager(Context context2, DirectoryProvider directoryProvider2, String str) {
        this.context = context2;
        this.directoryProvider = directoryProvider2;
        this.currentLog = NOOP_LOG_STORE;
        setCurrentSession(str);
    }
}
