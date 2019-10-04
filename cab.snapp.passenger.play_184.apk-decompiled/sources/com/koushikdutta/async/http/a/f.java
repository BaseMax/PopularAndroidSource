package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.c;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.af;
import com.koushikdutta.async.b.b;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.http.s;
import com.koushikdutta.async.l;
import com.koushikdutta.async.q;
import com.koushikdutta.async.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

public class f extends com.koushikdutta.async.http.e.f implements a<s> {
    public static final String CONTENT_TYPE = "multipart/form-data";
    y d;
    n e;
    l f;
    String g;
    String h = CONTENT_TYPE;
    a i;
    int j;
    int k;
    private ArrayList<g> n;

    public interface a {
        void onPart(g gVar);
    }

    public boolean readFullyOnRequest() {
        return false;
    }

    public void parse(com.koushikdutta.async.n nVar, com.koushikdutta.async.a.a aVar) {
        setDataEmitter(nVar);
        setEndCallback(aVar);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.f != null) {
            if (this.e == null) {
                this.e = new n();
            }
            this.e.add(this.g, this.f.peekString());
            this.g = null;
            this.f = null;
        }
    }

    public String getField(String str) {
        n nVar = this.e;
        if (nVar == null) {
            return null;
        }
        return nVar.get(str);
    }

    public final void onBoundaryEnd() {
        super.onBoundaryEnd();
        a();
    }

    public final void onBoundaryStart() {
        final n nVar = new n();
        this.d = new y();
        this.d.setLineCallback(new y.a() {
            public final void onStringAvailable(String str) {
                if (!"\r".equals(str)) {
                    nVar.addLine(str);
                    return;
                }
                f.this.a();
                f fVar = f.this;
                fVar.d = null;
                fVar.setDataCallback(null);
                g gVar = new g(nVar);
                if (f.this.i != null) {
                    f.this.i.onPart(gVar);
                }
                if (f.this.getDataCallback() == null) {
                    if (gVar.isFile()) {
                        f.this.setDataCallback(new d.a());
                        return;
                    }
                    f.this.g = gVar.getName();
                    f.this.f = new l();
                    f.this.setDataCallback(new d() {
                        public final void onDataAvailable(com.koushikdutta.async.n nVar, l lVar) {
                            lVar.get(f.this.f);
                        }
                    });
                }
            }
        });
        setDataCallback(this.d);
    }

    public f(String[] strArr) {
        int length = strArr.length;
        int i2 = 0;
        while (i2 < length) {
            String[] split = strArr[i2].split("=");
            if (split.length != 2 || !"boundary".equals(split[0])) {
                i2++;
            } else {
                setBoundary(split[1]);
                return;
            }
        }
        report(new Exception("No boundary found for multipart/form-data"));
    }

    public void setMultipartCallback(a aVar) {
        this.i = aVar;
    }

    public a getMultipartCallback() {
        return this.i;
    }

    public void write(com.koushikdutta.async.http.d dVar, final q qVar, final com.koushikdutta.async.a.a aVar) {
        if (this.n != null) {
            b bVar = new b(new com.koushikdutta.async.a.a() {
                public final void onCompleted(Exception exc) {
                    aVar.onCompleted(exc);
                }
            });
            Iterator<g> it = this.n.iterator();
            while (it.hasNext()) {
                final g next = it.next();
                bVar.add((c) new c() {
                    public final void onContinue(b bVar, com.koushikdutta.async.a.a aVar) throws Exception {
                        byte[] bytes = next.getRawHeaders().toPrefixString(f.this.getBoundaryStart()).getBytes();
                        af.writeAll(qVar, bytes, aVar);
                        f.this.j += bytes.length;
                    }
                }).add((c) new c() {
                    public final void onContinue(b bVar, com.koushikdutta.async.a.a aVar) throws Exception {
                        long length = next.length();
                        if (length >= 0) {
                            f fVar = f.this;
                            fVar.j = (int) (((long) fVar.j) + length);
                        }
                        next.write(qVar, aVar);
                    }
                }).add((c) new c() {
                    public final void onContinue(b bVar, com.koushikdutta.async.a.a aVar) throws Exception {
                        byte[] bytes = "\r\n".getBytes();
                        af.writeAll(qVar, bytes, aVar);
                        f.this.j += bytes.length;
                    }
                });
            }
            bVar.add((c) new c() {

                /* renamed from: a  reason: collision with root package name */
                static final /* synthetic */ boolean f4629a = (!f.class.desiredAssertionStatus());

                public final void onContinue(b bVar, com.koushikdutta.async.a.a aVar) throws Exception {
                    byte[] bytes = f.this.getBoundaryEnd().getBytes();
                    af.writeAll(qVar, bytes, aVar);
                    f.this.j += bytes.length;
                    if (!f4629a && f.this.j != f.this.k) {
                        throw new AssertionError();
                    }
                }
            });
            bVar.start();
        }
    }

    public String getContentType() {
        if (getBoundary() == null) {
            setBoundary("----------------------------" + UUID.randomUUID().toString().replace("-", ""));
        }
        return this.h + "; boundary=" + getBoundary();
    }

    public int length() {
        if (getBoundary() == null) {
            setBoundary("----------------------------" + UUID.randomUUID().toString().replace("-", ""));
        }
        int i2 = 0;
        Iterator<g> it = this.n.iterator();
        while (it.hasNext()) {
            g next = it.next();
            String prefixString = next.getRawHeaders().toPrefixString(getBoundaryStart());
            if (next.length() == -1) {
                return -1;
            }
            i2 = (int) (((long) i2) + next.length() + ((long) prefixString.getBytes().length) + 2);
        }
        int length = i2 + getBoundaryEnd().getBytes().length;
        this.k = length;
        return length;
    }

    public f() {
    }

    public void setContentType(String str) {
        this.h = str;
    }

    public void addFilePart(String str, File file) {
        addPart(new d(str, file));
    }

    public void addStringPart(String str, String str2) {
        addPart(new k(str, str2));
    }

    public void addPart(g gVar) {
        if (this.n == null) {
            this.n = new ArrayList<>();
        }
        this.n.add(gVar);
    }

    public s get() {
        return new s(this.e.getMultiMap());
    }
}
