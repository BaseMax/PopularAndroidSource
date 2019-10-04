package com.facebook.b;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
import javax.annotation.Nullable;

public final class g implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final FileOutputStream f2440a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final FileLock f2441b;

    public static g lock(File file) throws IOException {
        return new g(file);
    }

    private g(File file) throws IOException {
        this.f2440a = new FileOutputStream(file);
        try {
            FileLock lock = this.f2440a.getChannel().lock();
            if (lock == null) {
            }
            this.f2441b = lock;
        } finally {
            this.f2440a.close();
        }
    }

    public final void close() throws IOException {
        try {
            if (this.f2441b != null) {
                this.f2441b.release();
            }
        } finally {
            this.f2440a.close();
        }
    }
}
