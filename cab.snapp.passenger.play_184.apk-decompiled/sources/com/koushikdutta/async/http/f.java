package com.koushikdutta.async.http;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.a.g;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.b;
import com.koushikdutta.async.j;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import com.koushikdutta.async.v;
import io.fabric.sdk.android.services.network.c;
import java.nio.charset.Charset;

abstract class f extends v implements b.h, e, j {
    static final /* synthetic */ boolean p = (!f.class.desiredAssertionStatus());
    private a d = new a() {
        public final void onCompleted(Exception exc) {
            if (exc == null || f.this.k) {
                f.this.report(exc);
            } else {
                f.this.report(new l("connection closed before response completed.", exc));
            }
        }
    };
    private d e;
    /* access modifiers changed from: private */
    public j f;
    private boolean g = true;
    protected n j;
    boolean k = false;
    int l;
    String m;
    String n;
    q o;

    /* access modifiers changed from: protected */
    public void a() {
    }

    /* access modifiers changed from: protected */
    public void a(Exception exc) {
    }

    public j socket() {
        return this.f;
    }

    public d getRequest() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public final void a(j jVar) {
        this.f = jVar;
        j jVar2 = this.f;
        if (jVar2 != null) {
            jVar2.setEndCallback(this.d);
        }
    }

    /* access modifiers changed from: protected */
    public final void b() {
        com.koushikdutta.async.http.a.a body = this.e.getBody();
        if (body != null) {
            body.write(this.e, this, new a() {
                public final void onCompleted(Exception exc) {
                    f.this.a(exc);
                }
            });
        } else {
            a((Exception) null);
        }
    }

    public n emitter() {
        return getDataEmitter();
    }

    public b.h emitter(n nVar) {
        setDataEmitter(nVar);
        return this;
    }

    private void c() {
        this.f.setDataCallback(new d.a() {
            public final void onDataAvailable(n nVar, l lVar) {
                super.onDataAvailable(nVar, lVar);
                f.this.f.close();
            }
        });
    }

    public void report(Exception exc) {
        super.report(exc);
        c();
        this.f.setWriteableCallback(null);
        this.f.setClosedCallback(null);
        this.f.setEndCallback(null);
        this.k = true;
    }

    public void close() {
        super.close();
        c();
    }

    public f(d dVar) {
        this.e = dVar;
    }

    public n headers() {
        return this.j;
    }

    public b.h headers(n nVar) {
        this.j = nVar;
        return this;
    }

    public int code() {
        return this.l;
    }

    public b.h code(int i) {
        this.l = i;
        return this;
    }

    public b.h protocol(String str) {
        this.m = str;
        return this;
    }

    public b.h message(String str) {
        this.n = str;
        return this;
    }

    public String protocol() {
        return this.m;
    }

    public String message() {
        return this.n;
    }

    public String toString() {
        n nVar = this.j;
        if (nVar == null) {
            return super.toString();
        }
        return nVar.toPrefixString(this.m + " " + this.l + " " + this.n);
    }

    public q sink() {
        return this.o;
    }

    public b.h sink(q qVar) {
        this.o = qVar;
        return this;
    }

    public void end() {
        throw new AssertionError("end called?");
    }

    public void setWriteableCallback(g gVar) {
        this.o.setWriteableCallback(gVar);
    }

    public g getWriteableCallback() {
        return this.o.getWriteableCallback();
    }

    public boolean isOpen() {
        return this.o.isOpen();
    }

    public void setClosedCallback(a aVar) {
        this.o.setClosedCallback(aVar);
    }

    public a getClosedCallback() {
        return this.o.getClosedCallback();
    }

    public h getServer() {
        return this.f.getServer();
    }

    public String charset() {
        s parseSemicolonDelimited = s.parseSemicolonDelimited(headers().get(c.HEADER_CONTENT_TYPE));
        if (parseSemicolonDelimited != null) {
            String string = parseSemicolonDelimited.getString(c.PARAM_CHARSET);
            if (string != null && Charset.isSupported(string)) {
                return string;
            }
        }
        return null;
    }

    public void write(l lVar) {
        if (this.g) {
            this.g = false;
            if (!p && this.e.getHeaders().get(c.HEADER_CONTENT_TYPE) == null) {
                throw new AssertionError();
            } else if (!p && this.e.getHeaders().get("Transfer-Encoding") == null && q.contentLength(this.e.getHeaders()) == -1) {
                throw new AssertionError();
            }
        }
        this.o.write(lVar);
    }
}
