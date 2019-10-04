package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.b;
import com.google.zxing.c;
import com.google.zxing.common.f;
import com.google.zxing.datamatrix.a.d;
import com.google.zxing.h;
import com.google.zxing.j;
import com.google.zxing.l;
import com.google.zxing.m;
import java.util.List;
import java.util.Map;

public final class a implements j {

    /* renamed from: a  reason: collision with root package name */
    private static final m[] f4325a = new m[0];

    /* renamed from: b  reason: collision with root package name */
    private final d f4326b = new d();

    public final void reset() {
    }

    public final l decode(b bVar) throws h, c, com.google.zxing.d {
        return decode(bVar, null);
    }

    public final l decode(b bVar, Map<DecodeHintType, ?> map) throws h, c, com.google.zxing.d {
        m[] mVarArr;
        com.google.zxing.common.d dVar;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            f detect = new com.google.zxing.datamatrix.b.a(bVar.getBlackMatrix()).detect();
            com.google.zxing.common.d decode = this.f4326b.decode(detect.getBits());
            mVarArr = detect.getPoints();
            dVar = decode;
        } else {
            com.google.zxing.common.b blackMatrix = bVar.getBlackMatrix();
            int[] topLeftOnBit = blackMatrix.getTopLeftOnBit();
            int[] bottomRightOnBit = blackMatrix.getBottomRightOnBit();
            if (topLeftOnBit == null || bottomRightOnBit == null) {
                throw h.getNotFoundInstance();
            }
            int width = blackMatrix.getWidth();
            int i = topLeftOnBit[0];
            int i2 = topLeftOnBit[1];
            while (i < width && blackMatrix.get(i, i2)) {
                i++;
            }
            if (i != width) {
                int i3 = i - topLeftOnBit[0];
                if (i3 != 0) {
                    int i4 = topLeftOnBit[1];
                    int i5 = bottomRightOnBit[1];
                    int i6 = topLeftOnBit[0];
                    int i7 = ((bottomRightOnBit[0] - i6) + 1) / i3;
                    int i8 = ((i5 - i4) + 1) / i3;
                    if (i7 <= 0 || i8 <= 0) {
                        throw h.getNotFoundInstance();
                    }
                    int i9 = i3 / 2;
                    int i10 = i4 + i9;
                    int i11 = i6 + i9;
                    com.google.zxing.common.b bVar2 = new com.google.zxing.common.b(i7, i8);
                    for (int i12 = 0; i12 < i8; i12++) {
                        int i13 = (i12 * i3) + i10;
                        for (int i14 = 0; i14 < i7; i14++) {
                            if (blackMatrix.get((i14 * i3) + i11, i13)) {
                                bVar2.set(i14, i12);
                            }
                        }
                    }
                    dVar = this.f4326b.decode(bVar2);
                    mVarArr = f4325a;
                } else {
                    throw h.getNotFoundInstance();
                }
            } else {
                throw h.getNotFoundInstance();
            }
        }
        l lVar = new l(dVar.getText(), dVar.getRawBytes(), mVarArr, BarcodeFormat.DATA_MATRIX);
        List<byte[]> byteSegments = dVar.getByteSegments();
        if (byteSegments != null) {
            lVar.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = dVar.getECLevel();
        if (eCLevel != null) {
            lVar.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        return lVar;
    }
}
