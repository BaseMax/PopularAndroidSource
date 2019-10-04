package com.google.zxing.b;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.b;
import com.google.zxing.b.a.c;
import com.google.zxing.d;
import com.google.zxing.h;
import com.google.zxing.j;
import com.google.zxing.l;
import com.google.zxing.m;
import java.util.Map;

public final class a implements j {

    /* renamed from: a  reason: collision with root package name */
    private static final m[] f4239a = new m[0];

    /* renamed from: b  reason: collision with root package name */
    private final c f4240b = new c();

    public final void reset() {
    }

    public final l decode(b bVar) throws h, com.google.zxing.c, d {
        return decode(bVar, null);
    }

    public final l decode(b bVar, Map<DecodeHintType, ?> map) throws h, com.google.zxing.c, d {
        Map<DecodeHintType, ?> map2 = map;
        if (map2 == null || !map2.containsKey(DecodeHintType.PURE_BARCODE)) {
            throw h.getNotFoundInstance();
        }
        com.google.zxing.common.b blackMatrix = bVar.getBlackMatrix();
        int[] enclosingRectangle = blackMatrix.getEnclosingRectangle();
        if (enclosingRectangle != null) {
            int i = enclosingRectangle[0];
            int i2 = enclosingRectangle[1];
            int i3 = enclosingRectangle[2];
            int i4 = enclosingRectangle[3];
            com.google.zxing.common.b bVar2 = new com.google.zxing.common.b(30, 33);
            for (int i5 = 0; i5 < 33; i5++) {
                int i6 = (((i5 * i4) + (i4 / 2)) / 33) + i2;
                for (int i7 = 0; i7 < 30; i7++) {
                    if (blackMatrix.get(((((i7 * i3) + (i3 / 2)) + (((i5 & 1) * i3) / 2)) / 30) + i, i6)) {
                        bVar2.set(i7, i5);
                    }
                }
            }
            com.google.zxing.common.d decode = this.f4240b.decode(bVar2, map2);
            l lVar = new l(decode.getText(), decode.getRawBytes(), f4239a, BarcodeFormat.MAXICODE);
            String eCLevel = decode.getECLevel();
            if (eCLevel != null) {
                lVar.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
            }
            return lVar;
        }
        throw h.getNotFoundInstance();
    }
}
