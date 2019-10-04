package b.H;

import androidx.work.BackoffPolicy;
import androidx.work.ListenableWorker;
import b.H.a.c.o;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* compiled from: WorkRequest */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    public UUID f1650a;

    /* renamed from: b  reason: collision with root package name */
    public o f1651b;

    /* renamed from: c  reason: collision with root package name */
    public Set<String> f1652c;

    /* compiled from: WorkRequest */
    public static abstract class a<B extends a, W extends n> {

        /* renamed from: a  reason: collision with root package name */
        public boolean f1653a = false;

        /* renamed from: b  reason: collision with root package name */
        public UUID f1654b = UUID.randomUUID();

        /* renamed from: c  reason: collision with root package name */
        public o f1655c;

        /* renamed from: d  reason: collision with root package name */
        public Set<String> f1656d = new HashSet();

        public a(Class<? extends ListenableWorker> cls) {
            this.f1655c = new o(this.f1654b.toString(), cls.getName());
            a(cls.getName());
        }

        public final B a(BackoffPolicy backoffPolicy, long j2, TimeUnit timeUnit) {
            this.f1653a = true;
            o oVar = this.f1655c;
            oVar.n = backoffPolicy;
            oVar.a(timeUnit.toMillis(j2));
            return c();
        }

        public abstract W b();

        public abstract B c();

        public final B a(b bVar) {
            this.f1655c.f1475l = bVar;
            return c();
        }

        public final B a(d dVar) {
            this.f1655c.f1470g = dVar;
            return c();
        }

        public final B a(String str) {
            this.f1656d.add(str);
            return c();
        }

        public final W a() {
            W b2 = b();
            this.f1654b = UUID.randomUUID();
            this.f1655c = new o(this.f1655c);
            this.f1655c.f1466c = this.f1654b.toString();
            return b2;
        }
    }

    public n(UUID uuid, o oVar, Set<String> set) {
        this.f1650a = uuid;
        this.f1651b = oVar;
        this.f1652c = set;
    }

    public String a() {
        return this.f1650a.toString();
    }

    public Set<String> b() {
        return this.f1652c;
    }

    public o c() {
        return this.f1651b;
    }
}
