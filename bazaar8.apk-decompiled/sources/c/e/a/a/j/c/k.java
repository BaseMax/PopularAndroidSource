package c.e.a.a.j.c;

import android.os.Handler;
import android.os.Message;
import c.e.a.a.E;
import c.e.a.a.c.f;
import c.e.a.a.e.h;
import c.e.a.a.e.q;
import c.e.a.a.j.B;
import c.e.a.a.j.b.d;
import c.e.a.a.n.e;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PlayerEmsgHandler */
public final class k implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final e f8681a;

    /* renamed from: b  reason: collision with root package name */
    public final b f8682b;

    /* renamed from: c  reason: collision with root package name */
    public final c.e.a.a.g.a.b f8683c = new c.e.a.a.g.a.b();

    /* renamed from: d  reason: collision with root package name */
    public final Handler f8684d = I.a((Handler.Callback) this);

    /* renamed from: e  reason: collision with root package name */
    public final TreeMap<Long, Long> f8685e = new TreeMap<>();

    /* renamed from: f  reason: collision with root package name */
    public c.e.a.a.j.c.a.b f8686f;

    /* renamed from: g  reason: collision with root package name */
    public long f8687g;

    /* renamed from: h  reason: collision with root package name */
    public long f8688h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    public long f8689i = -9223372036854775807L;

    /* renamed from: j  reason: collision with root package name */
    public boolean f8690j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f8691k;

    /* compiled from: PlayerEmsgHandler */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f8692a;

        /* renamed from: b  reason: collision with root package name */
        public final long f8693b;

        public a(long j2, long j3) {
            this.f8692a = j2;
            this.f8693b = j3;
        }
    }

    /* compiled from: PlayerEmsgHandler */
    public interface b {
        void a();

        void a(long j2);
    }

    /* compiled from: PlayerEmsgHandler */
    public final class c implements q {

        /* renamed from: a  reason: collision with root package name */
        public final B f8694a;

        /* renamed from: b  reason: collision with root package name */
        public final E f8695b = new E();

        /* renamed from: c  reason: collision with root package name */
        public final c.e.a.a.g.e f8696c = new c.e.a.a.g.e();

        public c(B b2) {
            this.f8694a = b2;
        }

        public void a(Format format) {
            this.f8694a.a(format);
        }

        public void b(d dVar) {
            k.this.b(dVar);
        }

        public void c() {
            this.f8694a.m();
        }

        public int a(h hVar, int i2, boolean z) {
            return this.f8694a.a(hVar, i2, z);
        }

        public final void b() {
            while (this.f8694a.j()) {
                c.e.a.a.g.e a2 = a();
                if (a2 != null) {
                    long j2 = a2.f7546d;
                    EventMessage eventMessage = (EventMessage) k.this.f8683c.a(a2).a(0);
                    if (k.a(eventMessage.f12595a, eventMessage.f12596b)) {
                        a(j2, eventMessage);
                    }
                }
            }
            this.f8694a.c();
        }

        public void a(v vVar, int i2) {
            this.f8694a.a(vVar, i2);
        }

        public void a(long j2, int i2, int i3, int i4, q.a aVar) {
            this.f8694a.a(j2, i2, i3, i4, aVar);
            b();
        }

        public boolean a(long j2) {
            return k.this.b(j2);
        }

        public boolean a(d dVar) {
            return k.this.a(dVar);
        }

        public final c.e.a.a.g.e a() {
            this.f8696c.g();
            if (this.f8694a.a(this.f8695b, (f) this.f8696c, false, false, 0) != -4) {
                return null;
            }
            this.f8696c.k();
            return this.f8696c;
        }

        public final void a(long j2, EventMessage eventMessage) {
            long a2 = k.b(eventMessage);
            if (a2 != -9223372036854775807L) {
                a(j2, a2);
            }
        }

        public final void a(long j2, long j3) {
            k.this.f8684d.sendMessage(k.this.f8684d.obtainMessage(1, new a(j2, j3)));
        }
    }

    public k(c.e.a.a.j.c.a.b bVar, b bVar2, e eVar) {
        this.f8686f = bVar;
        this.f8682b = bVar2;
        this.f8681a = eVar;
    }

    public final void c() {
        this.f8682b.a(this.f8687g);
    }

    public void d() {
        this.f8691k = true;
        this.f8684d.removeCallbacksAndMessages(null);
    }

    public final void e() {
        Iterator<Map.Entry<Long, Long>> it = this.f8685e.entrySet().iterator();
        while (it.hasNext()) {
            if (((Long) it.next().getKey()).longValue() < this.f8686f.f8529h) {
                it.remove();
            }
        }
    }

    public boolean handleMessage(Message message) {
        if (this.f8691k) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        a(aVar.f8692a, aVar.f8693b);
        return true;
    }

    public boolean b(long j2) {
        c.e.a.a.j.c.a.b bVar = this.f8686f;
        boolean z = false;
        if (!bVar.f8525d) {
            return false;
        }
        if (this.f8690j) {
            return true;
        }
        Map.Entry<Long, Long> a2 = a(bVar.f8529h);
        if (a2 != null && a2.getValue().longValue() < j2) {
            this.f8687g = a2.getKey().longValue();
            c();
            z = true;
        }
        if (z) {
            a();
        }
        return z;
    }

    public void a(c.e.a.a.j.c.a.b bVar) {
        this.f8690j = false;
        this.f8687g = -9223372036854775807L;
        this.f8686f = bVar;
        e();
    }

    public boolean a(d dVar) {
        if (!this.f8686f.f8525d) {
            return false;
        }
        if (this.f8690j) {
            return true;
        }
        long j2 = this.f8688h;
        if (!(j2 != -9223372036854775807L && j2 < dVar.f8464f)) {
            return false;
        }
        a();
        return true;
    }

    public void b(d dVar) {
        long j2 = this.f8688h;
        if (j2 != -9223372036854775807L || dVar.f8465g > j2) {
            this.f8688h = dVar.f8465g;
        }
    }

    public static boolean a(String str, String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2));
    }

    public c b() {
        return new c(new B(this.f8681a));
    }

    public static long b(EventMessage eventMessage) {
        try {
            return I.i(I.a(eventMessage.f12599e));
        } catch (ParserException unused) {
            return -9223372036854775807L;
        }
    }

    public final void a(long j2, long j3) {
        Long l2 = this.f8685e.get(Long.valueOf(j3));
        if (l2 == null) {
            this.f8685e.put(Long.valueOf(j3), Long.valueOf(j2));
        } else if (l2.longValue() > j2) {
            this.f8685e.put(Long.valueOf(j3), Long.valueOf(j2));
        }
    }

    public final Map.Entry<Long, Long> a(long j2) {
        return this.f8685e.ceilingEntry(Long.valueOf(j2));
    }

    public final void a() {
        long j2 = this.f8689i;
        if (j2 == -9223372036854775807L || j2 != this.f8688h) {
            this.f8690j = true;
            this.f8689i = this.f8688h;
            this.f8682b.a();
        }
    }
}
