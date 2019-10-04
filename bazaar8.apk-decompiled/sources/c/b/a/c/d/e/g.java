package c.b.a.c.d.e;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import c.b.a.c.b.a.e;
import c.b.a.c.b.p;
import c.b.a.c.i;
import c.b.a.g.a.f;
import c.b.a.g.a.h;
import c.b.a.k;
import c.b.a.n;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GifFrameLoader */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public final c.b.a.b.a f4239a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f4240b;

    /* renamed from: c  reason: collision with root package name */
    public final List<b> f4241c;

    /* renamed from: d  reason: collision with root package name */
    public final n f4242d;

    /* renamed from: e  reason: collision with root package name */
    public final e f4243e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4244f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f4245g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4246h;

    /* renamed from: i  reason: collision with root package name */
    public k<Bitmap> f4247i;

    /* renamed from: j  reason: collision with root package name */
    public a f4248j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4249k;

    /* renamed from: l  reason: collision with root package name */
    public a f4250l;
    public Bitmap m;
    public i<Bitmap> n;
    public a o;
    public d p;

    /* compiled from: GifFrameLoader */
    static class a extends f<Bitmap> {

        /* renamed from: d  reason: collision with root package name */
        public final Handler f4251d;

        /* renamed from: e  reason: collision with root package name */
        public final int f4252e;

        /* renamed from: f  reason: collision with root package name */
        public final long f4253f;

        /* renamed from: g  reason: collision with root package name */
        public Bitmap f4254g;

        public a(Handler handler, int i2, long j2) {
            this.f4251d = handler;
            this.f4252e = i2;
            this.f4253f = j2;
        }

        public Bitmap c() {
            return this.f4254g;
        }

        public void a(Bitmap bitmap, c.b.a.g.b.b<? super Bitmap> bVar) {
            this.f4254g = bitmap;
            this.f4251d.sendMessageAtTime(this.f4251d.obtainMessage(1, this), this.f4253f);
        }
    }

    /* compiled from: GifFrameLoader */
    public interface b {
        void a();
    }

    /* compiled from: GifFrameLoader */
    private class c implements Handler.Callback {
        public c() {
        }

        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                g.this.a((a) message.obj);
                return true;
            }
            if (i2 == 2) {
                g.this.f4242d.a((h<?>) (a) message.obj);
            }
            return false;
        }
    }

    /* compiled from: GifFrameLoader */
    interface d {
        void a();
    }

    public g(c.b.a.e eVar, c.b.a.b.a aVar, int i2, int i3, i<Bitmap> iVar, Bitmap bitmap) {
        this(eVar.d(), c.b.a.e.e(eVar.f()), aVar, null, a(c.b.a.e.e(eVar.f()), i2, i3), iVar, bitmap);
    }

    public static c.b.a.c.c g() {
        return new c.b.a.h.b(Double.valueOf(Math.random()));
    }

    public void a(i<Bitmap> iVar, Bitmap bitmap) {
        c.b.a.i.i.a(iVar);
        this.n = iVar;
        c.b.a.i.i.a(bitmap);
        this.m = bitmap;
        this.f4247i = this.f4247i.a(new c.b.a.g.g().a(iVar));
    }

    public void b(b bVar) {
        this.f4241c.remove(bVar);
        if (this.f4241c.isEmpty()) {
            o();
        }
    }

    public Bitmap c() {
        a aVar = this.f4248j;
        return aVar != null ? aVar.c() : this.m;
    }

    public int d() {
        a aVar = this.f4248j;
        if (aVar != null) {
            return aVar.f4252e;
        }
        return -1;
    }

    public Bitmap e() {
        return this.m;
    }

    public int f() {
        return this.f4239a.b();
    }

    public final int h() {
        return c.b.a.i.k.a(c().getWidth(), c().getHeight(), c().getConfig());
    }

    public int i() {
        return c().getHeight();
    }

    public int j() {
        return this.f4239a.f() + h();
    }

    public int k() {
        return c().getWidth();
    }

    public final void l() {
        if (this.f4244f && !this.f4245g) {
            if (this.f4246h) {
                c.b.a.i.i.a(this.o == null, "Pending target must be null when starting from the first frame");
                this.f4239a.d();
                this.f4246h = false;
            }
            a aVar = this.o;
            if (aVar != null) {
                this.o = null;
                a(aVar);
                return;
            }
            this.f4245g = true;
            long uptimeMillis = SystemClock.uptimeMillis() + ((long) this.f4239a.c());
            this.f4239a.advance();
            this.f4250l = new a(this.f4240b, this.f4239a.e(), uptimeMillis);
            this.f4247i.a(c.b.a.g.g.b(g())).a((Object) this.f4239a).a(this.f4250l);
        }
    }

    public final void m() {
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            this.f4243e.a(bitmap);
            this.m = null;
        }
    }

    public final void n() {
        if (!this.f4244f) {
            this.f4244f = true;
            this.f4249k = false;
            l();
        }
    }

    public final void o() {
        this.f4244f = false;
    }

    public void a(b bVar) {
        if (this.f4249k) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        } else if (!this.f4241c.contains(bVar)) {
            boolean isEmpty = this.f4241c.isEmpty();
            this.f4241c.add(bVar);
            if (isEmpty) {
                n();
            }
        } else {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
    }

    public ByteBuffer b() {
        return this.f4239a.getData().asReadOnlyBuffer();
    }

    public g(e eVar, n nVar, c.b.a.b.a aVar, Handler handler, k<Bitmap> kVar, i<Bitmap> iVar, Bitmap bitmap) {
        this.f4241c = new ArrayList();
        this.f4242d = nVar;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.f4243e = eVar;
        this.f4240b = handler;
        this.f4247i = kVar;
        this.f4239a = aVar;
        a(iVar, bitmap);
    }

    public void a() {
        this.f4241c.clear();
        m();
        o();
        a aVar = this.f4248j;
        if (aVar != null) {
            this.f4242d.a((h<?>) aVar);
            this.f4248j = null;
        }
        a aVar2 = this.f4250l;
        if (aVar2 != null) {
            this.f4242d.a((h<?>) aVar2);
            this.f4250l = null;
        }
        a aVar3 = this.o;
        if (aVar3 != null) {
            this.f4242d.a((h<?>) aVar3);
            this.o = null;
        }
        this.f4239a.clear();
        this.f4249k = true;
    }

    public void a(a aVar) {
        d dVar = this.p;
        if (dVar != null) {
            dVar.a();
        }
        this.f4245g = false;
        if (this.f4249k) {
            this.f4240b.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.f4244f) {
            this.o = aVar;
        } else {
            if (aVar.c() != null) {
                m();
                a aVar2 = this.f4248j;
                this.f4248j = aVar;
                for (int size = this.f4241c.size() - 1; size >= 0; size--) {
                    this.f4241c.get(size).a();
                }
                if (aVar2 != null) {
                    this.f4240b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            l();
        }
    }

    public static k<Bitmap> a(n nVar, int i2, int i3) {
        return nVar.c().a(c.b.a.g.g.b(p.f3988b).b(true).a(true).b(i2, i3));
    }
}
