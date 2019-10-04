package com.a.a.c;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.common.o;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

final class ad implements t {

    /* renamed from: a  reason: collision with root package name */
    private final File f1728a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1729b;
    private o c;

    public ad(File file, int i) {
        this.f1728a = file;
        this.f1729b = i;
    }

    public final void writeToLog(long j, String str) {
        a();
        if (this.c != null) {
            if (str == null) {
                str = "null";
            }
            try {
                if (str.length() > this.f1729b / 4) {
                    str = "..." + str.substring(str.length() - r1);
                }
                this.c.add(String.format(Locale.US, "%d %s%n", new Object[]{Long.valueOf(j), str.replaceAll("\r", " ").replaceAll("\n", " ")}).getBytes("UTF-8"));
                while (!this.c.isEmpty() && this.c.usedBytes() > this.f1729b) {
                    this.c.remove();
                }
            } catch (IOException e) {
                c.getLogger().e(j.TAG, "There was a problem writing to the Crashlytics log.", e);
            }
        }
    }

    public final b getLogAsByteString() {
        if (!this.f1728a.exists()) {
            return null;
        }
        a();
        o oVar = this.c;
        if (oVar == null) {
            return null;
        }
        final int[] iArr = {0};
        final byte[] bArr = new byte[oVar.usedBytes()];
        try {
            this.c.forEach(new o.c() {
                public final void read(InputStream inputStream, int i) throws IOException {
                    try {
                        inputStream.read(bArr, iArr[0], i);
                        int[] iArr = iArr;
                        iArr[0] = iArr[0] + i;
                    } finally {
                        inputStream.close();
                    }
                }
            });
        } catch (IOException e) {
            c.getLogger().e(j.TAG, "A problem occurred while reading the Crashlytics log file.", e);
        }
        return b.copyFrom(bArr, 0, iArr[0]);
    }

    public final void closeLogFile() {
        i.closeOrLog(this.c, "There was a problem closing the Crashlytics log file.");
        this.c = null;
    }

    public final void deleteLogFile() {
        closeLogFile();
        this.f1728a.delete();
    }

    private void a() {
        if (this.c == null) {
            try {
                this.c = new o(this.f1728a);
            } catch (IOException e) {
                l logger = c.getLogger();
                logger.e(j.TAG, "Could not open log file: " + this.f1728a, e);
            }
        }
    }
}
