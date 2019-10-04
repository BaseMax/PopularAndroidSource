package com.koushikdutta.async.d;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.af;
import com.koushikdutta.async.h;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class c implements n {

    /* renamed from: a  reason: collision with root package name */
    h f4505a;

    /* renamed from: b  reason: collision with root package name */
    InputStream f4506b;
    d c;
    boolean d;
    int e = 0;
    l f = new l();
    Runnable g = new Runnable() {
        public final void run() {
            try {
                if (!c.this.f.isEmpty()) {
                    c.this.getServer().run(new Runnable() {
                        public final void run() {
                            af.emitAllData(c.this, c.this.f);
                        }
                    });
                    if (!c.this.f.isEmpty()) {
                        return;
                    }
                }
                do {
                    ByteBuffer obtain = l.obtain(Math.min(Math.max(c.this.e, 4096), 262144));
                    int read = c.this.f4506b.read(obtain.array());
                    if (-1 != read) {
                        c.this.e = read * 2;
                        obtain.limit(read);
                        c.this.f.add(obtain);
                        c.this.getServer().run(new Runnable() {
                            public final void run() {
                                af.emitAllData(c.this, c.this.f);
                            }
                        });
                        if (c.this.f.remaining() != 0) {
                            break;
                        }
                    } else {
                        c.this.a(null);
                        return;
                    }
                } while (!c.this.isPaused());
            } catch (Exception e) {
                c.this.a(e);
            }
        }
    };
    a h;

    public final String charset() {
        return null;
    }

    public final boolean isChunked() {
        return false;
    }

    public c(h hVar, InputStream inputStream) {
        this.f4505a = hVar;
        this.f4506b = inputStream;
        a();
    }

    public final void setDataCallback(d dVar) {
        this.c = dVar;
    }

    public final d getDataCallback() {
        return this.c;
    }

    public final void pause() {
        this.d = true;
    }

    public final void resume() {
        this.d = false;
        a();
    }

    /* access modifiers changed from: private */
    public void a(final Exception exc) {
        getServer().post(new Runnable() {
            public final void run() {
                Exception e = exc;
                try {
                    c.this.f4506b.close();
                } catch (Exception e2) {
                    e = e2;
                }
                if (c.this.h != null) {
                    c.this.h.onCompleted(e);
                }
            }
        });
    }

    private void a() {
        new Thread(this.g).start();
    }

    public final boolean isPaused() {
        return this.d;
    }

    public final void setEndCallback(a aVar) {
        this.h = aVar;
    }

    public final a getEndCallback() {
        return this.h;
    }

    public final h getServer() {
        return this.f4505a;
    }

    public final void close() {
        a(null);
        try {
            this.f4506b.close();
        } catch (Exception unused) {
        }
    }
}
