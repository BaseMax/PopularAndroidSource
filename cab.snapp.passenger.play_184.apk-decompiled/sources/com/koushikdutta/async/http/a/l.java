package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.af;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.http.s;
import com.koushikdutta.async.http.t;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

public final class l implements a<s> {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";

    /* renamed from: a  reason: collision with root package name */
    s f4640a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f4641b;

    public final String getContentType() {
        return "application/x-www-form-urlencoded; charset=utf-8";
    }

    public final boolean readFullyOnRequest() {
        return true;
    }

    public l(s sVar) {
        this.f4640a = sVar;
    }

    public l(List<t> list) {
        this.f4640a = new s(list);
    }

    private void a() {
        StringBuilder sb = new StringBuilder();
        try {
            Iterator<t> it = this.f4640a.iterator();
            boolean z = true;
            while (it.hasNext()) {
                t next = it.next();
                if (next.getValue() != null) {
                    if (!z) {
                        sb.append('&');
                    }
                    z = false;
                    sb.append(URLEncoder.encode(next.getName(), "UTF-8"));
                    sb.append('=');
                    sb.append(URLEncoder.encode(next.getValue(), "UTF-8"));
                }
            }
            this.f4641b = sb.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public final void write(d dVar, q qVar, a aVar) {
        if (this.f4641b == null) {
            a();
        }
        af.writeAll(qVar, this.f4641b, aVar);
    }

    public final void parse(n nVar, final a aVar) {
        final com.koushikdutta.async.l lVar = new com.koushikdutta.async.l();
        nVar.setDataCallback(new com.koushikdutta.async.a.d() {
            public final void onDataAvailable(n nVar, com.koushikdutta.async.l lVar) {
                lVar.get(lVar);
            }
        });
        nVar.setEndCallback(new a() {
            public final void onCompleted(Exception exc) {
                if (exc != null) {
                    aVar.onCompleted(exc);
                    return;
                }
                try {
                    l.this.f4640a = s.parseUrlEncoded(lVar.readString());
                    aVar.onCompleted(null);
                } catch (Exception e) {
                    aVar.onCompleted(e);
                }
            }
        });
    }

    public l() {
    }

    public final int length() {
        if (this.f4641b == null) {
            a();
        }
        return this.f4641b.length;
    }

    public final s get() {
        return this.f4640a;
    }
}
