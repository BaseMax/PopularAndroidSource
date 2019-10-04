package c.e.a.a.j;

import c.e.a.a.V;
import c.e.a.a.j.u;
import c.e.a.a.l.n;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;

/* compiled from: MergingMediaPeriod */
public final class x implements u, u.a {

    /* renamed from: a  reason: collision with root package name */
    public final u[] f9000a;

    /* renamed from: b  reason: collision with root package name */
    public final IdentityHashMap<C, Integer> f9001b;

    /* renamed from: c  reason: collision with root package name */
    public final q f9002c;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList<u> f9003d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public u.a f9004e;

    /* renamed from: f  reason: collision with root package name */
    public TrackGroupArray f9005f;

    /* renamed from: g  reason: collision with root package name */
    public u[] f9006g;

    /* renamed from: h  reason: collision with root package name */
    public D f9007h;

    public x(q qVar, u... uVarArr) {
        this.f9002c = qVar;
        this.f9000a = uVarArr;
        this.f9007h = qVar.a(new D[0]);
        this.f9001b = new IdentityHashMap<>();
    }

    public boolean b(long j2) {
        if (this.f9003d.isEmpty()) {
            return this.f9007h.b(j2);
        }
        int size = this.f9003d.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f9003d.get(i2).b(j2);
        }
        return false;
    }

    public void c(long j2) {
        this.f9007h.c(j2);
    }

    public void d() {
        for (u d2 : this.f9000a) {
            d2.d();
        }
    }

    public long e() {
        long e2 = this.f9000a[0].e();
        int i2 = 1;
        while (true) {
            u[] uVarArr = this.f9000a;
            if (i2 >= uVarArr.length) {
                if (e2 != -9223372036854775807L) {
                    u[] uVarArr2 = this.f9006g;
                    int length = uVarArr2.length;
                    int i3 = 0;
                    while (i3 < length) {
                        u uVar = uVarArr2[i3];
                        if (uVar == this.f9000a[0] || uVar.a(e2) == e2) {
                            i3++;
                        } else {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                }
                return e2;
            } else if (uVarArr[i2].e() == -9223372036854775807L) {
                i2++;
            } else {
                throw new IllegalStateException("Child reported discontinuity.");
            }
        }
    }

    public TrackGroupArray f() {
        return this.f9005f;
    }

    public long g() {
        return this.f9007h.g();
    }

    public void a(u.a aVar, long j2) {
        this.f9004e = aVar;
        Collections.addAll(this.f9003d, this.f9000a);
        for (u a2 : this.f9000a) {
            a2.a((u.a) this, j2);
        }
    }

    public long b() {
        return this.f9007h.b();
    }

    public long a(n[] nVarArr, boolean[] zArr, C[] cArr, boolean[] zArr2, long j2) {
        int i2;
        n[] nVarArr2 = nVarArr;
        C[] cArr2 = cArr;
        int[] iArr = new int[nVarArr2.length];
        int[] iArr2 = new int[nVarArr2.length];
        for (int i3 = 0; i3 < nVarArr2.length; i3++) {
            if (cArr2[i3] == null) {
                i2 = -1;
            } else {
                i2 = this.f9001b.get(cArr2[i3]).intValue();
            }
            iArr[i3] = i2;
            iArr2[i3] = -1;
            if (nVarArr2[i3] != null) {
                TrackGroup a2 = nVarArr2[i3].a();
                int i4 = 0;
                while (true) {
                    u[] uVarArr = this.f9000a;
                    if (i4 >= uVarArr.length) {
                        break;
                    } else if (uVarArr[i4].f().a(a2) != -1) {
                        iArr2[i3] = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
            }
        }
        this.f9001b.clear();
        C[] cArr3 = new C[nVarArr2.length];
        C[] cArr4 = new C[nVarArr2.length];
        n[] nVarArr3 = new n[nVarArr2.length];
        ArrayList arrayList = new ArrayList(this.f9000a.length);
        long j3 = j2;
        int i5 = 0;
        while (i5 < this.f9000a.length) {
            for (int i6 = 0; i6 < nVarArr2.length; i6++) {
                n nVar = null;
                cArr4[i6] = iArr[i6] == i5 ? cArr2[i6] : null;
                if (iArr2[i6] == i5) {
                    nVar = nVarArr2[i6];
                }
                nVarArr3[i6] = nVar;
            }
            ArrayList arrayList2 = arrayList;
            n[] nVarArr4 = nVarArr3;
            int i7 = i5;
            long a3 = this.f9000a[i5].a(nVarArr3, zArr, cArr4, zArr2, j3);
            if (i7 == 0) {
                j3 = a3;
            } else if (a3 != j3) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i8 = 0; i8 < nVarArr2.length; i8++) {
                boolean z2 = true;
                if (iArr2[i8] == i7) {
                    C0737e.b(cArr4[i8] != null);
                    cArr3[i8] = cArr4[i8];
                    this.f9001b.put(cArr4[i8], Integer.valueOf(i7));
                    z = true;
                } else if (iArr[i8] == i7) {
                    if (cArr4[i8] != null) {
                        z2 = false;
                    }
                    C0737e.b(z2);
                }
            }
            if (z) {
                arrayList2.add(this.f9000a[i7]);
            }
            i5 = i7 + 1;
            arrayList = arrayList2;
            nVarArr3 = nVarArr4;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
        this.f9006g = new u[arrayList3.size()];
        arrayList3.toArray(this.f9006g);
        this.f9007h = this.f9002c.a(this.f9006g);
        return j3;
    }

    /* renamed from: b */
    public void a(u uVar) {
        this.f9004e.a(this);
    }

    public void a(long j2, boolean z) {
        for (u a2 : this.f9006g) {
            a2.a(j2, z);
        }
    }

    public long a(long j2) {
        long a2 = this.f9006g[0].a(j2);
        int i2 = 1;
        while (true) {
            u[] uVarArr = this.f9006g;
            if (i2 >= uVarArr.length) {
                return a2;
            }
            if (uVarArr[i2].a(a2) == a2) {
                i2++;
            } else {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
    }

    public long a(long j2, V v) {
        return this.f9006g[0].a(j2, v);
    }

    public void a(u uVar) {
        this.f9003d.remove(uVar);
        if (this.f9003d.isEmpty()) {
            int i2 = 0;
            for (u f2 : this.f9000a) {
                i2 += f2.f().f12699b;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            u[] uVarArr = this.f9000a;
            int length = uVarArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                TrackGroupArray f3 = uVarArr[i3].f();
                int i5 = f3.f12699b;
                int i6 = i4;
                int i7 = 0;
                while (i7 < i5) {
                    trackGroupArr[i6] = f3.a(i7);
                    i7++;
                    i6++;
                }
                i3++;
                i4 = i6;
            }
            this.f9005f = new TrackGroupArray(trackGroupArr);
            this.f9004e.a(this);
        }
    }
}
