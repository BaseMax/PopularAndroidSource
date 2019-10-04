package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import c.e.a.a.n.g;
import c.e.a.a.n.l;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class FileDataSource extends g {

    /* renamed from: e  reason: collision with root package name */
    public RandomAccessFile f12866e;

    /* renamed from: f  reason: collision with root package name */
    public Uri f12867f;

    /* renamed from: g  reason: collision with root package name */
    public long f12868g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f12869h;

    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        super(false);
    }

    public long a(l lVar) {
        try {
            this.f12867f = lVar.f9466a;
            b(lVar);
            this.f12866e = new RandomAccessFile(lVar.f9466a.getPath(), "r");
            this.f12866e.seek(lVar.f9471f);
            this.f12868g = lVar.f9472g == -1 ? this.f12866e.length() - lVar.f9471f : lVar.f9472g;
            if (this.f12868g >= 0) {
                this.f12869h = true;
                c(lVar);
                return this.f12868g;
            }
            throw new EOFException();
        } catch (IOException e2) {
            throw new FileDataSourceException(e2);
        }
    }

    public void close() {
        this.f12867f = null;
        try {
            if (this.f12866e != null) {
                this.f12866e.close();
            }
            this.f12866e = null;
            if (this.f12869h) {
                this.f12869h = false;
                b();
            }
        } catch (IOException e2) {
            throw new FileDataSourceException(e2);
        } catch (Throwable th) {
            this.f12866e = null;
            if (this.f12869h) {
                this.f12869h = false;
                b();
            }
            throw th;
        }
    }

    public Uri getUri() {
        return this.f12867f;
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f12868g;
        if (j2 == 0) {
            return -1;
        }
        try {
            int read = this.f12866e.read(bArr, i2, (int) Math.min(j2, (long) i3));
            if (read > 0) {
                this.f12868g -= (long) read;
                a(read);
            }
            return read;
        } catch (IOException e2) {
            throw new FileDataSourceException(e2);
        }
    }
}
