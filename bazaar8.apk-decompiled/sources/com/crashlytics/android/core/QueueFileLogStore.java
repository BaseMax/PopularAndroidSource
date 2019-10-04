package com.crashlytics.android.core;

import e.a.a.a.a.b.z;
import e.a.a.a.f;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

public class QueueFileLogStore implements FileLogStore {
    public z logFile;
    public final int maxLogSize;
    public final File workingFile;

    public class LogBytes {
        public final byte[] bytes;
        public final int offset;

        public LogBytes(byte[] bArr, int i2) {
            this.bytes = bArr;
            this.offset = i2;
        }
    }

    public QueueFileLogStore(File file, int i2) {
        this.workingFile = file;
        this.maxLogSize = i2;
    }

    private void doWriteToLog(long j2, String str) {
        if (this.logFile != null) {
            if (str == null) {
                str = "null";
            }
            try {
                if (str.length() > this.maxLogSize / 4) {
                    str = "..." + str.substring(str.length() - r1);
                }
                this.logFile.a(String.format(Locale.US, "%d %s%n", new Object[]{Long.valueOf(j2), str.replaceAll("\r", " ").replaceAll("\n", " ")}).getBytes("UTF-8"));
                while (!this.logFile.t() && this.logFile.x() > this.maxLogSize) {
                    this.logFile.w();
                }
            } catch (IOException e2) {
                f.e().b(CrashlyticsCore.TAG, "There was a problem writing to the Crashlytics log.", e2);
            }
        }
    }

    private LogBytes getLogBytes() {
        if (!this.workingFile.exists()) {
            return null;
        }
        openLogFile();
        z zVar = this.logFile;
        if (zVar == null) {
            return null;
        }
        final int[] iArr = {0};
        final byte[] bArr = new byte[zVar.x()];
        try {
            this.logFile.a((z.c) new z.c() {
                public void read(InputStream inputStream, int i2) {
                    try {
                        inputStream.read(bArr, iArr[0], i2);
                        int[] iArr = iArr;
                        iArr[0] = iArr[0] + i2;
                    } finally {
                        inputStream.close();
                    }
                }
            });
        } catch (IOException e2) {
            f.e().b(CrashlyticsCore.TAG, "A problem occurred while reading the Crashlytics log file.", e2);
        }
        return new LogBytes(bArr, iArr[0]);
    }

    private void openLogFile() {
        if (this.logFile == null) {
            try {
                this.logFile = new z(this.workingFile);
            } catch (IOException e2) {
                o e3 = f.e();
                e3.b(CrashlyticsCore.TAG, "Could not open log file: " + this.workingFile, e2);
            }
        }
    }

    public void closeLogFile() {
        CommonUtils.a((Closeable) this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
    }

    public void deleteLogFile() {
        closeLogFile();
        this.workingFile.delete();
    }

    public ByteString getLogAsByteString() {
        LogBytes logBytes = getLogBytes();
        if (logBytes == null) {
            return null;
        }
        return ByteString.copyFrom(logBytes.bytes, 0, logBytes.offset);
    }

    public byte[] getLogAsBytes() {
        LogBytes logBytes = getLogBytes();
        if (logBytes == null) {
            return null;
        }
        return logBytes.bytes;
    }

    public void writeToLog(long j2, String str) {
        openLogFile();
        doWriteToLog(j2, str);
    }
}
