package c.e.a.a.k.b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Region;
import android.util.SparseArray;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: DvbParser */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f9126a = {0, 7, 8, 15};

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f9127b = {0, 119, -120, -1};

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f9128c = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: d  reason: collision with root package name */
    public final Paint f9129d = new Paint();

    /* renamed from: e  reason: collision with root package name */
    public final Paint f9130e;

    /* renamed from: f  reason: collision with root package name */
    public final Canvas f9131f;

    /* renamed from: g  reason: collision with root package name */
    public final C0116b f9132g;

    /* renamed from: h  reason: collision with root package name */
    public final a f9133h;

    /* renamed from: i  reason: collision with root package name */
    public final h f9134i;

    /* renamed from: j  reason: collision with root package name */
    public Bitmap f9135j;

    /* compiled from: DvbParser */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f9136a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f9137b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f9138c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f9139d;

        public a(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f9136a = i2;
            this.f9137b = iArr;
            this.f9138c = iArr2;
            this.f9139d = iArr3;
        }
    }

    /* renamed from: c.e.a.a.k.b.b$b  reason: collision with other inner class name */
    /* compiled from: DvbParser */
    private static final class C0116b {

        /* renamed from: a  reason: collision with root package name */
        public final int f9140a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9141b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9142c;

        /* renamed from: d  reason: collision with root package name */
        public final int f9143d;

        /* renamed from: e  reason: collision with root package name */
        public final int f9144e;

        /* renamed from: f  reason: collision with root package name */
        public final int f9145f;

        public C0116b(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f9140a = i2;
            this.f9141b = i3;
            this.f9142c = i4;
            this.f9143d = i5;
            this.f9144e = i6;
            this.f9145f = i7;
        }
    }

    /* compiled from: DvbParser */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f9146a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f9147b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f9148c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f9149d;

        public c(int i2, boolean z, byte[] bArr, byte[] bArr2) {
            this.f9146a = i2;
            this.f9147b = z;
            this.f9148c = bArr;
            this.f9149d = bArr2;
        }
    }

    /* compiled from: DvbParser */
    private static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f9150a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9151b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9152c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<e> f9153d;

        public d(int i2, int i3, int i4, SparseArray<e> sparseArray) {
            this.f9150a = i2;
            this.f9151b = i3;
            this.f9152c = i4;
            this.f9153d = sparseArray;
        }
    }

    /* compiled from: DvbParser */
    private static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f9154a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9155b;

        public e(int i2, int i3) {
            this.f9154a = i2;
            this.f9155b = i3;
        }
    }

    /* compiled from: DvbParser */
    private static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f9156a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f9157b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9158c;

        /* renamed from: d  reason: collision with root package name */
        public final int f9159d;

        /* renamed from: e  reason: collision with root package name */
        public final int f9160e;

        /* renamed from: f  reason: collision with root package name */
        public final int f9161f;

        /* renamed from: g  reason: collision with root package name */
        public final int f9162g;

        /* renamed from: h  reason: collision with root package name */
        public final int f9163h;

        /* renamed from: i  reason: collision with root package name */
        public final int f9164i;

        /* renamed from: j  reason: collision with root package name */
        public final int f9165j;

        /* renamed from: k  reason: collision with root package name */
        public final SparseArray<g> f9166k;

        public f(int i2, boolean z, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, SparseArray<g> sparseArray) {
            this.f9156a = i2;
            this.f9157b = z;
            this.f9158c = i3;
            this.f9159d = i4;
            this.f9160e = i5;
            this.f9161f = i6;
            this.f9162g = i7;
            this.f9163h = i8;
            this.f9164i = i9;
            this.f9165j = i10;
            this.f9166k = sparseArray;
        }

        public void a(f fVar) {
            if (fVar != null) {
                SparseArray<g> sparseArray = fVar.f9166k;
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    this.f9166k.put(sparseArray.keyAt(i2), sparseArray.valueAt(i2));
                }
            }
        }
    }

    /* compiled from: DvbParser */
    private static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f9167a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9168b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9169c;

        /* renamed from: d  reason: collision with root package name */
        public final int f9170d;

        /* renamed from: e  reason: collision with root package name */
        public final int f9171e;

        /* renamed from: f  reason: collision with root package name */
        public final int f9172f;

        public g(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f9167a = i2;
            this.f9168b = i3;
            this.f9169c = i4;
            this.f9170d = i5;
            this.f9171e = i6;
            this.f9172f = i7;
        }
    }

    /* compiled from: DvbParser */
    private static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f9173a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9174b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f9175c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<a> f9176d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray<c> f9177e = new SparseArray<>();

        /* renamed from: f  reason: collision with root package name */
        public final SparseArray<a> f9178f = new SparseArray<>();

        /* renamed from: g  reason: collision with root package name */
        public final SparseArray<c> f9179g = new SparseArray<>();

        /* renamed from: h  reason: collision with root package name */
        public C0116b f9180h;

        /* renamed from: i  reason: collision with root package name */
        public d f9181i;

        public h(int i2, int i3) {
            this.f9173a = i2;
            this.f9174b = i3;
        }

        public void a() {
            this.f9175c.clear();
            this.f9176d.clear();
            this.f9177e.clear();
            this.f9178f.clear();
            this.f9179g.clear();
            this.f9180h = null;
            this.f9181i = null;
        }
    }

    public b(int i2, int i3) {
        this.f9129d.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f9129d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.f9129d.setPathEffect(null);
        this.f9130e = new Paint();
        this.f9130e.setStyle(Paint.Style.FILL);
        this.f9130e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.f9130e.setPathEffect(null);
        this.f9131f = new Canvas();
        C0116b bVar = new C0116b(719, 575, 0, 719, 0, 575);
        this.f9132g = bVar;
        this.f9133h = new a(0, a(), b(), c());
        this.f9134i = new h(i2, i3);
    }

    public static int a(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    public static d b(u uVar, int i2) {
        int a2 = uVar.a(8);
        int a3 = uVar.a(4);
        int a4 = uVar.a(2);
        uVar.c(2);
        int i3 = i2 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int a5 = uVar.a(8);
            uVar.c(8);
            i3 -= 6;
            sparseArray.put(a5, new e(uVar.a(16), uVar.a(16)));
        }
        return new d(a2, a3, a4, sparseArray);
    }

    public static f c(u uVar, int i2) {
        int i3;
        int i4;
        u uVar2 = uVar;
        int a2 = uVar2.a(8);
        uVar2.c(4);
        boolean f2 = uVar.f();
        uVar2.c(3);
        int i5 = 16;
        int a3 = uVar2.a(16);
        int a4 = uVar2.a(16);
        int a5 = uVar2.a(3);
        int a6 = uVar2.a(3);
        int i6 = 2;
        uVar2.c(2);
        int a7 = uVar2.a(8);
        int a8 = uVar2.a(8);
        int a9 = uVar2.a(4);
        int a10 = uVar2.a(2);
        uVar2.c(2);
        int i7 = i2 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i7 > 0) {
            int a11 = uVar2.a(i5);
            int a12 = uVar2.a(i6);
            int a13 = uVar2.a(i6);
            int a14 = uVar2.a(12);
            int i8 = a10;
            uVar2.c(4);
            int a15 = uVar2.a(12);
            i7 -= 6;
            if (a12 == 1 || a12 == 2) {
                i7 -= 2;
                i4 = uVar2.a(8);
                i3 = uVar2.a(8);
            } else {
                i4 = 0;
                i3 = 0;
            }
            g gVar = new g(a12, a13, a14, a15, i4, i3);
            sparseArray.put(a11, gVar);
            a10 = i8;
            i6 = 2;
            i5 = 16;
        }
        f fVar = new f(a2, f2, a3, a4, a5, a6, a7, a8, a9, a10, sparseArray);
        return fVar;
    }

    public List<c.e.a.a.k.b> a(byte[] bArr, int i2) {
        int i3;
        int i4;
        SparseArray<g> sparseArray;
        u uVar = new u(bArr, i2);
        while (uVar.b() >= 48 && uVar.a(8) == 15) {
            a(uVar, this.f9134i);
        }
        h hVar = this.f9134i;
        if (hVar.f9181i == null) {
            return Collections.emptyList();
        }
        C0116b bVar = hVar.f9180h;
        if (bVar == null) {
            bVar = this.f9132g;
        }
        Bitmap bitmap = this.f9135j;
        if (!(bitmap != null && bVar.f9140a + 1 == bitmap.getWidth() && bVar.f9141b + 1 == this.f9135j.getHeight())) {
            this.f9135j = Bitmap.createBitmap(bVar.f9140a + 1, bVar.f9141b + 1, Bitmap.Config.ARGB_8888);
            this.f9131f.setBitmap(this.f9135j);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = this.f9134i.f9181i.f9153d;
        for (int i5 = 0; i5 < sparseArray2.size(); i5++) {
            e valueAt = sparseArray2.valueAt(i5);
            f fVar = this.f9134i.f9175c.get(sparseArray2.keyAt(i5));
            int i6 = valueAt.f9154a + bVar.f9142c;
            int i7 = valueAt.f9155b + bVar.f9144e;
            float f2 = (float) i6;
            float f3 = (float) i7;
            float f4 = f3;
            float f5 = f2;
            this.f9131f.clipRect(f2, f3, (float) Math.min(fVar.f9158c + i6, bVar.f9143d), (float) Math.min(fVar.f9159d + i7, bVar.f9145f), Region.Op.REPLACE);
            a aVar = this.f9134i.f9176d.get(fVar.f9162g);
            if (aVar == null) {
                aVar = this.f9134i.f9178f.get(fVar.f9162g);
                if (aVar == null) {
                    aVar = this.f9133h;
                }
            }
            SparseArray<g> sparseArray3 = fVar.f9166k;
            int i8 = 0;
            while (i8 < sparseArray3.size()) {
                int keyAt = sparseArray3.keyAt(i8);
                g valueAt2 = sparseArray3.valueAt(i8);
                c cVar = this.f9134i.f9177e.get(keyAt);
                c cVar2 = cVar == null ? this.f9134i.f9179g.get(keyAt) : cVar;
                if (cVar2 != null) {
                    i4 = i8;
                    sparseArray = sparseArray3;
                    a(cVar2, aVar, fVar.f9161f, valueAt2.f9169c + i6, i7 + valueAt2.f9170d, cVar2.f9147b ? null : this.f9129d, this.f9131f);
                } else {
                    i4 = i8;
                    sparseArray = sparseArray3;
                }
                i8 = i4 + 1;
                sparseArray3 = sparseArray;
            }
            if (fVar.f9157b) {
                int i9 = fVar.f9161f;
                if (i9 == 3) {
                    i3 = aVar.f9139d[fVar.f9163h];
                } else if (i9 == 2) {
                    i3 = aVar.f9138c[fVar.f9164i];
                } else {
                    i3 = aVar.f9137b[fVar.f9165j];
                }
                this.f9130e.setColor(i3);
                this.f9131f.drawRect(f5, f4, (float) (fVar.f9158c + i6), (float) (fVar.f9159d + i7), this.f9130e);
            }
            Bitmap createBitmap = Bitmap.createBitmap(this.f9135j, i6, i7, fVar.f9158c, fVar.f9159d);
            int i10 = bVar.f9140a;
            int i11 = bVar.f9141b;
            c.e.a.a.k.b bVar2 = new c.e.a.a.k.b(createBitmap, f5 / ((float) i10), 0, f4 / ((float) i11), 0, ((float) fVar.f9158c) / ((float) i10), ((float) fVar.f9159d) / ((float) i11));
            arrayList.add(bVar2);
            this.f9131f.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        return arrayList;
    }

    public void d() {
        this.f9134i.a();
    }

    public static c b(u uVar) {
        byte[] bArr;
        int a2 = uVar.a(16);
        uVar.c(4);
        int a3 = uVar.a(2);
        boolean f2 = uVar.f();
        uVar.c(1);
        byte[] bArr2 = null;
        if (a3 == 1) {
            uVar.c(uVar.a(8) * 16);
        } else if (a3 == 0) {
            int a4 = uVar.a(16);
            int a5 = uVar.a(16);
            if (a4 > 0) {
                bArr2 = new byte[a4];
                uVar.b(bArr2, 0, a4);
            }
            if (a5 > 0) {
                bArr = new byte[a5];
                uVar.b(bArr, 0, a5);
                return new c(a2, f2, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(a2, f2, bArr2, bArr);
    }

    public static int[] b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (i2 < 8) {
                iArr[i2] = a(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                int i3 = 127;
                int i4 = (i2 & 1) != 0 ? 127 : 0;
                int i5 = (i2 & 2) != 0 ? 127 : 0;
                if ((i2 & 4) == 0) {
                    i3 = 0;
                }
                iArr[i2] = a(255, i4, i5, i3);
            }
        }
        return iArr;
    }

    public static int[] c() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = 255;
            if (i2 < 8) {
                int i4 = (i2 & 1) != 0 ? 255 : 0;
                int i5 = (i2 & 2) != 0 ? 255 : 0;
                if ((i2 & 4) == 0) {
                    i3 = 0;
                }
                iArr[i2] = a(63, i4, i5, i3);
            } else {
                int i6 = i2 & 136;
                int i7 = 170;
                int i8 = 85;
                if (i6 == 0) {
                    int i9 = ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0);
                    int i10 = ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0);
                    if ((i2 & 4) == 0) {
                        i8 = 0;
                    }
                    if ((i2 & 64) == 0) {
                        i7 = 0;
                    }
                    iArr[i2] = a(255, i9, i10, i8 + i7);
                } else if (i6 != 8) {
                    int i11 = 43;
                    if (i6 == 128) {
                        int i12 = ((i2 & 1) != 0 ? 43 : 0) + 127 + ((i2 & 16) != 0 ? 85 : 0);
                        int i13 = ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0);
                        if ((i2 & 4) == 0) {
                            i11 = 0;
                        }
                        int i14 = i11 + 127;
                        if ((i2 & 64) == 0) {
                            i8 = 0;
                        }
                        iArr[i2] = a(255, i12, i13, i14 + i8);
                    } else if (i6 == 136) {
                        int i15 = ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0);
                        int i16 = ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0);
                        if ((i2 & 4) == 0) {
                            i11 = 0;
                        }
                        if ((i2 & 64) == 0) {
                            i8 = 0;
                        }
                        iArr[i2] = a(255, i15, i16, i11 + i8);
                    }
                } else {
                    int i17 = ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0);
                    int i18 = ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0);
                    if ((i2 & 4) == 0) {
                        i8 = 0;
                    }
                    if ((i2 & 64) == 0) {
                        i7 = 0;
                    }
                    iArr[i2] = a(127, i17, i18, i8 + i7);
                }
            }
        }
        return iArr;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v18, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x008f A[LOOP:0: B:1:0x0009->B:33:0x008f, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008e A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int b(c.e.a.a.o.u r13, int[] r14, byte[] r15, int r16, int r17, android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L_0x0009:
            r3 = 4
            int r4 = r13.a((int) r3)
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L_0x0017
            r12 = r2
            r3 = r4
        L_0x0014:
            r11 = 1
            goto L_0x006f
        L_0x0017:
            boolean r4 = r13.f()
            r7 = 3
            if (r4 != 0) goto L_0x002e
            int r3 = r13.a((int) r7)
            if (r3 == 0) goto L_0x002a
            int r3 = r3 + 2
            r12 = r2
            r11 = r3
            r3 = 0
            goto L_0x006f
        L_0x002a:
            r3 = 0
            r11 = 0
            r12 = 1
            goto L_0x006f
        L_0x002e:
            boolean r4 = r13.f()
            if (r4 != 0) goto L_0x0040
            int r4 = r13.a((int) r5)
            int r4 = r4 + r3
            int r3 = r13.a((int) r3)
        L_0x003d:
            r12 = r2
            r11 = r4
            goto L_0x006f
        L_0x0040:
            int r4 = r13.a((int) r5)
            if (r4 == 0) goto L_0x006c
            if (r4 == r6) goto L_0x0068
            if (r4 == r5) goto L_0x005d
            if (r4 == r7) goto L_0x0050
            r12 = r2
            r3 = 0
            r11 = 0
            goto L_0x006f
        L_0x0050:
            r4 = 8
            int r4 = r13.a((int) r4)
            int r4 = r4 + 25
            int r3 = r13.a((int) r3)
            goto L_0x003d
        L_0x005d:
            int r4 = r13.a((int) r3)
            int r4 = r4 + 9
            int r3 = r13.a((int) r3)
            goto L_0x003d
        L_0x0068:
            r12 = r2
            r3 = 0
            r11 = 2
            goto L_0x006f
        L_0x006c:
            r12 = r2
            r3 = 0
            goto L_0x0014
        L_0x006f:
            if (r11 == 0) goto L_0x008b
            if (r8 == 0) goto L_0x008b
            if (r15 == 0) goto L_0x0077
            byte r3 = r15[r3]
        L_0x0077:
            r2 = r14[r3]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r11
            float r5 = (float) r2
            int r2 = r1 + 1
            float r6 = (float) r2
            r2 = r19
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L_0x008b:
            int r10 = r10 + r11
            if (r12 == 0) goto L_0x008f
            return r10
        L_0x008f:
            r2 = r12
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.b.b.b(c.e.a.a.o.u, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v10, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int c(c.e.a.a.o.u r13, int[] r14, byte[] r15, int r16, int r17, android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L_0x0009:
            r3 = 8
            int r4 = r13.a((int) r3)
            r5 = 1
            if (r4 == 0) goto L_0x0016
            r12 = r2
            r3 = r4
            r11 = 1
            goto L_0x0035
        L_0x0016:
            boolean r4 = r13.f()
            r6 = 7
            if (r4 != 0) goto L_0x002b
            int r3 = r13.a((int) r6)
            if (r3 == 0) goto L_0x0027
            r12 = r2
            r11 = r3
            r3 = 0
            goto L_0x0035
        L_0x0027:
            r3 = 0
            r11 = 0
            r12 = 1
            goto L_0x0035
        L_0x002b:
            int r4 = r13.a((int) r6)
            int r3 = r13.a((int) r3)
            r12 = r2
            r11 = r4
        L_0x0035:
            if (r11 == 0) goto L_0x0053
            if (r8 == 0) goto L_0x0053
            if (r15 == 0) goto L_0x003d
            byte r3 = r15[r3]
        L_0x003d:
            r2 = r14[r3]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r11
            float r6 = (float) r2
            int r2 = r1 + 1
            float r7 = (float) r2
            r2 = r19
            r5 = r6
            r6 = r7
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L_0x0053:
            int r10 = r10 + r11
            if (r12 == 0) goto L_0x0057
            return r10
        L_0x0057:
            r2 = r12
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.b.b.c(c.e.a.a.o.u, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    public static void a(u uVar, h hVar) {
        int a2 = uVar.a(8);
        int a3 = uVar.a(16);
        int a4 = uVar.a(16);
        int d2 = uVar.d() + a4;
        if (a4 * 8 > uVar.b()) {
            p.d("DvbParser", "Data field length exceeds limit");
            uVar.c(uVar.b());
            return;
        }
        switch (a2) {
            case 16:
                if (a3 == hVar.f9173a) {
                    d dVar = hVar.f9181i;
                    d b2 = b(uVar, a4);
                    if (b2.f9152c == 0) {
                        if (!(dVar == null || dVar.f9151b == b2.f9151b)) {
                            hVar.f9181i = b2;
                            break;
                        }
                    } else {
                        hVar.f9181i = b2;
                        hVar.f9175c.clear();
                        hVar.f9176d.clear();
                        hVar.f9177e.clear();
                        break;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f9181i;
                if (a3 == hVar.f9173a && dVar2 != null) {
                    f c2 = c(uVar, a4);
                    if (dVar2.f9152c == 0) {
                        c2.a(hVar.f9175c.get(c2.f9156a));
                    }
                    hVar.f9175c.put(c2.f9156a, c2);
                    break;
                }
            case 18:
                if (a3 != hVar.f9173a) {
                    if (a3 == hVar.f9174b) {
                        a a5 = a(uVar, a4);
                        hVar.f9178f.put(a5.f9136a, a5);
                        break;
                    }
                } else {
                    a a6 = a(uVar, a4);
                    hVar.f9176d.put(a6.f9136a, a6);
                    break;
                }
                break;
            case 19:
                if (a3 != hVar.f9173a) {
                    if (a3 == hVar.f9174b) {
                        c b3 = b(uVar);
                        hVar.f9179g.put(b3.f9146a, b3);
                        break;
                    }
                } else {
                    c b4 = b(uVar);
                    hVar.f9177e.put(b4.f9146a, b4);
                    break;
                }
                break;
            case 20:
                if (a3 == hVar.f9173a) {
                    hVar.f9180h = a(uVar);
                    break;
                }
                break;
        }
        uVar.d(d2 - uVar.d());
    }

    public static C0116b a(u uVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        uVar.c(4);
        boolean f2 = uVar.f();
        uVar.c(3);
        int a2 = uVar.a(16);
        int a3 = uVar.a(16);
        if (f2) {
            int a4 = uVar.a(16);
            int a5 = uVar.a(16);
            int a6 = uVar.a(16);
            i2 = uVar.a(16);
            i4 = a5;
            i3 = a6;
            i5 = a4;
        } else {
            i4 = a2;
            i2 = a3;
            i5 = 0;
            i3 = 0;
        }
        C0116b bVar = new C0116b(a2, a3, i5, i4, i3, i2);
        return bVar;
    }

    public static a a(u uVar, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        u uVar2 = uVar;
        int i8 = 8;
        int a2 = uVar2.a(8);
        uVar2.c(8);
        int i9 = 2;
        int i10 = i2 - 2;
        int[] a3 = a();
        int[] b2 = b();
        int[] c2 = c();
        while (i10 > 0) {
            int a4 = uVar2.a(i8);
            int a5 = uVar2.a(i8);
            int i11 = i10 - 2;
            int[] iArr = (a5 & 128) != 0 ? a3 : (a5 & 64) != 0 ? b2 : c2;
            if ((a5 & 1) != 0) {
                i6 = uVar2.a(i8);
                i5 = uVar2.a(i8);
                i4 = uVar2.a(i8);
                i3 = uVar2.a(i8);
                i7 = i11 - 4;
            } else {
                i4 = uVar2.a(4) << 4;
                i7 = i11 - 2;
                int a6 = uVar2.a(4) << 4;
                i3 = uVar2.a(i9) << 6;
                i6 = uVar2.a(6) << i9;
                i5 = a6;
            }
            if (i6 == 0) {
                i5 = 0;
                i4 = 0;
                i3 = 255;
            }
            double d2 = (double) i6;
            double d3 = (double) (i5 - 128);
            Double.isNaN(d3);
            Double.isNaN(d2);
            double d4 = (double) (i4 - 128);
            Double.isNaN(d4);
            Double.isNaN(d2);
            Double.isNaN(d3);
            Double.isNaN(d4);
            Double.isNaN(d2);
            iArr[a4] = a((byte) (255 - (i3 & 255)), I.a((int) (d2 + (1.402d * d3)), 0, 255), I.a((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), I.a((int) (d2 + (d4 * 1.772d)), 0, 255));
            i10 = i7;
            a2 = a2;
            i8 = 8;
            i9 = 2;
        }
        return new a(a2, a3, b2, c2);
    }

    public static int[] a() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    public static void a(c cVar, a aVar, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i2 == 3) {
            iArr = aVar.f9139d;
        } else if (i2 == 2) {
            iArr = aVar.f9138c;
        } else {
            iArr = aVar.f9137b;
        }
        int[] iArr2 = iArr;
        int i5 = i2;
        int i6 = i3;
        Paint paint2 = paint;
        Canvas canvas2 = canvas;
        a(cVar.f9148c, iArr2, i5, i6, i4, paint2, canvas2);
        a(cVar.f9149d, iArr2, i5, i6, i4 + 1, paint2, canvas2);
    }

    public static void a(byte[] bArr, int[] iArr, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        byte[] bArr2;
        int a2;
        byte[] bArr3;
        byte[] bArr4;
        int i5 = i2;
        byte[] bArr5 = bArr;
        u uVar = new u(bArr);
        int i6 = i3;
        int i7 = i4;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        while (uVar.b() != 0) {
            int a3 = uVar.a(8);
            if (a3 != 240) {
                switch (a3) {
                    case 16:
                        if (i5 != 3) {
                            if (i5 != 2) {
                                bArr2 = null;
                                a2 = a(uVar, iArr, bArr2, i6, i7, paint, canvas);
                                uVar.c();
                                break;
                            } else {
                                bArr3 = bArr7 == null ? f9126a : bArr7;
                            }
                        } else {
                            bArr3 = bArr6 == null ? f9127b : bArr6;
                        }
                        bArr2 = bArr3;
                        a2 = a(uVar, iArr, bArr2, i6, i7, paint, canvas);
                        uVar.c();
                    case 17:
                        a2 = b(uVar, iArr, i5 == 3 ? f9128c : null, i6, i7, paint, canvas);
                        uVar.c();
                        break;
                    case 18:
                        a2 = c(uVar, iArr, null, i6, i7, paint, canvas);
                        break;
                    default:
                        switch (a3) {
                            case 32:
                                bArr7 = a(4, 4, uVar);
                                continue;
                            case 33:
                                bArr4 = a(4, 8, uVar);
                                break;
                            case 34:
                                bArr4 = a(16, 8, uVar);
                                break;
                            default:
                                continue;
                        }
                        bArr6 = bArr4;
                        break;
                }
                i6 = a2;
            } else {
                i7 += 2;
                i6 = i3;
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v15, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0083 A[LOOP:0: B:1:0x0009->B:30:0x0083, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0082 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(c.e.a.a.o.u r13, int[] r14, byte[] r15, int r16, int r17, android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L_0x0009:
            r3 = 2
            int r4 = r13.a((int) r3)
            r5 = 1
            if (r4 == 0) goto L_0x0015
            r12 = r2
            r3 = r4
        L_0x0013:
            r11 = 1
            goto L_0x0061
        L_0x0015:
            boolean r4 = r13.f()
            r6 = 3
            if (r4 == 0) goto L_0x0028
            int r4 = r13.a((int) r6)
            int r4 = r4 + r6
            int r3 = r13.a((int) r3)
        L_0x0025:
            r12 = r2
            r11 = r4
            goto L_0x0061
        L_0x0028:
            boolean r4 = r13.f()
            if (r4 == 0) goto L_0x0031
            r12 = r2
            r3 = 0
            goto L_0x0013
        L_0x0031:
            int r4 = r13.a((int) r3)
            if (r4 == 0) goto L_0x005e
            if (r4 == r5) goto L_0x005a
            if (r4 == r3) goto L_0x004e
            if (r4 == r6) goto L_0x0041
            r12 = r2
            r3 = 0
            r11 = 0
            goto L_0x0061
        L_0x0041:
            r4 = 8
            int r4 = r13.a((int) r4)
            int r4 = r4 + 29
            int r3 = r13.a((int) r3)
            goto L_0x0025
        L_0x004e:
            r4 = 4
            int r4 = r13.a((int) r4)
            int r4 = r4 + 12
            int r3 = r13.a((int) r3)
            goto L_0x0025
        L_0x005a:
            r12 = r2
            r3 = 0
            r11 = 2
            goto L_0x0061
        L_0x005e:
            r3 = 0
            r11 = 0
            r12 = 1
        L_0x0061:
            if (r11 == 0) goto L_0x007f
            if (r8 == 0) goto L_0x007f
            if (r15 == 0) goto L_0x0069
            byte r3 = r15[r3]
        L_0x0069:
            r2 = r14[r3]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r11
            float r6 = (float) r2
            int r2 = r1 + 1
            float r7 = (float) r2
            r2 = r19
            r5 = r6
            r6 = r7
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L_0x007f:
            int r10 = r10 + r11
            if (r12 == 0) goto L_0x0083
            return r10
        L_0x0083:
            r2 = r12
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.b.b.a(c.e.a.a.o.u, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    public static byte[] a(int i2, int i3, u uVar) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) uVar.a(i3);
        }
        return bArr;
    }
}
