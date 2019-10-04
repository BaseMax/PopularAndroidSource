package com.google.zxing.datamatrix.a;

import com.google.zxing.d;

public final class e {

    /* renamed from: b  reason: collision with root package name */
    private static final e[] f4336b;

    /* renamed from: a  reason: collision with root package name */
    final b f4337a;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f4338a;

        /* renamed from: b  reason: collision with root package name */
        final int f4339b;

        /* synthetic */ a(int i, int i2, byte b2) {
            this(i, i2);
        }

        private a(int i, int i2) {
            this.f4338a = i;
            this.f4339b = i2;
        }
    }

    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f4340a;

        /* renamed from: b  reason: collision with root package name */
        final a[] f4341b;

        /* synthetic */ b(int i, a aVar, byte b2) {
            this(i, aVar);
        }

        /* synthetic */ b(a aVar, a aVar2, byte b2) {
            this(aVar, aVar2);
        }

        private b(int i, a aVar) {
            this.f4340a = i;
            this.f4341b = new a[]{aVar};
        }

        private b(a aVar, a aVar2) {
            this.f4340a = 62;
            this.f4341b = new a[]{aVar, aVar2};
        }
    }

    private e(int i, int i2, int i3, int i4, int i5, b bVar) {
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.f4337a = bVar;
        int i6 = bVar.f4340a;
        int i7 = 0;
        for (a aVar : bVar.f4341b) {
            i7 += aVar.f4338a * (aVar.f4339b + i6);
        }
        this.h = i7;
    }

    public final int getVersionNumber() {
        return this.c;
    }

    public final int getSymbolSizeRows() {
        return this.d;
    }

    public final int getSymbolSizeColumns() {
        return this.e;
    }

    public final int getDataRegionSizeRows() {
        return this.f;
    }

    public final int getDataRegionSizeColumns() {
        return this.g;
    }

    public final int getTotalCodewords() {
        return this.h;
    }

    public static e getVersionForDimensions(int i, int i2) throws d {
        if ((i & 1) == 0 && (i2 & 1) == 0) {
            for (e eVar : f4336b) {
                if (eVar.d == i && eVar.e == i2) {
                    return eVar;
                }
            }
            throw d.getFormatInstance();
        }
        throw d.getFormatInstance();
    }

    public final String toString() {
        return String.valueOf(this.c);
    }

    static {
        e eVar = new e(1, 10, 10, 8, 8, new b(5, new a(1, 3, (byte) 0), (byte) 0));
        e eVar2 = new e(2, 12, 12, 10, 10, new b(7, new a(1, 5, (byte) 0), (byte) 0));
        e eVar3 = new e(3, 14, 14, 12, 12, new b(10, new a(1, 8, (byte) 0), (byte) 0));
        e eVar4 = new e(4, 16, 16, 14, 14, new b(12, new a(1, 12, (byte) 0), (byte) 0));
        e eVar5 = new e(5, 18, 18, 16, 16, new b(14, new a(1, 18, (byte) 0), (byte) 0));
        e eVar6 = new e(6, 20, 20, 18, 18, new b(18, new a(1, 22, (byte) 0), (byte) 0));
        e eVar7 = new e(7, 22, 22, 20, 20, new b(20, new a(1, 30, (byte) 0), (byte) 0));
        e eVar8 = new e(8, 24, 24, 22, 22, new b(24, new a(1, 36, (byte) 0), (byte) 0));
        e eVar9 = new e(9, 26, 26, 24, 24, new b(28, new a(1, 44, (byte) 0), (byte) 0));
        e eVar10 = new e(10, 32, 32, 14, 14, new b(36, new a(1, 62, (byte) 0), (byte) 0));
        e eVar11 = new e(11, 36, 36, 16, 16, new b(42, new a(1, 86, (byte) 0), (byte) 0));
        e eVar12 = new e(12, 40, 40, 18, 18, new b(48, new a(1, 114, (byte) 0), (byte) 0));
        e eVar13 = new e(13, 44, 44, 20, 20, new b(56, new a(1, 144, (byte) 0), (byte) 0));
        e eVar14 = new e(14, 48, 48, 22, 22, new b(68, new a(1, 174, (byte) 0), (byte) 0));
        e eVar15 = new e(15, 52, 52, 24, 24, new b(42, new a(2, 102, (byte) 0), (byte) 0));
        e eVar16 = new e(16, 64, 64, 14, 14, new b(56, new a(2, 140, (byte) 0), (byte) 0));
        e eVar17 = new e(17, 72, 72, 16, 16, new b(36, new a(4, 92, (byte) 0), (byte) 0));
        e eVar18 = new e(18, 80, 80, 18, 18, new b(48, new a(4, 114, (byte) 0), (byte) 0));
        e eVar19 = new e(19, 88, 88, 20, 20, new b(56, new a(4, 144, (byte) 0), (byte) 0));
        e eVar20 = new e(20, 96, 96, 22, 22, new b(68, new a(4, 174, (byte) 0), (byte) 0));
        e eVar21 = new e(21, 104, 104, 24, 24, new b(56, new a(6, 136, (byte) 0), (byte) 0));
        e eVar22 = new e(22, 120, 120, 18, 18, new b(68, new a(6, 175, (byte) 0), (byte) 0));
        e eVar23 = new e(23, 132, 132, 20, 20, new b(62, new a(8, 163, (byte) 0), (byte) 0));
        e eVar24 = new e(24, 144, 144, 22, 22, new b(new a(8, 156, (byte) 0), new a(2, 155, (byte) 0), (byte) 0));
        e eVar25 = new e(25, 8, 18, 6, 16, new b(7, new a(1, 5, (byte) 0), (byte) 0));
        e eVar26 = new e(26, 8, 32, 6, 14, new b(11, new a(1, 10, (byte) 0), (byte) 0));
        e eVar27 = new e(27, 12, 26, 10, 24, new b(14, new a(1, 16, (byte) 0), (byte) 0));
        e eVar28 = new e(28, 12, 36, 10, 16, new b(18, new a(1, 22, (byte) 0), (byte) 0));
        e eVar29 = new e(29, 16, 36, 14, 16, new b(24, new a(1, 32, (byte) 0), (byte) 0));
        e eVar30 = new e(30, 16, 48, 14, 22, new b(28, new a(1, 49, (byte) 0), (byte) 0));
        f4336b = new e[]{eVar, eVar2, eVar3, eVar4, eVar5, eVar6, eVar7, eVar8, eVar9, eVar10, eVar11, eVar12, eVar13, eVar14, eVar15, eVar16, eVar17, eVar18, eVar19, eVar20, eVar21, eVar22, eVar23, eVar24, eVar25, eVar26, eVar27, eVar28, eVar29, eVar30};
    }
}
