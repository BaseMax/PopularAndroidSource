package com.koushikdutta.async;

import com.koushikdutta.async.a.d;
import com.koushikdutta.async.e.g;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public final class u extends o {
    h c;
    File d;
    d e;
    boolean f;
    l g = new l();
    FileChannel h;
    Runnable i = new Runnable() {
        public final void run() {
            try {
                if (u.this.h == null) {
                    u.this.h = new FileInputStream(u.this.d).getChannel();
                }
                if (!u.this.g.isEmpty()) {
                    af.emitAllData(u.this, u.this.g);
                    if (!u.this.g.isEmpty()) {
                        return;
                    }
                }
                do {
                    ByteBuffer obtain = l.obtain(8192);
                    if (-1 != u.this.h.read(obtain)) {
                        obtain.flip();
                        u.this.g.add(obtain);
                        af.emitAllData(u.this, u.this.g);
                        if (u.this.g.remaining() != 0) {
                            break;
                        }
                    } else {
                        u.this.report(null);
                        return;
                    }
                } while (!u.this.isPaused());
            } catch (Exception e) {
                u.this.report(e);
            }
        }
    };

    public final boolean isChunked() {
        return false;
    }

    public u(h hVar, File file) {
        this.c = hVar;
        this.d = file;
        this.f = !hVar.isAffinityThread();
        if (!this.f) {
            a();
        }
    }

    public final void setDataCallback(d dVar) {
        this.e = dVar;
    }

    public final d getDataCallback() {
        return this.e;
    }

    public final void pause() {
        this.f = true;
    }

    public final void resume() {
        this.f = false;
        a();
    }

    /* access modifiers changed from: protected */
    public final void report(Exception exc) {
        g.closeQuietly(this.h);
        super.report(exc);
    }

    private void a() {
        this.c.post(this.i);
    }

    public final boolean isPaused() {
        return this.f;
    }

    public final h getServer() {
        return this.c;
    }

    public final void close() {
        try {
            this.h.close();
        } catch (Exception unused) {
        }
    }
}
