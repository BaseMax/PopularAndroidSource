package c.e.a.a.a;

import android.view.Surface;
import c.e.a.a.K;
import c.e.a.a.M;
import c.e.a.a.Z;
import c.e.a.a.a.b;
import c.e.a.a.b.p;
import c.e.a.a.b.q;
import c.e.a.a.c.e;
import c.e.a.a.d.h;
import c.e.a.a.g.f;
import c.e.a.a.j.v;
import c.e.a.a.j.w;
import c.e.a.a.l.o;
import c.e.a.a.n.f;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.C0738f;
import c.e.a.a.p.r;
import c.e.a.a.p.s;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: AnalyticsCollector */
public class a implements M.b, f, q, s, w, f.a, h, r, p {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArraySet<b> f7355a;

    /* renamed from: b  reason: collision with root package name */
    public final C0738f f7356b;

    /* renamed from: c  reason: collision with root package name */
    public final Z.b f7357c;

    /* renamed from: d  reason: collision with root package name */
    public final c f7358d;

    /* renamed from: e  reason: collision with root package name */
    public M f7359e;

    /* renamed from: c.e.a.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: AnalyticsCollector */
    public static class C0105a {
        public a a(M m, C0738f fVar) {
            return new a(m, fVar);
        }
    }

    /* compiled from: AnalyticsCollector */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final v.a f7360a;

        /* renamed from: b  reason: collision with root package name */
        public final Z f7361b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7362c;

        public b(v.a aVar, Z z, int i2) {
            this.f7360a = aVar;
            this.f7361b = z;
            this.f7362c = i2;
        }
    }

    /* compiled from: AnalyticsCollector */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final ArrayList<b> f7363a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        public final HashMap<v.a, b> f7364b = new HashMap<>();

        /* renamed from: c  reason: collision with root package name */
        public final Z.a f7365c = new Z.a();

        /* renamed from: d  reason: collision with root package name */
        public b f7366d;

        /* renamed from: e  reason: collision with root package name */
        public b f7367e;

        /* renamed from: f  reason: collision with root package name */
        public Z f7368f = Z.f7337a;

        /* renamed from: g  reason: collision with root package name */
        public boolean f7369g;

        public b b() {
            if (this.f7363a.isEmpty()) {
                return null;
            }
            ArrayList<b> arrayList = this.f7363a;
            return arrayList.get(arrayList.size() - 1);
        }

        public b c() {
            if (this.f7363a.isEmpty() || this.f7368f.c() || this.f7369g) {
                return null;
            }
            return this.f7363a.get(0);
        }

        public b d() {
            return this.f7367e;
        }

        public boolean e() {
            return this.f7369g;
        }

        public void f() {
            this.f7369g = false;
            h();
        }

        public void g() {
            this.f7369g = true;
        }

        public final void h() {
            if (!this.f7363a.isEmpty()) {
                this.f7366d = this.f7363a.get(0);
            }
        }

        public b a() {
            return this.f7366d;
        }

        public b a(v.a aVar) {
            return this.f7364b.get(aVar);
        }

        public b b(int i2) {
            b bVar = null;
            for (int i3 = 0; i3 < this.f7363a.size(); i3++) {
                b bVar2 = this.f7363a.get(i3);
                int a2 = this.f7368f.a(bVar2.f7360a.f8976a);
                if (a2 != -1 && this.f7368f.a(a2, this.f7365c).f7340c == i2) {
                    if (bVar != null) {
                        return null;
                    }
                    bVar = bVar2;
                }
            }
            return bVar;
        }

        public void c(v.a aVar) {
            this.f7367e = this.f7364b.get(aVar);
        }

        public void a(int i2) {
            h();
        }

        public void a(Z z) {
            for (int i2 = 0; i2 < this.f7363a.size(); i2++) {
                b a2 = a(this.f7363a.get(i2), z);
                this.f7363a.set(i2, a2);
                this.f7364b.put(a2.f7360a, a2);
            }
            b bVar = this.f7367e;
            if (bVar != null) {
                this.f7367e = a(bVar, z);
            }
            this.f7368f = z;
            h();
        }

        public boolean b(v.a aVar) {
            b remove = this.f7364b.remove(aVar);
            if (remove == null) {
                return false;
            }
            this.f7363a.remove(remove);
            b bVar = this.f7367e;
            if (bVar != null && aVar.equals(bVar.f7360a)) {
                this.f7367e = this.f7363a.isEmpty() ? null : this.f7363a.get(0);
            }
            return true;
        }

        public void a(int i2, v.a aVar) {
            b bVar = new b(aVar, this.f7368f.a(aVar.f8976a) != -1 ? this.f7368f : Z.f7337a, i2);
            this.f7363a.add(bVar);
            this.f7364b.put(aVar, bVar);
            if (this.f7363a.size() == 1 && !this.f7368f.c()) {
                h();
            }
        }

        public final b a(b bVar, Z z) {
            int a2 = z.a(bVar.f7360a.f8976a);
            if (a2 == -1) {
                return bVar;
            }
            return new b(bVar.f7360a, z, z.a(a2, this.f7365c).f7340c);
        }
    }

    public a(M m, C0738f fVar) {
        if (m != null) {
            this.f7359e = m;
        }
        C0737e.a(fVar);
        this.f7356b = fVar;
        this.f7355a = new CopyOnWriteArraySet<>();
        this.f7358d = new c();
        this.f7357c = new Z.b();
    }

    public final void a() {
    }

    public final void a(Metadata metadata) {
        b.a i2 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(i2, metadata);
        }
    }

    public final void b(e eVar) {
        b.a i2 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(i2, 1, eVar);
        }
    }

    public final void c(int i2) {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().d(j2, i2);
        }
    }

    public final void d(e eVar) {
        b.a g2 = g();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().b(g2, 2, eVar);
        }
    }

    public final void e() {
        b.a g2 = g();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().b(g2);
        }
    }

    public final void f() {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().h(j2);
        }
    }

    public final b.a g() {
        return a(this.f7358d.a());
    }

    public final b.a h() {
        return a(this.f7358d.b());
    }

    public final b.a i() {
        return a(this.f7358d.c());
    }

    public final b.a j() {
        return a(this.f7358d.d());
    }

    public final void k() {
        if (!this.f7358d.e()) {
            b.a i2 = i();
            this.f7358d.g();
            Iterator<b> it = this.f7355a.iterator();
            while (it.hasNext()) {
                it.next().g(i2);
            }
        }
    }

    public final void l() {
        for (b bVar : new ArrayList(this.f7358d.f7363a)) {
            b(bVar.f7362c, bVar.f7360a);
        }
    }

    public final void a(int i2, long j2, long j3) {
        b.a j4 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().b(j4, i2, j2, j3);
        }
    }

    public final void b(String str, long j2, long j3) {
        b.a j4 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(j4, 1, str, j3);
        }
    }

    public final void c(e eVar) {
        b.a i2 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(i2, 2, eVar);
        }
    }

    public final void d() {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().e(j2);
        }
    }

    public final void a(e eVar) {
        b.a g2 = g();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().b(g2, 1, eVar);
        }
    }

    public final void b(Format format) {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(j2, 1, format);
        }
    }

    public final void c(int i2, v.a aVar) {
        this.f7358d.a(i2, aVar);
        b.a d2 = d(i2, aVar);
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().f(d2);
        }
    }

    public final b.a d(int i2, v.a aVar) {
        b.a aVar2;
        C0737e.a(this.f7359e);
        if (aVar != null) {
            b a2 = this.f7358d.a(aVar);
            if (a2 != null) {
                aVar2 = a(a2);
            } else {
                aVar2 = a(Z.f7337a, i2, aVar);
            }
            return aVar2;
        }
        Z q = this.f7359e.q();
        if (!(i2 < q.b())) {
            q = Z.f7337a;
        }
        return a(q, i2, (v.a) null);
    }

    public final void a(String str, long j2, long j3) {
        b.a j4 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(j4, 2, str, j3);
        }
    }

    public final void b(int i2, v.a aVar) {
        b.a d2 = d(i2, aVar);
        if (this.f7358d.b(aVar)) {
            Iterator<b> it = this.f7355a.iterator();
            while (it.hasNext()) {
                it.next().d(d2);
            }
        }
    }

    public final void c(int i2, v.a aVar, w.b bVar, w.c cVar) {
        b.a d2 = d(i2, aVar);
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().c(d2, bVar, cVar);
        }
    }

    public final void a(Format format) {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(j2, 2, format);
        }
    }

    public final void b(int i2, v.a aVar, w.b bVar, w.c cVar) {
        b.a d2 = d(i2, aVar);
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().b(d2, bVar, cVar);
        }
    }

    public final void c() {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().c(j2);
        }
    }

    public final void a(int i2, long j2) {
        b.a g2 = g();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(g2, i2, j2);
        }
    }

    public final void b(int i2, v.a aVar, w.c cVar) {
        b.a d2 = d(i2, aVar);
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(d2, cVar);
        }
    }

    public final void a(Surface surface) {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(j2, surface);
        }
    }

    public final void b(boolean z) {
        b.a i2 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().b(i2, z);
        }
    }

    public final void a(int i2, int i3, int i4, float f2) {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(j2, i2, i3, i4, f2);
        }
    }

    public final void b(int i2) {
        this.f7358d.a(i2);
        b.a i3 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(i3, i2);
        }
    }

    public void a(int i2, int i3) {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(j2, i2, i3);
        }
    }

    public final void b() {
        if (this.f7358d.e()) {
            this.f7358d.f();
            b.a i2 = i();
            Iterator<b> it = this.f7355a.iterator();
            while (it.hasNext()) {
                it.next().a(i2);
            }
        }
    }

    public final void a(int i2, v.a aVar, w.b bVar, w.c cVar) {
        b.a d2 = d(i2, aVar);
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(d2, bVar, cVar);
        }
    }

    public final void a(int i2, v.a aVar, w.b bVar, w.c cVar, IOException iOException, boolean z) {
        b.a d2 = d(i2, aVar);
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(d2, bVar, cVar, iOException, z);
        }
    }

    public final void b(int i2, long j2, long j3) {
        b.a h2 = h();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(h2, i2, j2, j3);
        }
    }

    public final void a(int i2, v.a aVar) {
        this.f7358d.c(aVar);
        b.a d2 = d(i2, aVar);
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().i(d2);
        }
    }

    public final void a(int i2, v.a aVar, w.c cVar) {
        b.a d2 = d(i2, aVar);
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().b(d2, cVar);
        }
    }

    public final void a(Z z, Object obj, int i2) {
        this.f7358d.a(z);
        b.a i3 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().c(i3, i2);
        }
    }

    public final void a(TrackGroupArray trackGroupArray, o oVar) {
        b.a i2 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(i2, trackGroupArray, oVar);
        }
    }

    public final void a(boolean z) {
        b.a i2 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(i2, z);
        }
    }

    public final void a(boolean z, int i2) {
        b.a i3 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(i3, z, i2);
        }
    }

    public final void a(int i2) {
        b.a i3 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().b(i3, i2);
        }
    }

    public final void a(ExoPlaybackException exoPlaybackException) {
        b.a aVar;
        if (exoPlaybackException.type == 0) {
            aVar = h();
        } else {
            aVar = i();
        }
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(aVar, exoPlaybackException);
        }
    }

    public final void a(K k2) {
        b.a i2 = i();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(i2, k2);
        }
    }

    public final void a(Exception exc) {
        b.a j2 = j();
        Iterator<b> it = this.f7355a.iterator();
        while (it.hasNext()) {
            it.next().a(j2, exc);
        }
    }

    public b.a a(Z z, int i2, v.a aVar) {
        if (z.c()) {
            aVar = null;
        }
        v.a aVar2 = aVar;
        long a2 = this.f7356b.a();
        boolean z2 = true;
        boolean z3 = z == this.f7359e.q() && i2 == this.f7359e.j();
        long j2 = 0;
        if (aVar2 != null && aVar2.a()) {
            if (!(z3 && this.f7359e.n() == aVar2.f8977b && this.f7359e.i() == aVar2.f8978c)) {
                z2 = false;
            }
            if (z2) {
                j2 = this.f7359e.getCurrentPosition();
            }
        } else if (z3) {
            j2 = this.f7359e.l();
        } else if (!z.c()) {
            j2 = z.a(i2, this.f7357c).a();
        }
        b.a aVar3 = new b.a(a2, z, i2, aVar2, j2, this.f7359e.getCurrentPosition(), this.f7359e.e());
        return aVar3;
    }

    public final b.a a(b bVar) {
        C0737e.a(this.f7359e);
        if (bVar == null) {
            int j2 = this.f7359e.j();
            b b2 = this.f7358d.b(j2);
            if (b2 == null) {
                Z q = this.f7359e.q();
                if (!(j2 < q.b())) {
                    q = Z.f7337a;
                }
                return a(q, j2, (v.a) null);
            }
            bVar = b2;
        }
        return a(bVar.f7361b, bVar.f7362c, bVar.f7360a);
    }
}
