package com.koushikdutta.async;

import androidx.appcompat.widget.ActivityChooserView;
import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.g;

public class k implements q {
    static final /* synthetic */ boolean g = (!k.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    q f4838a;

    /* renamed from: b  reason: collision with root package name */
    boolean f4839b;
    l c = new l();
    g d;
    int e = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    boolean f;

    public k(q qVar) {
        setDataSink(qVar);
    }

    public boolean isBuffering() {
        return this.c.hasRemaining() || this.f4839b;
    }

    public q getDataSink() {
        return this.f4838a;
    }

    public void forceBuffering(boolean z) {
        this.f4839b = z;
        if (!z) {
            a();
        }
    }

    public void setDataSink(q qVar) {
        this.f4838a = qVar;
        this.f4838a.setWriteableCallback(new g() {
            public final void onWriteable() {
                k.this.a();
            }
        });
    }

    /* access modifiers changed from: private */
    public void a() {
        if (!this.f4839b) {
            if (this.c.hasRemaining()) {
                this.f4838a.write(this.c);
                if (this.c.remaining() == 0 && this.f) {
                    this.f4838a.end();
                }
            }
            if (!this.c.hasRemaining()) {
                g gVar = this.d;
                if (gVar != null) {
                    gVar.onWriteable();
                }
            }
        }
    }

    public void write(l lVar) {
        a(lVar, false);
    }

    /* access modifiers changed from: protected */
    public final void a(final l lVar, final boolean z) {
        if (getServer().getAffinity() != Thread.currentThread()) {
            getServer().run(new Runnable() {
                public final void run() {
                    k.this.a(lVar, z);
                }
            });
            return;
        }
        if (!isBuffering()) {
            this.f4838a.write(lVar);
        }
        if (lVar.remaining() > 0) {
            int min = Math.min(lVar.remaining(), this.e);
            if (z) {
                min = lVar.remaining();
            }
            if (min > 0) {
                lVar.get(this.c, min);
            }
        }
    }

    public void setWriteableCallback(g gVar) {
        this.d = gVar;
    }

    public g getWriteableCallback() {
        return this.d;
    }

    public int remaining() {
        return this.c.remaining();
    }

    public int getMaxBuffer() {
        return this.e;
    }

    public void setMaxBuffer(int i) {
        if (g || i >= 0) {
            this.e = i;
            return;
        }
        throw new AssertionError();
    }

    public boolean isOpen() {
        return this.f4838a.isOpen();
    }

    public void end() {
        if (getServer().getAffinity() != Thread.currentThread()) {
            getServer().run(new Runnable() {
                public final void run() {
                    k.this.end();
                }
            });
        } else if (this.c.hasRemaining()) {
            this.f = true;
        } else {
            this.f4838a.end();
        }
    }

    public void setClosedCallback(a aVar) {
        this.f4838a.setClosedCallback(aVar);
    }

    public a getClosedCallback() {
        return this.f4838a.getClosedCallback();
    }

    public h getServer() {
        return this.f4838a.getServer();
    }
}
