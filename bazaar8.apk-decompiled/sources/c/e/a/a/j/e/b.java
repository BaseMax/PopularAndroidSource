package c.e.a.a.j.e;

import android.net.Uri;
import c.e.a.a.V;
import c.e.a.a.e.e.h;
import c.e.a.a.j.b.d;
import c.e.a.a.j.b.e;
import c.e.a.a.j.b.f;
import c.e.a.a.j.b.i;
import c.e.a.a.j.b.l;
import c.e.a.a.j.e.a.a;
import c.e.a.a.j.e.c;
import c.e.a.a.l.n;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.x;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import java.io.IOException;
import java.util.List;

/* compiled from: DefaultSsChunkSource */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    public final x f8887a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8888b;

    /* renamed from: c  reason: collision with root package name */
    public final n f8889c;

    /* renamed from: d  reason: collision with root package name */
    public final e[] f8890d;

    /* renamed from: e  reason: collision with root package name */
    public final j f8891e;

    /* renamed from: f  reason: collision with root package name */
    public c.e.a.a.j.e.a.a f8892f;

    /* renamed from: g  reason: collision with root package name */
    public int f8893g;

    /* renamed from: h  reason: collision with root package name */
    public IOException f8894h;

    /* compiled from: DefaultSsChunkSource */
    public static final class a implements c.a {

        /* renamed from: a  reason: collision with root package name */
        public final j.a f8895a;

        public a(j.a aVar) {
            this.f8895a = aVar;
        }

        public c a(x xVar, c.e.a.a.j.e.a.a aVar, int i2, n nVar, A a2) {
            j a3 = this.f8895a.a();
            if (a2 != null) {
                a3.a(a2);
            }
            b bVar = new b(xVar, aVar, i2, nVar, a3);
            return bVar;
        }
    }

    /* renamed from: c.e.a.a.j.e.b$b  reason: collision with other inner class name */
    /* compiled from: DefaultSsChunkSource */
    private static final class C0112b extends c.e.a.a.j.b.b {

        /* renamed from: d  reason: collision with root package name */
        public final a.b f8896d;

        /* renamed from: e  reason: collision with root package name */
        public final int f8897e;

        public C0112b(a.b bVar, int i2, int i3) {
            super((long) i3, (long) (bVar.f8885k - 1));
            this.f8896d = bVar;
            this.f8897e = i2;
        }
    }

    public b(x xVar, c.e.a.a.j.e.a.a aVar, int i2, n nVar, j jVar) {
        c.e.a.a.j.e.a.a aVar2 = aVar;
        int i3 = i2;
        n nVar2 = nVar;
        this.f8887a = xVar;
        this.f8892f = aVar2;
        this.f8888b = i3;
        this.f8889c = nVar2;
        this.f8891e = jVar;
        a.b bVar = aVar2.f8869f[i3];
        this.f8890d = new e[nVar.length()];
        int i4 = 0;
        while (i4 < this.f8890d.length) {
            int b2 = nVar2.b(i4);
            Format format = bVar.f8884j[b2];
            int i5 = i4;
            c.e.a.a.e.e.n nVar3 = r7;
            c.e.a.a.e.e.n nVar4 = new c.e.a.a.e.e.n(b2, bVar.f8875a, bVar.f8877c, -9223372036854775807L, aVar2.f8870g, format, 0, format.f12517l != null ? aVar2.f8868e.f8874c : null, bVar.f8875a == 2 ? 4 : 0, null, null);
            this.f8890d[i5] = new e(new h(3, null, nVar3, null), bVar.f8875a, format);
            i4 = i5 + 1;
        }
    }

    public long a(long j2, V v) {
        a.b bVar = this.f8892f.f8869f[this.f8888b];
        int a2 = bVar.a(j2);
        long b2 = bVar.b(a2);
        return I.a(j2, v, b2, (b2 >= j2 || a2 >= bVar.f8885k + -1) ? b2 : bVar.b(a2 + 1));
    }

    public void a(d dVar) {
    }

    public void a(c.e.a.a.j.e.a.a aVar) {
        a.b[] bVarArr = this.f8892f.f8869f;
        int i2 = this.f8888b;
        a.b bVar = bVarArr[i2];
        int i3 = bVar.f8885k;
        a.b bVar2 = aVar.f8869f[i2];
        if (i3 == 0 || bVar2.f8885k == 0) {
            this.f8893g += i3;
        } else {
            int i4 = i3 - 1;
            long b2 = bVar.b(i4) + bVar.a(i4);
            long b3 = bVar2.b(0);
            if (b2 <= b3) {
                this.f8893g += i3;
            } else {
                this.f8893g += bVar.a(b3);
            }
        }
        this.f8892f = aVar;
    }

    public void a() {
        IOException iOException = this.f8894h;
        if (iOException == null) {
            this.f8887a.a();
            return;
        }
        throw iOException;
    }

    public int a(long j2, List<? extends l> list) {
        if (this.f8894h != null || this.f8889c.length() < 2) {
            return list.size();
        }
        return this.f8889c.a(j2, list);
    }

    public final void a(long j2, long j3, List<? extends l> list, f fVar) {
        int i2;
        long j4 = j3;
        f fVar2 = fVar;
        if (this.f8894h == null) {
            c.e.a.a.j.e.a.a aVar = this.f8892f;
            a.b bVar = aVar.f8869f[this.f8888b];
            if (bVar.f8885k == 0) {
                fVar2.f8484b = !aVar.f8867d;
                return;
            }
            if (list.isEmpty()) {
                i2 = bVar.a(j4);
                List<? extends l> list2 = list;
            } else {
                i2 = (int) (((l) list.get(list.size() - 1)).g() - ((long) this.f8893g));
                if (i2 < 0) {
                    this.f8894h = new BehindLiveWindowException();
                    return;
                }
            }
            if (i2 >= bVar.f8885k) {
                fVar2.f8484b = !this.f8892f.f8867d;
                return;
            }
            long j5 = j4 - j2;
            long a2 = a(j2);
            c.e.a.a.j.b.n[] nVarArr = new c.e.a.a.j.b.n[this.f8889c.length()];
            for (int i3 = 0; i3 < nVarArr.length; i3++) {
                nVarArr[i3] = new C0112b(bVar, this.f8889c.b(i3), i2);
            }
            this.f8889c.a(j2, j5, a2, list, nVarArr);
            long b2 = bVar.b(i2);
            long a3 = b2 + bVar.a(i2);
            if (!list.isEmpty()) {
                j4 = -9223372036854775807L;
            }
            long j6 = j4;
            int i4 = i2 + this.f8893g;
            int b3 = this.f8889c.b();
            e eVar = this.f8890d[b3];
            Uri a4 = bVar.a(this.f8889c.b(b3), i2);
            fVar2.f8483a = a(this.f8889c.f(), this.f8891e, a4, null, i4, b2, a3, j6, this.f8889c.g(), this.f8889c.h(), eVar);
        }
    }

    public boolean a(d dVar, boolean z, Exception exc, long j2) {
        if (z && j2 != -9223372036854775807L) {
            n nVar = this.f8889c;
            if (nVar.a(nVar.a(dVar.f8461c), j2)) {
                return true;
            }
        }
        return false;
    }

    public static l a(Format format, j jVar, Uri uri, String str, int i2, long j2, long j3, long j4, int i3, Object obj, e eVar) {
        int i4 = i3;
        Object obj2 = obj;
        c.e.a.a.n.l lVar = r26;
        c.e.a.a.n.l lVar2 = new c.e.a.a.n.l(uri, 0, -1, str);
        i iVar = new i(jVar, lVar, format, i4, obj2, j2, j3, j4, -9223372036854775807L, (long) i2, 1, j2, eVar);
        return iVar;
    }

    public final long a(long j2) {
        c.e.a.a.j.e.a.a aVar = this.f8892f;
        if (!aVar.f8867d) {
            return -9223372036854775807L;
        }
        a.b bVar = aVar.f8869f[this.f8888b];
        int i2 = bVar.f8885k - 1;
        return (bVar.b(i2) + bVar.a(i2)) - j2;
    }
}
