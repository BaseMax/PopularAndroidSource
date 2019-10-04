package c.e.a.a;

import android.os.Handler;
import c.e.a.a.o.C0737e;

/* compiled from: PlayerMessage */
public final class O {

    /* renamed from: a  reason: collision with root package name */
    public final b f7304a;

    /* renamed from: b  reason: collision with root package name */
    public final a f7305b;

    /* renamed from: c  reason: collision with root package name */
    public final Z f7306c;

    /* renamed from: d  reason: collision with root package name */
    public int f7307d;

    /* renamed from: e  reason: collision with root package name */
    public Object f7308e;

    /* renamed from: f  reason: collision with root package name */
    public Handler f7309f;

    /* renamed from: g  reason: collision with root package name */
    public int f7310g;

    /* renamed from: h  reason: collision with root package name */
    public long f7311h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7312i = true;

    /* renamed from: j  reason: collision with root package name */
    public boolean f7313j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f7314k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7315l;
    public boolean m;

    /* compiled from: PlayerMessage */
    public interface a {
        void a(O o);
    }

    /* compiled from: PlayerMessage */
    public interface b {
        void a(int i2, Object obj);
    }

    public O(a aVar, b bVar, Z z, int i2, Handler handler) {
        this.f7305b = aVar;
        this.f7304a = bVar;
        this.f7306c = z;
        this.f7309f = handler;
        this.f7310g = i2;
    }

    public O a(int i2) {
        C0737e.b(!this.f7313j);
        this.f7307d = i2;
        return this;
    }

    public boolean b() {
        return this.f7312i;
    }

    public Handler c() {
        return this.f7309f;
    }

    public Object d() {
        return this.f7308e;
    }

    public long e() {
        return this.f7311h;
    }

    public b f() {
        return this.f7304a;
    }

    public Z g() {
        return this.f7306c;
    }

    public int h() {
        return this.f7307d;
    }

    public int i() {
        return this.f7310g;
    }

    public synchronized boolean j() {
        return this.m;
    }

    public O k() {
        C0737e.b(!this.f7313j);
        if (this.f7311h == -9223372036854775807L) {
            C0737e.a(this.f7312i);
        }
        this.f7313j = true;
        this.f7305b.a(this);
        return this;
    }

    public O a(Object obj) {
        C0737e.b(!this.f7313j);
        this.f7308e = obj;
        return this;
    }

    public synchronized boolean a() {
        C0737e.b(this.f7313j);
        C0737e.b(this.f7309f.getLooper().getThread() != Thread.currentThread());
        while (!this.f7315l) {
            wait();
        }
        return this.f7314k;
    }

    public synchronized void a(boolean z) {
        this.f7314k = z | this.f7314k;
        this.f7315l = true;
        notifyAll();
    }
}
