package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import c.e.a.a.n.g;
import c.e.a.a.n.l;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class AssetDataSource extends g {

    /* renamed from: e  reason: collision with root package name */
    public final AssetManager f12855e;

    /* renamed from: f  reason: collision with root package name */
    public Uri f12856f;

    /* renamed from: g  reason: collision with root package name */
    public InputStream f12857g;

    /* renamed from: h  reason: collision with root package name */
    public long f12858h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f12859i;

    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f12855e = context.getAssets();
    }

    public long a(l lVar) {
        try {
            this.f12856f = lVar.f9466a;
            String path = this.f12856f.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            b(lVar);
            this.f12857g = this.f12855e.open(path, 1);
            if (this.f12857g.skip(lVar.f9471f) >= lVar.f9471f) {
                if (lVar.f9472g != -1) {
                    this.f12858h = lVar.f9472g;
                } else {
                    this.f12858h = (long) this.f12857g.available();
                    if (this.f12858h == 2147483647L) {
                        this.f12858h = -1;
                    }
                }
                this.f12859i = true;
                c(lVar);
                return this.f12858h;
            }
            throw new EOFException();
        } catch (IOException e2) {
            throw new AssetDataSourceException(e2);
        }
    }

    public void close() {
        this.f12856f = null;
        try {
            if (this.f12857g != null) {
                this.f12857g.close();
            }
            this.f12857g = null;
            if (this.f12859i) {
                this.f12859i = false;
                b();
            }
        } catch (IOException e2) {
            throw new AssetDataSourceException(e2);
        } catch (Throwable th) {
            this.f12857g = null;
            if (this.f12859i) {
                this.f12859i = false;
                b();
            }
            throw th;
        }
    }

    public Uri getUri() {
        return this.f12856f;
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f12858h;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, (long) i3);
            } catch (IOException e2) {
                throw new AssetDataSourceException(e2);
            }
        }
        int read = this.f12857g.read(bArr, i2, i3);
        if (read != -1) {
            long j3 = this.f12858h;
            if (j3 != -1) {
                this.f12858h = j3 - ((long) read);
            }
            a(read);
            return read;
        } else if (this.f12858h == -1) {
            return -1;
        } else {
            throw new AssetDataSourceException(new EOFException());
        }
    }
}
