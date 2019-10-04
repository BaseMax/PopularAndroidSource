package com.google.zxing.datamatrix.a;

import com.google.zxing.common.b;
import com.google.zxing.d;

final class a {

    /* renamed from: a  reason: collision with root package name */
    final b f4327a;

    /* renamed from: b  reason: collision with root package name */
    final b f4328b;
    final e c;

    a(b bVar) throws d {
        int height = bVar.getHeight();
        if (height < 8 || height > 144 || (height & 1) != 0) {
            throw d.getFormatInstance();
        }
        this.c = e.getVersionForDimensions(bVar.getHeight(), bVar.getWidth());
        this.f4327a = a(bVar);
        this.f4328b = new b(this.f4327a.getWidth(), this.f4327a.getHeight());
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int i, int i2, int i3, int i4) {
        if (i < 0) {
            i += i3;
            i2 += 4 - ((i3 + 4) & 7);
        }
        if (i2 < 0) {
            i2 += i4;
            i += 4 - ((i4 + 4) & 7);
        }
        this.f4328b.set(i2, i);
        return this.f4327a.get(i2, i);
    }

    /* access modifiers changed from: package-private */
    public final int b(int i, int i2, int i3, int i4) {
        int i5 = i - 2;
        int i6 = i2 - 2;
        int i7 = (a(i5, i6, i3, i4) ? 1 : 0) << true;
        int i8 = i2 - 1;
        if (a(i5, i8, i3, i4)) {
            i7 |= 1;
        }
        int i9 = i7 << 1;
        int i10 = i - 1;
        if (a(i10, i6, i3, i4)) {
            i9 |= 1;
        }
        int i11 = i9 << 1;
        if (a(i10, i8, i3, i4)) {
            i11 |= 1;
        }
        int i12 = i11 << 1;
        if (a(i10, i2, i3, i4)) {
            i12 |= 1;
        }
        int i13 = i12 << 1;
        if (a(i, i6, i3, i4)) {
            i13 |= 1;
        }
        int i14 = i13 << 1;
        if (a(i, i8, i3, i4)) {
            i14 |= 1;
        }
        int i15 = i14 << 1;
        return a(i, i2, i3, i4) ? i15 | 1 : i15;
    }

    private b a(b bVar) {
        int symbolSizeRows = this.c.getSymbolSizeRows();
        int symbolSizeColumns = this.c.getSymbolSizeColumns();
        if (bVar.getHeight() == symbolSizeRows) {
            int dataRegionSizeRows = this.c.getDataRegionSizeRows();
            int dataRegionSizeColumns = this.c.getDataRegionSizeColumns();
            int i = symbolSizeRows / dataRegionSizeRows;
            int i2 = symbolSizeColumns / dataRegionSizeColumns;
            b bVar2 = new b(i2 * dataRegionSizeColumns, i * dataRegionSizeRows);
            for (int i3 = 0; i3 < i; i3++) {
                int i4 = i3 * dataRegionSizeRows;
                for (int i5 = 0; i5 < i2; i5++) {
                    int i6 = i5 * dataRegionSizeColumns;
                    for (int i7 = 0; i7 < dataRegionSizeRows; i7++) {
                        int i8 = ((dataRegionSizeRows + 2) * i3) + 1 + i7;
                        int i9 = i4 + i7;
                        for (int i10 = 0; i10 < dataRegionSizeColumns; i10++) {
                            if (bVar.get(((dataRegionSizeColumns + 2) * i5) + 1 + i10, i8)) {
                                bVar2.set(i6 + i10, i9);
                            }
                        }
                        b bVar3 = bVar;
                    }
                    b bVar4 = bVar;
                }
                b bVar5 = bVar;
            }
            return bVar2;
        }
        throw new IllegalArgumentException("Dimension of bitMatrix must match the version size");
    }
}
