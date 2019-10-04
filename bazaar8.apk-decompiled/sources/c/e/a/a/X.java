package c.e.a.a;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import c.e.a.a.M;
import c.e.a.a.O;
import c.e.a.a.a.a;
import c.e.a.a.b.l;
import c.e.a.a.b.o;
import c.e.a.a.b.p;
import c.e.a.a.b.q;
import c.e.a.a.c.e;
import c.e.a.a.d.h;
import c.e.a.a.g.f;
import c.e.a.a.j.v;
import c.e.a.a.j.w;
import c.e.a.a.k.b;
import c.e.a.a.k.k;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.C0738f;
import c.e.a.a.p.o;
import c.e.a.a.p.r;
import c.e.a.a.p.s;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: SimpleExoPlayer */
public class X extends C0732o implements C0749w, M.a, M.e, M.d, M.c {
    public l A;
    public float B;
    public v C;
    public List<b> D;
    public o E;
    public c.e.a.a.p.a.a F;
    public boolean G;
    public PriorityTaskManager H;
    public boolean I;

    /* renamed from: b  reason: collision with root package name */
    public final Q[] f7325b;

    /* renamed from: c  reason: collision with root package name */
    public final C0752z f7326c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f7327d;

    /* renamed from: e  reason: collision with root package name */
    public final a f7328e;

    /* renamed from: f  reason: collision with root package name */
    public final CopyOnWriteArraySet<r> f7329f;

    /* renamed from: g  reason: collision with root package name */
    public final CopyOnWriteArraySet<p> f7330g;

    /* renamed from: h  reason: collision with root package name */
    public final CopyOnWriteArraySet<k> f7331h;

    /* renamed from: i  reason: collision with root package name */
    public final CopyOnWriteArraySet<f> f7332i;

    /* renamed from: j  reason: collision with root package name */
    public final CopyOnWriteArraySet<s> f7333j;

    /* renamed from: k  reason: collision with root package name */
    public final CopyOnWriteArraySet<q> f7334k;

    /* renamed from: l  reason: collision with root package name */
    public final c.e.a.a.n.f f7335l;
    public final c.e.a.a.a.a m;
    public final c.e.a.a.b.o n;
    public Format o;
    public Format p;
    public Surface q;
    public boolean r;
    public int s;
    public SurfaceHolder t;
    public TextureView u;
    public int v;
    public int w;
    public e x;
    public e y;
    public int z;

    /* compiled from: SimpleExoPlayer */
    private final class a implements s, q, k, f, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, o.b, M.b {
        public a() {
        }

        public /* synthetic */ void a(int i2) {
            N.b((M.b) this, i2);
        }

        public /* synthetic */ void a(K k2) {
            N.a((M.b) this, k2);
        }

        public /* synthetic */ void a(Z z, Object obj, int i2) {
            N.a(this, z, obj, i2);
        }

        public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
            N.a((M.b) this, exoPlaybackException);
        }

        public /* synthetic */ void a(TrackGroupArray trackGroupArray, c.e.a.a.l.o oVar) {
            N.a((M.b) this, trackGroupArray, oVar);
        }

        public void a(String str, long j2, long j3) {
            Iterator it = X.this.f7333j.iterator();
            while (it.hasNext()) {
                ((s) it.next()).a(str, j2, j3);
            }
        }

        public /* synthetic */ void a(boolean z, int i2) {
            N.a((M.b) this, z, i2);
        }

        public /* synthetic */ void b() {
            N.a(this);
        }

        public /* synthetic */ void b(int i2) {
            N.a((M.b) this, i2);
        }

        public void b(e eVar) {
            e unused = X.this.y = eVar;
            Iterator it = X.this.f7334k.iterator();
            while (it.hasNext()) {
                ((q) it.next()).b(eVar);
            }
        }

        public /* synthetic */ void b(boolean z) {
            N.b((M.b) this, z);
        }

        public void c(e eVar) {
            e unused = X.this.x = eVar;
            Iterator it = X.this.f7333j.iterator();
            while (it.hasNext()) {
                ((s) it.next()).c(eVar);
            }
        }

        public void d(e eVar) {
            Iterator it = X.this.f7333j.iterator();
            while (it.hasNext()) {
                ((s) it.next()).d(eVar);
            }
            Format unused = X.this.o = null;
            e unused2 = X.this.x = null;
        }

        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
            X.this.a(new Surface(surfaceTexture), true);
            X.this.a(i2, i3);
        }

        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            X.this.a((Surface) null, true);
            X.this.a(0, 0);
            return true;
        }

        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
            X.this.a(i2, i3);
        }

        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            X.this.a(i3, i4);
        }

        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            X.this.a(surfaceHolder.getSurface(), false);
        }

        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            X.this.a((Surface) null, false);
            X.this.a(0, 0);
        }

        public void a(Format format) {
            Format unused = X.this.o = format;
            Iterator it = X.this.f7333j.iterator();
            while (it.hasNext()) {
                ((s) it.next()).a(format);
            }
        }

        public void b(String str, long j2, long j3) {
            Iterator it = X.this.f7334k.iterator();
            while (it.hasNext()) {
                ((q) it.next()).b(str, j2, j3);
            }
        }

        public void c(int i2) {
            if (X.this.z != i2) {
                int unused = X.this.z = i2;
                Iterator it = X.this.f7330g.iterator();
                while (it.hasNext()) {
                    p pVar = (p) it.next();
                    if (!X.this.f7334k.contains(pVar)) {
                        pVar.c(i2);
                    }
                }
                Iterator it2 = X.this.f7334k.iterator();
                while (it2.hasNext()) {
                    ((q) it2.next()).c(i2);
                }
            }
        }

        public void d(int i2) {
            X x = X.this;
            x.a(x.f(), i2);
        }

        public void a(int i2, long j2) {
            Iterator it = X.this.f7333j.iterator();
            while (it.hasNext()) {
                ((s) it.next()).a(i2, j2);
            }
        }

        public void b(Format format) {
            Format unused = X.this.p = format;
            Iterator it = X.this.f7334k.iterator();
            while (it.hasNext()) {
                ((q) it.next()).b(format);
            }
        }

        public void a(int i2, int i3, int i4, float f2) {
            Iterator it = X.this.f7329f.iterator();
            while (it.hasNext()) {
                r rVar = (r) it.next();
                if (!X.this.f7333j.contains(rVar)) {
                    rVar.a(i2, i3, i4, f2);
                }
            }
            Iterator it2 = X.this.f7333j.iterator();
            while (it2.hasNext()) {
                ((s) it2.next()).a(i2, i3, i4, f2);
            }
        }

        public void a(Surface surface) {
            if (X.this.q == surface) {
                Iterator it = X.this.f7329f.iterator();
                while (it.hasNext()) {
                    ((r) it.next()).a();
                }
            }
            Iterator it2 = X.this.f7333j.iterator();
            while (it2.hasNext()) {
                ((s) it2.next()).a(surface);
            }
        }

        public void a(int i2, long j2, long j3) {
            Iterator it = X.this.f7334k.iterator();
            while (it.hasNext()) {
                ((q) it.next()).a(i2, j2, j3);
            }
        }

        public void a(e eVar) {
            Iterator it = X.this.f7334k.iterator();
            while (it.hasNext()) {
                ((q) it.next()).a(eVar);
            }
            Format unused = X.this.p = null;
            e unused2 = X.this.y = null;
            int unused3 = X.this.z = 0;
        }

        public void a(List<b> list) {
            List unused = X.this.D = list;
            Iterator it = X.this.f7331h.iterator();
            while (it.hasNext()) {
                ((k) it.next()).a(list);
            }
        }

        public void a(Metadata metadata) {
            Iterator it = X.this.f7332i.iterator();
            while (it.hasNext()) {
                ((f) it.next()).a(metadata);
            }
        }

        public void a(float f2) {
            X.this.B();
        }

        public void a(boolean z) {
            if (X.this.H == null) {
                return;
            }
            if (z && !X.this.I) {
                X.this.H.a(0);
                boolean unused = X.this.I = true;
            } else if (!z && X.this.I) {
                X.this.H.b(0);
                boolean unused2 = X.this.I = false;
            }
        }
    }

    public X(Context context, U u2, c.e.a.a.l.r rVar, F f2, c.e.a.a.d.l<c.e.a.a.d.p> lVar, c.e.a.a.n.f fVar, a.C0105a aVar, Looper looper) {
        this(context, u2, rVar, f2, lVar, fVar, aVar, C0738f.f9582a, looper);
    }

    public final void A() {
        TextureView textureView = this.u;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f7328e) {
                c.e.a.a.o.p.d("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.u.setSurfaceTextureListener(null);
            }
            this.u = null;
        }
        SurfaceHolder surfaceHolder = this.t;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f7328e);
            this.t = null;
        }
    }

    public final void B() {
        float d2 = this.B * this.n.d();
        for (Q q2 : this.f7325b) {
            if (q2.f() == 1) {
                O a2 = this.f7326c.a((O.b) q2);
                a2.a(2);
                a2.a((Object) Float.valueOf(d2));
                a2.k();
            }
        }
    }

    public final void C() {
        if (Looper.myLooper() != r()) {
            c.e.a.a.o.p.b("SimpleExoPlayer", "Player is accessed on the wrong thread. See https://exoplayer.dev/faqs.html#what-do-player-is-accessed-on-the-wrong-thread-warnings-mean", this.G ? null : new IllegalStateException());
            this.G = true;
        }
    }

    public long getCurrentPosition() {
        C();
        return this.f7326c.getCurrentPosition();
    }

    public long getDuration() {
        C();
        return this.f7326c.getDuration();
    }

    public M.e k() {
        return this;
    }

    public long l() {
        C();
        return this.f7326c.l();
    }

    public int n() {
        C();
        return this.f7326c.n();
    }

    public TrackGroupArray p() {
        C();
        return this.f7326c.p();
    }

    public Z q() {
        C();
        return this.f7326c.q();
    }

    public Looper r() {
        return this.f7326c.r();
    }

    public boolean s() {
        C();
        return this.f7326c.s();
    }

    public long t() {
        C();
        return this.f7326c.t();
    }

    public c.e.a.a.l.o u() {
        C();
        return this.f7326c.u();
    }

    public M.d v() {
        return this;
    }

    public void z() {
        C();
        this.n.e();
        this.f7326c.A();
        A();
        Surface surface = this.q;
        if (surface != null) {
            if (this.r) {
                surface.release();
            }
            this.q = null;
        }
        v vVar = this.C;
        if (vVar != null) {
            vVar.a((w) this.m);
            this.C = null;
        }
        if (this.I) {
            PriorityTaskManager priorityTaskManager = this.H;
            C0737e.a(priorityTaskManager);
            priorityTaskManager.b(0);
            this.I = false;
        }
        this.f7335l.a(this.m);
        this.D = Collections.emptyList();
    }

    public X(Context context, U u2, c.e.a.a.l.r rVar, F f2, c.e.a.a.d.l<c.e.a.a.d.p> lVar, c.e.a.a.n.f fVar, a.C0105a aVar, C0738f fVar2, Looper looper) {
        c.e.a.a.d.l<c.e.a.a.d.p> lVar2 = lVar;
        c.e.a.a.n.f fVar3 = fVar;
        this.f7335l = fVar3;
        this.f7328e = new a();
        this.f7329f = new CopyOnWriteArraySet<>();
        this.f7330g = new CopyOnWriteArraySet<>();
        this.f7331h = new CopyOnWriteArraySet<>();
        this.f7332i = new CopyOnWriteArraySet<>();
        this.f7333j = new CopyOnWriteArraySet<>();
        this.f7334k = new CopyOnWriteArraySet<>();
        this.f7327d = new Handler(looper);
        Handler handler = this.f7327d;
        a aVar2 = this.f7328e;
        this.f7325b = u2.a(handler, aVar2, aVar2, aVar2, aVar2, lVar);
        this.B = 1.0f;
        this.z = 0;
        this.A = l.f7454a;
        this.s = 1;
        this.D = Collections.emptyList();
        C0752z zVar = new C0752z(this.f7325b, rVar, f2, fVar, fVar2, looper);
        this.f7326c = zVar;
        this.m = aVar.a(this.f7326c, fVar2);
        a((M.b) this.m);
        a((M.b) this.f7328e);
        this.f7333j.add(this.m);
        this.f7329f.add(this.m);
        this.f7334k.add(this.m);
        this.f7330g.add(this.m);
        a((f) this.m);
        fVar3.a(this.f7327d, this.m);
        if (lVar2 instanceof DefaultDrmSessionManager) {
            ((DefaultDrmSessionManager) lVar2).a(this.f7327d, (h) this.m);
        }
        Context context2 = context;
        this.n = new c.e.a.a.b.o(context, this.f7328e);
    }

    public boolean c() {
        C();
        return this.f7326c.c();
    }

    public int d() {
        C();
        return this.f7326c.d();
    }

    public long e() {
        C();
        return this.f7326c.e();
    }

    public boolean f() {
        C();
        return this.f7326c.f();
    }

    public ExoPlaybackException g() {
        C();
        return this.f7326c.g();
    }

    public int i() {
        C();
        return this.f7326c.i();
    }

    public int j() {
        C();
        return this.f7326c.j();
    }

    public void b(Surface surface) {
        C();
        if (surface != null && surface == this.q) {
            a((Surface) null);
        }
    }

    public void b(SurfaceHolder surfaceHolder) {
        C();
        A();
        this.t = surfaceHolder;
        if (surfaceHolder == null) {
            a((Surface) null, false);
            a(0, 0);
            return;
        }
        surfaceHolder.addCallback(this.f7328e);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            a((Surface) null, false);
            a(0, 0);
            return;
        }
        a(surface, false);
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        a(surfaceFrame.width(), surfaceFrame.height());
    }

    public void a(Surface surface) {
        C();
        A();
        int i2 = 0;
        a(surface, false);
        if (surface != null) {
            i2 = -1;
        }
        a(i2, i2);
    }

    public void a(SurfaceHolder surfaceHolder) {
        C();
        if (surfaceHolder != null && surfaceHolder == this.t) {
            b((SurfaceHolder) null);
        }
    }

    public void a(SurfaceView surfaceView) {
        b(surfaceView == null ? null : surfaceView.getHolder());
    }

    public void a(TextureView textureView) {
        C();
        if (textureView != null && textureView == this.u) {
            b((TextureView) null);
        }
    }

    public void b(SurfaceView surfaceView) {
        a(surfaceView == null ? null : surfaceView.getHolder());
    }

    public void a(r rVar) {
        this.f7329f.add(rVar);
    }

    public void b(TextureView textureView) {
        C();
        A();
        this.u = textureView;
        if (textureView == null) {
            a((Surface) null, true);
            a(0, 0);
            return;
        }
        if (textureView.getSurfaceTextureListener() != null) {
            c.e.a.a.o.p.d("SimpleExoPlayer", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f7328e);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            a((Surface) null, true);
            a(0, 0);
            return;
        }
        a(new Surface(surfaceTexture), true);
        a(textureView.getWidth(), textureView.getHeight());
    }

    public void a(c.e.a.a.p.o oVar) {
        C();
        this.E = oVar;
        for (Q q2 : this.f7325b) {
            if (q2.f() == 2) {
                O a2 = this.f7326c.a((O.b) q2);
                a2.a(6);
                a2.a((Object) oVar);
                a2.k();
            }
        }
    }

    public void a(c.e.a.a.p.a.a aVar) {
        C();
        this.F = aVar;
        for (Q q2 : this.f7325b) {
            if (q2.f() == 5) {
                O a2 = this.f7326c.a((O.b) q2);
                a2.a(7);
                a2.a((Object) aVar);
                a2.k();
            }
        }
    }

    public void b(r rVar) {
        this.f7329f.remove(rVar);
    }

    public void b(c.e.a.a.p.o oVar) {
        C();
        if (this.E == oVar) {
            for (Q q2 : this.f7325b) {
                if (q2.f() == 2) {
                    O a2 = this.f7326c.a((O.b) q2);
                    a2.a(6);
                    a2.a((Object) null);
                    a2.k();
                }
            }
        }
    }

    public void a(k kVar) {
        this.f7331h.remove(kVar);
    }

    public void a(f fVar) {
        this.f7332i.add(fVar);
    }

    public void a(M.b bVar) {
        C();
        this.f7326c.a(bVar);
    }

    public void a(v vVar) {
        a(vVar, true, true);
    }

    public void b(c.e.a.a.p.a.a aVar) {
        C();
        if (this.F == aVar) {
            for (Q q2 : this.f7325b) {
                if (q2.f() == 5) {
                    O a2 = this.f7326c.a((O.b) q2);
                    a2.a(7);
                    a2.a((Object) null);
                    a2.k();
                }
            }
        }
    }

    public void a(v vVar, boolean z2, boolean z3) {
        C();
        v vVar2 = this.C;
        if (vVar2 != null) {
            vVar2.a((w) this.m);
            this.m.l();
        }
        this.C = vVar;
        vVar.a(this.f7327d, (w) this.m);
        a(f(), this.n.c(f()));
        this.f7326c.a(vVar, z2, z3);
    }

    public void b(k kVar) {
        if (!this.D.isEmpty()) {
            kVar.a(this.D);
        }
        this.f7331h.add(kVar);
    }

    public void a(boolean z2) {
        C();
        this.f7326c.a(z2);
    }

    public void a(int i2, long j2) {
        C();
        this.m.k();
        this.f7326c.a(i2, j2);
    }

    public void b(M.b bVar) {
        C();
        this.f7326c.b(bVar);
    }

    public int b() {
        C();
        return this.f7326c.b();
    }

    public K a() {
        C();
        return this.f7326c.a();
    }

    public void b(boolean z2) {
        C();
        a(z2, this.n.a(z2, b()));
    }

    public int a(int i2) {
        C();
        return this.f7326c.a(i2);
    }

    public final void a(Surface surface, boolean z2) {
        ArrayList<O> arrayList = new ArrayList<>();
        for (Q q2 : this.f7325b) {
            if (q2.f() == 2) {
                O a2 = this.f7326c.a((O.b) q2);
                a2.a(1);
                a2.a((Object) surface);
                a2.k();
                arrayList.add(a2);
            }
        }
        Surface surface2 = this.q;
        if (!(surface2 == null || surface2 == surface)) {
            try {
                for (O a3 : arrayList) {
                    a3.a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            if (this.r) {
                this.q.release();
            }
        }
        this.q = surface;
        this.r = z2;
    }

    public void b(int i2) {
        C();
        this.f7326c.b(i2);
    }

    public final void a(int i2, int i3) {
        if (i2 != this.v || i3 != this.w) {
            this.v = i2;
            this.w = i3;
            Iterator<r> it = this.f7329f.iterator();
            while (it.hasNext()) {
                it.next().a(i2, i3);
            }
        }
    }

    public final void a(boolean z2, int i2) {
        C0752z zVar = this.f7326c;
        boolean z3 = false;
        boolean z4 = z2 && i2 != -1;
        if (i2 != 1) {
            z3 = true;
        }
        zVar.a(z4, z3);
    }
}
