package com.koushikdutta.async.http.spdy;

import com.adjust.sdk.Constants;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.a.g;
import com.koushikdutta.async.af;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.spdy.e;
import com.koushikdutta.async.j;
import com.koushikdutta.async.k;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class a implements e.a {

    /* renamed from: a  reason: collision with root package name */
    j f4776a;

    /* renamed from: b  reason: collision with root package name */
    k f4777b;
    e c;
    f d;
    r e;
    Hashtable<Integer, C0090a> f = new Hashtable<>();
    Protocol g;
    boolean h = true;
    int i;
    final m j = new m();
    long k;
    m l = new m();
    boolean m;
    private int n;
    private int o;
    private int p;
    private boolean q = false;
    private Map<Integer, l> r;

    /* renamed from: com.koushikdutta.async.http.spdy.a$a  reason: collision with other inner class name */
    public class C0090a implements j {

        /* renamed from: a  reason: collision with root package name */
        long f4778a = ((long) a.this.l.getInitialWindowSize(65536));

        /* renamed from: b  reason: collision with root package name */
        g f4779b;
        final int c;
        com.koushikdutta.async.a.a d;
        com.koushikdutta.async.a.a e;
        d f;
        l g = new l();
        i<List<g>> h = new i<>();
        boolean i = true;
        int j;
        boolean k;
        l l = new l();

        public final String charset() {
            return null;
        }

        public final boolean isChunked() {
            return false;
        }

        public final a getConnection() {
            return a.this;
        }

        public final i<List<g>> headers() {
            return this.h;
        }

        public C0090a(int i2, boolean z, boolean z2, List<g> list) {
            this.c = i2;
        }

        public final boolean isLocallyInitiated() {
            return a.this.h == ((this.c & 1) == 1);
        }

        public final void addBytesToWriteWindow(long j2) {
            long j3 = this.f4778a;
            this.f4778a = j2 + j3;
            if (this.f4778a > 0 && j3 <= 0) {
                af.writable(this.f4779b);
            }
        }

        public final h getServer() {
            return a.this.f4776a.getServer();
        }

        public final void setDataCallback(d dVar) {
            this.f = dVar;
        }

        public final d getDataCallback() {
            return this.f;
        }

        public final void pause() {
            this.k = true;
        }

        public final void resume() {
            this.k = false;
        }

        public final void close() {
            this.i = false;
        }

        public final boolean isPaused() {
            return this.k;
        }

        public final void setEndCallback(com.koushikdutta.async.a.a aVar) {
            this.e = aVar;
        }

        public final com.koushikdutta.async.a.a getEndCallback() {
            return this.e;
        }

        public final void write(l lVar) {
            int min = Math.min(lVar.remaining(), (int) Math.min(this.f4778a, a.this.k));
            if (min != 0) {
                if (min < lVar.remaining()) {
                    if (!this.l.hasRemaining()) {
                        lVar.get(this.l, min);
                        lVar = this.l;
                    } else {
                        throw new AssertionError("wtf");
                    }
                }
                try {
                    a.this.d.data(false, this.c, lVar);
                    this.f4778a -= (long) min;
                } catch (IOException e2) {
                    throw new AssertionError(e2);
                }
            }
        }

        public final void setWriteableCallback(g gVar) {
            this.f4779b = gVar;
        }

        public final g getWriteableCallback() {
            return this.f4779b;
        }

        public final boolean isOpen() {
            return this.i;
        }

        public final void end() {
            try {
                a.this.d.data(true, this.c, this.l);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        public final void setClosedCallback(com.koushikdutta.async.a.a aVar) {
            this.d = aVar;
        }

        public final com.koushikdutta.async.a.a getClosedCallback() {
            return this.d;
        }

        public final void receiveHeaders(List<g> list, HeadersMode headersMode) {
            this.h.setComplete(list);
        }
    }

    public void alternateService(int i2, String str, c cVar, String str2, int i3, long j2) {
    }

    public void priority(int i2, int i3, int i4, boolean z) {
    }

    public C0090a newStream(List<g> list, boolean z, boolean z2) {
        return a(list, z, z2);
    }

    private C0090a a(List<g> list, boolean z, boolean z2) {
        boolean z3 = !z;
        boolean z4 = !z2;
        if (this.m) {
            return null;
        }
        int i2 = this.p;
        this.p = i2 + 2;
        C0090a aVar = new C0090a(i2, z3, z4, list);
        if (aVar.isOpen()) {
            this.f.put(Integer.valueOf(i2), aVar);
        }
        try {
            this.d.synStream(z3, z4, i2, 0, list);
            return aVar;
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public a(j jVar, Protocol protocol) {
        this.g = protocol;
        this.f4776a = jVar;
        this.f4777b = new k(jVar);
        if (protocol == Protocol.SPDY_3) {
            this.e = new n();
        } else if (protocol == Protocol.HTTP_2) {
            this.e = new j();
        }
        this.c = this.e.newReader(jVar, this, true);
        this.d = this.e.newWriter(this.f4777b, true);
        this.p = 1;
        if (protocol == Protocol.HTTP_2) {
            this.p += 2;
        }
        this.n = 1;
        this.j.set(7, 0, 16777216);
    }

    public void sendConnectionPreface() throws IOException {
        this.d.connectionPreface();
        this.d.settings(this.j);
        int initialWindowSize = this.j.getInitialWindowSize(65536);
        if (initialWindowSize != 65536) {
            this.d.windowUpdate(0, (long) (initialWindowSize - 65536));
        }
    }

    private boolean a(int i2) {
        return this.g == Protocol.HTTP_2 && i2 != 0 && (i2 & 1) == 0;
    }

    public void data(boolean z, int i2, l lVar) {
        if (!a(i2)) {
            C0090a aVar = this.f.get(Integer.valueOf(i2));
            if (aVar == null) {
                try {
                    this.d.rstStream(i2, d.INVALID_STREAM);
                    lVar.recycle();
                } catch (IOException e2) {
                    throw new AssertionError(e2);
                }
            } else {
                int remaining = lVar.remaining();
                lVar.get(aVar.g);
                aVar.j += remaining;
                if (aVar.j >= a.this.j.getInitialWindowSize(65536) / 2) {
                    try {
                        a.this.d.windowUpdate(aVar.c, (long) aVar.j);
                        aVar.j = 0;
                    } catch (IOException e3) {
                        throw new AssertionError(e3);
                    }
                }
                a aVar2 = a.this;
                aVar2.i += remaining;
                if (aVar2.i >= aVar2.j.getInitialWindowSize(65536) / 2) {
                    try {
                        aVar2.d.windowUpdate(0, (long) aVar2.i);
                        aVar2.i = 0;
                    } catch (IOException e4) {
                        throw new AssertionError(e4);
                    }
                }
                af.emitAllData(aVar, aVar.g);
                if (z) {
                    this.f.remove(Integer.valueOf(i2));
                    aVar.close();
                    af.end((n) aVar, (Exception) null);
                }
            }
        } else {
            throw new AssertionError(Constants.PUSH);
        }
    }

    public void headers(boolean z, boolean z2, int i2, int i3, List<g> list, HeadersMode headersMode) {
        if (a(i2)) {
            throw new AssertionError(Constants.PUSH);
        } else if (!this.m) {
            C0090a aVar = this.f.get(Integer.valueOf(i2));
            if (aVar == null) {
                if (headersMode.failIfStreamAbsent()) {
                    try {
                        this.d.rstStream(i2, d.INVALID_STREAM);
                    } catch (IOException e2) {
                        throw new AssertionError(e2);
                    }
                } else if (i2 > this.o && i2 % 2 != this.p % 2) {
                    throw new AssertionError("unexpected receive stream");
                }
            } else if (headersMode.failIfStreamPresent()) {
                try {
                    this.d.rstStream(i2, d.INVALID_STREAM);
                    this.f.remove(Integer.valueOf(i2));
                } catch (IOException e3) {
                    throw new AssertionError(e3);
                }
            } else {
                aVar.receiveHeaders(list, headersMode);
                if (z2) {
                    this.f.remove(Integer.valueOf(i2));
                    af.end((n) aVar, (Exception) null);
                }
            }
        }
    }

    public void rstStream(int i2, d dVar) {
        if (!a(i2)) {
            C0090a remove = this.f.remove(Integer.valueOf(i2));
            if (remove != null) {
                af.end((n) remove, (Exception) new IOException(dVar.toString()));
                return;
            }
            return;
        }
        throw new AssertionError(Constants.PUSH);
    }

    public void settings(boolean z, m mVar) {
        long j2;
        int initialWindowSize = this.l.getInitialWindowSize(65536);
        if (z) {
            this.l.clear();
        }
        this.l.merge(mVar);
        try {
            this.d.ackSettings();
            int initialWindowSize2 = this.l.getInitialWindowSize(65536);
            if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                j2 = 0;
            } else {
                j2 = (long) (initialWindowSize2 - initialWindowSize);
                if (!this.q) {
                    a(j2);
                    this.q = true;
                }
            }
            for (C0090a addBytesToWriteWindow : this.f.values()) {
                addBytesToWriteWindow.addBytesToWriteWindow(j2);
            }
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    private void a(long j2) {
        this.k += j2;
        for (C0090a writable : this.f.values()) {
            af.writable((q) writable);
        }
    }

    public void ackSettings() {
        try {
            this.d.ackSettings();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    private synchronized l b(int i2) {
        if (this.r == null) {
            return null;
        }
        return this.r.remove(Integer.valueOf(i2));
    }

    public void ping(boolean z, int i2, int i3) {
        if (z) {
            l b2 = b(i2);
            if (b2 != null) {
                b2.receive();
            }
            return;
        }
        try {
            this.d.ping(true, i2, i3);
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public void goAway(int i2, d dVar, c cVar) {
        this.m = true;
        Iterator<Map.Entry<Integer, C0090a>> it = this.f.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry next = it.next();
            if (((Integer) next.getKey()).intValue() > i2 && ((C0090a) next.getValue()).isLocallyInitiated()) {
                af.end((n) next.getValue(), (Exception) new IOException(d.REFUSED_STREAM.toString()));
                it.remove();
            }
        }
    }

    public void windowUpdate(int i2, long j2) {
        if (i2 == 0) {
            a(j2);
            return;
        }
        C0090a aVar = this.f.get(Integer.valueOf(i2));
        if (aVar != null) {
            aVar.addBytesToWriteWindow(j2);
        }
    }

    public void pushPromise(int i2, int i3, List<g> list) {
        throw new AssertionError("pushPromise");
    }

    public void error(Exception exc) {
        this.f4776a.close();
        Iterator<Map.Entry<Integer, C0090a>> it = this.f.entrySet().iterator();
        while (it.hasNext()) {
            af.end((n) it.next().getValue(), exc);
            it.remove();
        }
    }
}
