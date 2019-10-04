package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import c.e.a.a.n.g;
import c.e.a.a.n.l;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

public final class ContentDataSource extends g {

    /* renamed from: e  reason: collision with root package name */
    public final ContentResolver f12860e;

    /* renamed from: f  reason: collision with root package name */
    public Uri f12861f;

    /* renamed from: g  reason: collision with root package name */
    public AssetFileDescriptor f12862g;

    /* renamed from: h  reason: collision with root package name */
    public FileInputStream f12863h;

    /* renamed from: i  reason: collision with root package name */
    public long f12864i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f12865j;

    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f12860e = context.getContentResolver();
    }

    public long a(l lVar) {
        long j2;
        try {
            this.f12861f = lVar.f9466a;
            b(lVar);
            this.f12862g = this.f12860e.openAssetFileDescriptor(this.f12861f, "r");
            if (this.f12862g != null) {
                this.f12863h = new FileInputStream(this.f12862g.getFileDescriptor());
                long startOffset = this.f12862g.getStartOffset();
                long skip = this.f12863h.skip(lVar.f9471f + startOffset) - startOffset;
                if (skip == lVar.f9471f) {
                    if (lVar.f9472g != -1) {
                        this.f12864i = lVar.f9472g;
                    } else {
                        long length = this.f12862g.getLength();
                        if (length == -1) {
                            FileChannel channel = this.f12863h.getChannel();
                            long size = channel.size();
                            if (size == 0) {
                                j2 = -1;
                            } else {
                                j2 = size - channel.position();
                            }
                            this.f12864i = j2;
                        } else {
                            this.f12864i = length - skip;
                        }
                    }
                    this.f12865j = true;
                    c(lVar);
                    return this.f12864i;
                }
                throw new EOFException();
            }
            throw new FileNotFoundException("Could not open file descriptor for: " + this.f12861f);
        } catch (IOException e2) {
            throw new ContentDataSourceException(e2);
        }
    }

    public void close() {
        this.f12861f = null;
        try {
            if (this.f12863h != null) {
                this.f12863h.close();
            }
            this.f12863h = null;
            try {
                if (this.f12862g != null) {
                    this.f12862g.close();
                }
                this.f12862g = null;
                if (this.f12865j) {
                    this.f12865j = false;
                    b();
                }
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2);
            } catch (Throwable th) {
                this.f12862g = null;
                if (this.f12865j) {
                    this.f12865j = false;
                    b();
                }
                throw th;
            }
        } catch (IOException e3) {
            throw new ContentDataSourceException(e3);
        } catch (Throwable th2) {
            this.f12863h = null;
            try {
                if (this.f12862g != null) {
                    this.f12862g.close();
                }
                this.f12862g = null;
                if (this.f12865j) {
                    this.f12865j = false;
                    b();
                }
                throw th2;
            } catch (IOException e4) {
                throw new ContentDataSourceException(e4);
            } catch (Throwable th3) {
                this.f12862g = null;
                if (this.f12865j) {
                    this.f12865j = false;
                    b();
                }
                throw th3;
            }
        }
    }

    public Uri getUri() {
        return this.f12861f;
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f12864i;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, (long) i3);
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2);
            }
        }
        int read = this.f12863h.read(bArr, i2, i3);
        if (read != -1) {
            long j3 = this.f12864i;
            if (j3 != -1) {
                this.f12864i = j3 - ((long) read);
            }
            a(read);
            return read;
        } else if (this.f12864i == -1) {
            return -1;
        } else {
            throw new ContentDataSourceException(new EOFException());
        }
    }
}
