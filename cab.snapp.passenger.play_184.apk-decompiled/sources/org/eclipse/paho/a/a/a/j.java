package org.eclipse.paho.a.a.a;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    private File f8763a;

    /* renamed from: b  reason: collision with root package name */
    private RandomAccessFile f8764b;
    private Object c;

    public j(File file, String str) throws Exception {
        this.f8763a = new File(file, str);
        if (i.isClassAvailable("java.nio.channels.FileLock")) {
            try {
                this.f8764b = new RandomAccessFile(this.f8763a, "rw");
                Object invoke = this.f8764b.getClass().getMethod("getChannel", new Class[0]).invoke(this.f8764b, new Object[0]);
                this.c = invoke.getClass().getMethod("tryLock", new Class[0]).invoke(invoke, new Object[0]);
            } catch (NoSuchMethodException unused) {
                this.c = null;
            } catch (IllegalArgumentException unused2) {
                this.c = null;
            } catch (IllegalAccessException unused3) {
                this.c = null;
            }
            if (this.c == null) {
                release();
                throw new Exception("Problem obtaining file lock");
            }
        }
    }

    public final void release() {
        try {
            if (this.c != null) {
                this.c.getClass().getMethod("release", new Class[0]).invoke(this.c, new Object[0]);
                this.c = null;
            }
        } catch (Exception unused) {
        }
        RandomAccessFile randomAccessFile = this.f8764b;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
            this.f8764b = null;
        }
        File file = this.f8763a;
        if (file != null && file.exists()) {
            this.f8763a.delete();
        }
        this.f8763a = null;
    }
}
