package com.google.zxing.qrcode.decoder;

import com.google.zxing.qrcode.decoder.h;

final class b {

    /* renamed from: a  reason: collision with root package name */
    final int f4410a;

    /* renamed from: b  reason: collision with root package name */
    final byte[] f4411b;

    private b(int i, byte[] bArr) {
        this.f4410a = i;
        this.f4411b = bArr;
    }

    static b[] a(byte[] bArr, h hVar, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length == hVar.getTotalCodewords()) {
            h.b eCBlocksForLevel = hVar.getECBlocksForLevel(errorCorrectionLevel);
            h.a[] eCBlocks = eCBlocksForLevel.getECBlocks();
            int i = 0;
            for (h.a count : eCBlocks) {
                i += count.getCount();
            }
            b[] bVarArr = new b[i];
            int length = eCBlocks.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                h.a aVar = eCBlocks[i2];
                int i4 = i3;
                int i5 = 0;
                while (i5 < aVar.getCount()) {
                    int dataCodewords = aVar.getDataCodewords();
                    bVarArr[i4] = new b(dataCodewords, new byte[(eCBlocksForLevel.getECCodewordsPerBlock() + dataCodewords)]);
                    i5++;
                    i4++;
                }
                i2++;
                i3 = i4;
            }
            int length2 = bVarArr[0].f4411b.length;
            int length3 = bVarArr.length - 1;
            while (length3 >= 0 && bVarArr[length3].f4411b.length != length2) {
                length3--;
            }
            int i6 = length3 + 1;
            int eCCodewordsPerBlock = length2 - eCBlocksForLevel.getECCodewordsPerBlock();
            int i7 = 0;
            int i8 = 0;
            while (i7 < eCCodewordsPerBlock) {
                int i9 = i8;
                int i10 = 0;
                while (i10 < i3) {
                    bVarArr[i10].f4411b[i7] = bArr[i9];
                    i10++;
                    i9++;
                }
                i7++;
                i8 = i9;
            }
            int i11 = i6;
            while (i11 < i3) {
                bVarArr[i11].f4411b[eCCodewordsPerBlock] = bArr[i8];
                i11++;
                i8++;
            }
            int length4 = bVarArr[0].f4411b.length;
            while (eCCodewordsPerBlock < length4) {
                int i12 = i8;
                int i13 = 0;
                while (i13 < i3) {
                    bVarArr[i13].f4411b[i13 < i6 ? eCCodewordsPerBlock : eCCodewordsPerBlock + 1] = bArr[i12];
                    i13++;
                    i12++;
                }
                eCCodewordsPerBlock++;
                i8 = i12;
            }
            return bVarArr;
        }
        throw new IllegalArgumentException();
    }
}
