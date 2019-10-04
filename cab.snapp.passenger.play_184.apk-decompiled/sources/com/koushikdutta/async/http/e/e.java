package com.koushikdutta.async.http.e;

import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserView;
import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.a.g;
import com.koushikdutta.async.af;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.j;
import com.koushikdutta.async.l;
import com.koushikdutta.async.q;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.t;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

public class e implements d {
    static final /* synthetic */ boolean k = (!e.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    private n f4711a = new n();

    /* renamed from: b  reason: collision with root package name */
    j f4712b;
    c c;
    boolean d = false;
    q e;
    g f;
    boolean g;
    boolean h;
    int i = 200;
    a j;
    private long l = -1;

    /* access modifiers changed from: protected */
    public void a(Exception exc) {
    }

    public n getHeaders() {
        return this.f4711a;
    }

    public j getSocket() {
        return this.f4712b;
    }

    e(j jVar, c cVar) {
        this.f4712b = jVar;
        this.c = cVar;
        if (com.koushikdutta.async.http.q.isKeepAlive(Protocol.HTTP_1_1, cVar.getHeaders())) {
            this.f4711a.set("Connection", "Keep-Alive");
        }
    }

    public void write(l lVar) {
        if (k || !this.h) {
            if (!this.d) {
                b();
            }
            if (lVar.remaining() != 0) {
                q qVar = this.e;
                if (qVar != null) {
                    qVar.write(lVar);
                    return;
                }
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    private void b() {
        final boolean z;
        if (!this.d) {
            this.d = true;
            String str = this.f4711a.get("Transfer-Encoding");
            if ("".equals(str)) {
                this.f4711a.removeAll("Transfer-Encoding");
            }
            boolean z2 = ("Chunked".equalsIgnoreCase(str) || str == null) && !"close".equalsIgnoreCase(this.f4711a.get("Connection"));
            if (this.l < 0) {
                String str2 = this.f4711a.get(c.HEADER_CONTENT_LENGTH);
                if (!TextUtils.isEmpty(str2)) {
                    this.l = Long.valueOf(str2).longValue();
                }
            }
            if (this.l >= 0 || !z2) {
                z = false;
            } else {
                this.f4711a.set("Transfer-Encoding", "Chunked");
                z = true;
            }
            af.writeAll((q) this.f4712b, this.f4711a.toPrefixString(String.format(Locale.ENGLISH, "HTTP/1.1 %s %s", new Object[]{Integer.valueOf(this.i), a.getResponseCodeDescription(this.i)})).getBytes(), (a) new a() {
                public final void onCompleted(Exception exc) {
                    if (exc != null) {
                        e.this.a(exc);
                        return;
                    }
                    if (z) {
                        com.koushikdutta.async.http.d.c cVar = new com.koushikdutta.async.http.d.c(e.this.f4712b);
                        cVar.setMaxBuffer(0);
                        e.this.e = cVar;
                    } else {
                        e eVar = e.this;
                        eVar.e = eVar.f4712b;
                    }
                    e.this.e.setClosedCallback(e.this.j);
                    e eVar2 = e.this;
                    eVar2.j = null;
                    eVar2.e.setWriteableCallback(e.this.f);
                    e eVar3 = e.this;
                    eVar3.f = null;
                    if (eVar3.g) {
                        e.this.end();
                    } else {
                        e.this.getServer().post(new Runnable() {
                            public final void run() {
                                g writeableCallback = e.this.getWriteableCallback();
                                if (writeableCallback != null) {
                                    writeableCallback.onWriteable();
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public void setWriteableCallback(g gVar) {
        q qVar = this.e;
        if (qVar != null) {
            qVar.setWriteableCallback(gVar);
        } else {
            this.f = gVar;
        }
    }

    public g getWriteableCallback() {
        q qVar = this.e;
        if (qVar != null) {
            return qVar.getWriteableCallback();
        }
        return this.f;
    }

    public void end() {
        if (!this.g) {
            this.g = true;
            if (!this.d || this.e != null) {
                if (!this.d) {
                    this.f4711a.remove("Transfer-Encoding");
                }
                q qVar = this.e;
                if (qVar instanceof com.koushikdutta.async.http.d.c) {
                    ((com.koushikdutta.async.http.d.c) qVar).setMaxBuffer(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                    this.e.write(new l());
                } else if (!this.d) {
                    if (!this.c.getMethod().equalsIgnoreCase(c.METHOD_HEAD)) {
                        send("text/html", "");
                        return;
                    }
                    writeHead();
                }
                a();
            }
        }
    }

    public void writeHead() {
        b();
    }

    public void setContentType(String str) {
        this.f4711a.set(c.HEADER_CONTENT_TYPE, str);
    }

    public void send(String str, byte[] bArr) {
        if (k || this.l < 0) {
            this.l = (long) bArr.length;
            this.f4711a.set(c.HEADER_CONTENT_LENGTH, Integer.toString(bArr.length));
            this.f4711a.set(c.HEADER_CONTENT_TYPE, str);
            af.writeAll((q) this, bArr, (a) new a() {
                public final void onCompleted(Exception exc) {
                    e.this.a();
                }
            });
            return;
        }
        throw new AssertionError();
    }

    public void send(String str, String str2) {
        try {
            send(str, str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    /* access modifiers changed from: protected */
    public void a() {
        this.h = true;
    }

    public void send(String str) {
        String str2 = this.f4711a.get(c.HEADER_CONTENT_TYPE);
        if (str2 == null) {
            str2 = "text/html; charset=utf-8";
        }
        send(str2, str);
    }

    public void send(org.a.c cVar) {
        send("application/json; charset=utf-8", cVar.toString());
    }

    public void sendStream(InputStream inputStream, long j2) {
        final InputStream inputStream2 = inputStream;
        long j3 = j2 - 1;
        String str = this.c.getHeaders().get("Range");
        long j4 = 0;
        if (str != null) {
            String[] split = str.split("=");
            if (split.length != 2 || !"bytes".equals(split[0])) {
                code(416);
                end();
                return;
            }
            String[] split2 = split[1].split("-");
            try {
                if (split2.length <= 2) {
                    if (!TextUtils.isEmpty(split2[0])) {
                        j4 = Long.parseLong(split2[0]);
                    }
                    if (split2.length == 2 && !TextUtils.isEmpty(split2[1])) {
                        j3 = Long.parseLong(split2[1]);
                    }
                    code(206);
                    getHeaders().set("Content-Range", String.format(Locale.ENGLISH, "bytes %d-%d/%d", new Object[]{Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)}));
                } else {
                    throw new h();
                }
            } catch (Exception unused) {
                code(416);
                end();
                return;
            }
        }
        try {
            if (j4 == inputStream2.skip(j4)) {
                this.l = (j3 - j4) + 1;
                this.f4711a.set(c.HEADER_CONTENT_LENGTH, String.valueOf(this.l));
                this.f4711a.set("Accept-Ranges", "bytes");
                if (this.c.getMethod().equals(c.METHOD_HEAD)) {
                    writeHead();
                    a();
                    return;
                }
                af.pump(inputStream2, this.l, this, new a() {
                    public final void onCompleted(Exception exc) {
                        com.koushikdutta.async.e.g.closeQuietly(inputStream2);
                        e.this.a();
                    }
                });
                return;
            }
            throw new j("skip failed to skip requested amount");
        } catch (Exception unused2) {
            code(500);
            end();
        }
    }

    public void sendFile(File file) {
        try {
            if (this.f4711a.get(c.HEADER_CONTENT_TYPE) == null) {
                this.f4711a.set(c.HEADER_CONTENT_TYPE, a.getContentType(file.getAbsolutePath()));
            }
            sendStream(new BufferedInputStream(new FileInputStream(file), t.SETTINGS_LOG_BUFFER_SIZE_DEFAULT), file.length());
        } catch (FileNotFoundException unused) {
            code(404);
            end();
        }
    }

    public void proxy(final com.koushikdutta.async.http.e eVar) {
        code(eVar.code());
        eVar.headers().removeAll("Transfer-Encoding");
        eVar.headers().removeAll(c.HEADER_CONTENT_ENCODING);
        eVar.headers().removeAll("Connection");
        getHeaders().addAll(eVar.headers());
        eVar.headers().set("Connection", "close");
        af.pump((com.koushikdutta.async.n) eVar, (q) this, (a) new a() {
            public final void onCompleted(Exception exc) {
                eVar.setEndCallback(new a.C0084a());
                eVar.setDataCallback(new d.a());
                e.this.end();
            }
        });
    }

    public d code(int i2) {
        this.i = i2;
        return this;
    }

    public int code() {
        return this.i;
    }

    public void redirect(String str) {
        code(302);
        this.f4711a.set(c.HEADER_LOCATION, str);
        end();
    }

    public void onCompleted(Exception exc) {
        end();
    }

    public boolean isOpen() {
        q qVar = this.e;
        if (qVar != null) {
            return qVar.isOpen();
        }
        return this.f4712b.isOpen();
    }

    public void setClosedCallback(a aVar) {
        q qVar = this.e;
        if (qVar != null) {
            qVar.setClosedCallback(aVar);
        } else {
            this.j = aVar;
        }
    }

    public a getClosedCallback() {
        q qVar = this.e;
        if (qVar != null) {
            return qVar.getClosedCallback();
        }
        return this.j;
    }

    public h getServer() {
        return this.f4712b.getServer();
    }

    public String toString() {
        if (this.f4711a == null) {
            return super.toString();
        }
        return this.f4711a.toPrefixString(String.format(Locale.ENGLISH, "HTTP/1.1 %s %s", new Object[]{Integer.valueOf(this.i), a.getResponseCodeDescription(this.i)}));
    }
}
