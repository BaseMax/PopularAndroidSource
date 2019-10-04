package com.koushikdutta.async.http.e;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.http.q;
import com.koushikdutta.async.j;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;
import java.util.regex.Matcher;

public abstract class c extends v implements a, b {
    /* access modifiers changed from: private */
    public String d;
    /* access modifiers changed from: private */
    public n e = new n();
    /* access modifiers changed from: private */
    public a f = new a() {
        public final void onCompleted(Exception exc) {
            c.this.onCompleted(exc);
        }
    };
    j m;
    Matcher n;
    y.a o = new y.a() {
        public final void onStringAvailable(String str) {
            try {
                if (c.this.d == null) {
                    String unused = c.this.d = str;
                    if (!c.this.d.contains("HTTP/")) {
                        c.b();
                        c.this.m.setDataCallback(null);
                    }
                } else if (!"\r".equals(str)) {
                    c.this.e.addLine(str);
                } else {
                    com.koushikdutta.async.n bodyDecoder = q.getBodyDecoder(c.this.m, Protocol.HTTP_1_1, c.this.e, true);
                    c.this.q = q.getBody(bodyDecoder, c.this.f, c.this.e);
                    if (c.this.q == null) {
                        c.this.q = c.this.a(c.this.e);
                        if (c.this.q == null) {
                            c.this.q = new k(c.this.e.get(io.fabric.sdk.android.services.network.c.HEADER_CONTENT_TYPE));
                        }
                    }
                    c.this.q.parse(bodyDecoder, c.this.f);
                    c.this.a();
                }
            } catch (Exception e) {
                c.this.onCompleted(e);
            }
        }
    };
    String p;
    com.koushikdutta.async.http.a.a q;

    /* access modifiers changed from: protected */
    public com.koushikdutta.async.http.a.a a(n nVar) {
        return null;
    }

    /* access modifiers changed from: protected */
    public abstract void a();

    public String getStatusLine() {
        return this.d;
    }

    public void onCompleted(Exception exc) {
        report(exc);
    }

    protected static void b() {
        System.out.println("not http!");
    }

    public String getMethod() {
        return this.p;
    }

    public j getSocket() {
        return this.m;
    }

    public n getHeaders() {
        return this.e;
    }

    public void setDataCallback(d dVar) {
        this.m.setDataCallback(dVar);
    }

    public d getDataCallback() {
        return this.m.getDataCallback();
    }

    public boolean isChunked() {
        return this.m.isChunked();
    }

    public Matcher getMatcher() {
        return this.n;
    }

    public com.koushikdutta.async.http.a.a getBody() {
        return this.q;
    }

    public void pause() {
        this.m.pause();
    }

    public void resume() {
        this.m.resume();
    }

    public boolean isPaused() {
        return this.m.isPaused();
    }

    public String toString() {
        n nVar = this.e;
        if (nVar == null) {
            return super.toString();
        }
        return nVar.toPrefixString(this.d);
    }
}
