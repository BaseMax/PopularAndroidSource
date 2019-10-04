package com.google.zxing.c;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.common.a;
import com.google.zxing.h;
import com.google.zxing.l;
import java.util.EnumMap;

final class m {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f4289a = new int[4];

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f4290b = new StringBuilder();

    m() {
    }

    /* access modifiers changed from: package-private */
    public final l a(int i, a aVar, int[] iArr) throws h {
        EnumMap enumMap;
        a aVar2 = aVar;
        StringBuilder sb = this.f4290b;
        sb.setLength(0);
        int[] iArr2 = this.f4289a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = aVar.getSize();
        int i2 = iArr[1];
        int i3 = 0;
        int i4 = 0;
        while (i3 < 2 && i2 < size) {
            int a2 = p.a(aVar2, iArr2, i2, p.f);
            sb.append((char) ((a2 % 10) + 48));
            int i5 = i2;
            for (int i6 : iArr2) {
                i5 += i6;
            }
            if (a2 >= 10) {
                i4 = (1 << (1 - i3)) | i4;
            }
            i2 = i3 != 1 ? aVar2.getNextUnset(aVar2.getNextSet(i5)) : i5;
            i3++;
        }
        if (sb.length() != 2) {
            throw h.getNotFoundInstance();
        } else if (Integer.parseInt(sb.toString()) % 4 == i4) {
            String sb2 = sb.toString();
            if (sb2.length() != 2) {
                enumMap = null;
            } else {
                enumMap = new EnumMap(ResultMetadataType.class);
                enumMap.put(ResultMetadataType.ISSUE_NUMBER, Integer.valueOf(sb2));
            }
            float f = (float) i;
            l lVar = new l(sb2, null, new com.google.zxing.m[]{new com.google.zxing.m(((float) (iArr[0] + iArr[1])) / 2.0f, f), new com.google.zxing.m((float) i2, f)}, BarcodeFormat.UPC_EAN_EXTENSION);
            if (enumMap != null) {
                lVar.putAllMetadata(enumMap);
            }
            return lVar;
        } else {
            throw h.getNotFoundInstance();
        }
    }
}
