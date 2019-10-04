package b.y.a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* renamed from: b.y.a.u  reason: case insensitive filesystem */
/* compiled from: GapWorker */
public final class C0350u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<C0350u> f3543a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    public static Comparator<b> f3544b = new C0349t();

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<RecyclerView> f3545c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    public long f3546d;

    /* renamed from: e  reason: collision with root package name */
    public long f3547e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<b> f3548f = new ArrayList<>();

    /* renamed from: b.y.a.u$a */
    /* compiled from: GapWorker */
    static class a implements RecyclerView.i.a {

        /* renamed from: a  reason: collision with root package name */
        public int f3549a;

        /* renamed from: b  reason: collision with root package name */
        public int f3550b;

        /* renamed from: c  reason: collision with root package name */
        public int[] f3551c;

        /* renamed from: d  reason: collision with root package name */
        public int f3552d;

        public void a(RecyclerView recyclerView, boolean z) {
            this.f3552d = 0;
            int[] iArr = this.f3551c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.i iVar = recyclerView.w;
            if (recyclerView.v != null && iVar != null && iVar.w()) {
                if (z) {
                    if (!recyclerView.n.c()) {
                        iVar.a(recyclerView.v.a(), (RecyclerView.i.a) this);
                    }
                } else if (!recyclerView.q()) {
                    iVar.a(this.f3549a, this.f3550b, recyclerView.ra, (RecyclerView.i.a) this);
                }
                int i2 = this.f3552d;
                if (i2 > iVar.m) {
                    iVar.m = i2;
                    iVar.n = z;
                    recyclerView.f805l.j();
                }
            }
        }

        public void b(int i2, int i3) {
            this.f3549a = i2;
            this.f3550b = i3;
        }

        public void a(int i2, int i3) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            } else if (i3 >= 0) {
                int i4 = this.f3552d * 2;
                int[] iArr = this.f3551c;
                if (iArr == null) {
                    this.f3551c = new int[4];
                    Arrays.fill(this.f3551c, -1);
                } else if (i4 >= iArr.length) {
                    this.f3551c = new int[(i4 * 2)];
                    System.arraycopy(iArr, 0, this.f3551c, 0, iArr.length);
                }
                int[] iArr2 = this.f3551c;
                iArr2[i4] = i2;
                iArr2[i4 + 1] = i3;
                this.f3552d++;
            } else {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
        }

        public boolean a(int i2) {
            if (this.f3551c != null) {
                int i3 = this.f3552d * 2;
                for (int i4 = 0; i4 < i3; i4 += 2) {
                    if (this.f3551c[i4] == i2) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void a() {
            int[] iArr = this.f3551c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3552d = 0;
        }
    }

    /* renamed from: b.y.a.u$b */
    /* compiled from: GapWorker */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f3553a;

        /* renamed from: b  reason: collision with root package name */
        public int f3554b;

        /* renamed from: c  reason: collision with root package name */
        public int f3555c;

        /* renamed from: d  reason: collision with root package name */
        public RecyclerView f3556d;

        /* renamed from: e  reason: collision with root package name */
        public int f3557e;

        public void a() {
            this.f3553a = false;
            this.f3554b = 0;
            this.f3555c = 0;
            this.f3556d = null;
            this.f3557e = 0;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f3545c.add(recyclerView);
    }

    public void b(RecyclerView recyclerView) {
        this.f3545c.remove(recyclerView);
    }

    public void run() {
        try {
            b.i.g.a.a("RV Prefetch");
            if (!this.f3545c.isEmpty()) {
                int size = this.f3545c.size();
                long j2 = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = this.f3545c.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j2 = Math.max(recyclerView.getDrawingTime(), j2);
                    }
                }
                if (j2 != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(j2) + this.f3547e);
                    this.f3546d = 0;
                    b.i.g.a.a();
                }
            }
        } finally {
            this.f3546d = 0;
            b.i.g.a.a();
        }
    }

    public void a(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.isAttachedToWindow() && this.f3546d == 0) {
            this.f3546d = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.qa.b(i2, i3);
    }

    public void b(long j2) {
        a();
        a(j2);
    }

    public final void a() {
        b bVar;
        int size = this.f3545c.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView = this.f3545c.get(i3);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.qa.a(recyclerView, false);
                i2 += recyclerView.qa.f3552d;
            }
        }
        this.f3548f.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView2 = this.f3545c.get(i5);
            if (recyclerView2.getWindowVisibility() == 0) {
                a aVar = recyclerView2.qa;
                int abs = Math.abs(aVar.f3549a) + Math.abs(aVar.f3550b);
                int i6 = i4;
                for (int i7 = 0; i7 < aVar.f3552d * 2; i7 += 2) {
                    if (i6 >= this.f3548f.size()) {
                        bVar = new b();
                        this.f3548f.add(bVar);
                    } else {
                        bVar = this.f3548f.get(i6);
                    }
                    int i8 = aVar.f3551c[i7 + 1];
                    bVar.f3553a = i8 <= abs;
                    bVar.f3554b = abs;
                    bVar.f3555c = i8;
                    bVar.f3556d = recyclerView2;
                    bVar.f3557e = aVar.f3551c[i7];
                    i6++;
                }
                i4 = i6;
            }
        }
        Collections.sort(this.f3548f, f3544b);
    }

    public static boolean a(RecyclerView recyclerView, int i2) {
        int b2 = recyclerView.o.b();
        for (int i3 = 0; i3 < b2; i3++) {
            RecyclerView.w i4 = RecyclerView.i(recyclerView.o.e(i3));
            if (i4.f893d == i2 && !i4.o()) {
                return true;
            }
        }
        return false;
    }

    public final RecyclerView.w a(RecyclerView recyclerView, int i2, long j2) {
        if (a(recyclerView, i2)) {
            return null;
        }
        RecyclerView.p pVar = recyclerView.f805l;
        try {
            recyclerView.B();
            RecyclerView.w a2 = pVar.a(i2, false, j2);
            if (a2 != null) {
                if (!a2.n() || a2.o()) {
                    pVar.a(a2, false);
                } else {
                    pVar.b(a2.f891b);
                }
            }
            return a2;
        } finally {
            recyclerView.a(false);
        }
    }

    public final void a(RecyclerView recyclerView, long j2) {
        if (recyclerView != null) {
            if (recyclerView.N && recyclerView.o.b() != 0) {
                recyclerView.I();
            }
            a aVar = recyclerView.qa;
            aVar.a(recyclerView, true);
            if (aVar.f3552d != 0) {
                try {
                    b.i.g.a.a("RV Nested Prefetch");
                    recyclerView.ra.a(recyclerView.v);
                    for (int i2 = 0; i2 < aVar.f3552d * 2; i2 += 2) {
                        a(recyclerView, aVar.f3551c[i2], j2);
                    }
                } finally {
                    b.i.g.a.a();
                }
            }
        }
    }

    public final void a(b bVar, long j2) {
        RecyclerView.w a2 = a(bVar.f3556d, bVar.f3557e, bVar.f3553a ? Long.MAX_VALUE : j2);
        if (a2 != null && a2.f892c != null && a2.n() && !a2.o()) {
            a((RecyclerView) a2.f892c.get(), j2);
        }
    }

    public final void a(long j2) {
        int i2 = 0;
        while (i2 < this.f3548f.size()) {
            b bVar = this.f3548f.get(i2);
            if (bVar.f3556d != null) {
                a(bVar, j2);
                bVar.a();
                i2++;
            } else {
                return;
            }
        }
    }
}
