package c.e.a.a.k.a;

import c.e.a.a.k.e;
import c.e.a.a.k.i;
import c.e.a.a.k.j;
import c.e.a.a.o.C0737e;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* compiled from: CeaDecoder */
public abstract class f implements c.e.a.a.k.f {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayDeque<a> f9104a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    public final ArrayDeque<j> f9105b;

    /* renamed from: c  reason: collision with root package name */
    public final PriorityQueue<a> f9106c;

    /* renamed from: d  reason: collision with root package name */
    public a f9107d;

    /* renamed from: e  reason: collision with root package name */
    public long f9108e;

    /* renamed from: f  reason: collision with root package name */
    public long f9109f;

    /* compiled from: CeaDecoder */
    private static final class a extends i implements Comparable<a> {

        /* renamed from: g  reason: collision with root package name */
        public long f9110g;

        public a() {
        }

        /* renamed from: a */
        public int compareTo(a aVar) {
            int i2 = 1;
            if (i() != aVar.i()) {
                if (!i()) {
                    i2 = -1;
                }
                return i2;
            }
            long j2 = this.f7546d - aVar.f7546d;
            if (j2 == 0) {
                j2 = this.f9110g - aVar.f9110g;
                if (j2 == 0) {
                    return 0;
                }
            }
            if (j2 <= 0) {
                i2 = -1;
            }
            return i2;
        }
    }

    /* compiled from: CeaDecoder */
    private final class b extends j {
        public b() {
        }

        public final void k() {
            f.this.a((j) this);
        }
    }

    public f() {
        for (int i2 = 0; i2 < 10; i2++) {
            this.f9104a.add(new a());
        }
        this.f9105b = new ArrayDeque<>();
        for (int i3 = 0; i3 < 2; i3++) {
            this.f9105b.add(new b());
        }
        this.f9106c = new PriorityQueue<>();
    }

    public void a() {
    }

    public abstract void a(i iVar);

    public abstract e d();

    public abstract boolean e();

    public void flush() {
        this.f9109f = 0;
        this.f9108e = 0;
        while (!this.f9106c.isEmpty()) {
            a(this.f9106c.poll());
        }
        a aVar = this.f9107d;
        if (aVar != null) {
            a(aVar);
            this.f9107d = null;
        }
    }

    public void a(long j2) {
        this.f9108e = j2;
    }

    /* renamed from: b */
    public void a(i iVar) {
        C0737e.a(iVar == this.f9107d);
        if (iVar.h()) {
            a(this.f9107d);
        } else {
            a aVar = this.f9107d;
            long j2 = this.f9109f;
            this.f9109f = 1 + j2;
            long unused = aVar.f9110g = j2;
            this.f9106c.add(this.f9107d);
        }
        this.f9107d = null;
    }

    public i c() {
        C0737e.b(this.f9107d == null);
        if (this.f9104a.isEmpty()) {
            return null;
        }
        this.f9107d = this.f9104a.pollFirst();
        return this.f9107d;
    }

    public final void a(a aVar) {
        aVar.g();
        this.f9104a.add(aVar);
    }

    public void a(j jVar) {
        jVar.g();
        this.f9105b.add(jVar);
    }

    public j b() {
        if (this.f9105b.isEmpty()) {
            return null;
        }
        while (!this.f9106c.isEmpty() && this.f9106c.peek().f7546d <= this.f9108e) {
            a poll = this.f9106c.poll();
            if (poll.i()) {
                j pollFirst = this.f9105b.pollFirst();
                pollFirst.b(4);
                a(poll);
                return pollFirst;
            }
            a((i) poll);
            if (e()) {
                e d2 = d();
                if (!poll.h()) {
                    j pollFirst2 = this.f9105b.pollFirst();
                    pollFirst2.a(poll.f7546d, d2, Long.MAX_VALUE);
                    a(poll);
                    return pollFirst2;
                }
            }
            a(poll);
        }
        return null;
    }
}
