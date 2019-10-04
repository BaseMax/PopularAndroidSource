package com.koushikdutta.async;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.f.b;
import com.koushikdutta.async.r;

public class v extends o implements d, b, n, r {
    boolean c;
    private n d;
    private r.a e;
    private int f;

    public n getDataEmitter() {
        return this.d;
    }

    public void setDataEmitter(n nVar) {
        n nVar2 = this.d;
        if (nVar2 != null) {
            nVar2.setDataCallback(null);
        }
        this.d = nVar;
        this.d.setDataCallback(this);
        this.d.setEndCallback(new a() {
            public final void onCompleted(Exception exc) {
                v.this.report(exc);
            }
        });
    }

    public int getBytesRead() {
        return this.f;
    }

    public r.a getDataTracker() {
        return this.e;
    }

    public void setDataTracker(r.a aVar) {
        this.e = aVar;
    }

    public void onDataAvailable(n nVar, l lVar) {
        if (this.c) {
            lVar.recycle();
            return;
        }
        if (lVar != null) {
            this.f += lVar.remaining();
        }
        af.emitAllData(this, lVar);
        if (lVar != null) {
            this.f -= lVar.remaining();
        }
        r.a aVar = this.e;
        if (!(aVar == null || lVar == null)) {
            aVar.onData(this.f);
        }
    }

    public boolean isChunked() {
        return this.d.isChunked();
    }

    public void pause() {
        this.d.pause();
    }

    public void resume() {
        this.d.resume();
    }

    public boolean isPaused() {
        return this.d.isPaused();
    }

    public h getServer() {
        return this.d.getServer();
    }

    public void close() {
        this.c = true;
        n nVar = this.d;
        if (nVar != null) {
            nVar.close();
        }
    }

    public String charset() {
        n nVar = this.d;
        if (nVar == null) {
            return null;
        }
        return nVar.charset();
    }
}
