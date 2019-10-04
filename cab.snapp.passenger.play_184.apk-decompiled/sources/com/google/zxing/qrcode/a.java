package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.b;
import com.google.zxing.c;
import com.google.zxing.common.f;
import com.google.zxing.d;
import com.google.zxing.h;
import com.google.zxing.j;
import com.google.zxing.l;
import com.google.zxing.m;
import com.google.zxing.qrcode.decoder.e;
import com.google.zxing.qrcode.decoder.g;
import java.util.List;
import java.util.Map;

public final class a implements j {

    /* renamed from: a  reason: collision with root package name */
    private static final m[] f4389a = new m[0];

    /* renamed from: b  reason: collision with root package name */
    private final e f4390b = new e();

    public final void reset() {
    }

    public final l decode(b bVar) throws h, c, d {
        return decode(bVar, null);
    }

    public final l decode(b bVar, Map<DecodeHintType, ?> map) throws h, c, d {
        m[] mVarArr;
        com.google.zxing.common.d dVar;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            f detect = new com.google.zxing.qrcode.a.c(bVar.getBlackMatrix()).detect(map);
            com.google.zxing.common.d decode = this.f4390b.decode(detect.getBits(), map);
            mVarArr = detect.getPoints();
            dVar = decode;
        } else {
            com.google.zxing.common.b blackMatrix = bVar.getBlackMatrix();
            int[] topLeftOnBit = blackMatrix.getTopLeftOnBit();
            int[] bottomRightOnBit = blackMatrix.getBottomRightOnBit();
            if (topLeftOnBit == null || bottomRightOnBit == null) {
                throw h.getNotFoundInstance();
            }
            int height = blackMatrix.getHeight();
            int width = blackMatrix.getWidth();
            int i = topLeftOnBit[0];
            int i2 = topLeftOnBit[1];
            boolean z = true;
            int i3 = 0;
            while (i < width && i2 < height) {
                if (z != blackMatrix.get(i, i2)) {
                    i3++;
                    if (i3 == 5) {
                        break;
                    }
                    z = !z;
                }
                i++;
                i2++;
            }
            if (i == width || i2 == height) {
                throw h.getNotFoundInstance();
            }
            float f = ((float) (i - topLeftOnBit[0])) / 7.0f;
            int i4 = topLeftOnBit[1];
            int i5 = bottomRightOnBit[1];
            int i6 = topLeftOnBit[0];
            int i7 = bottomRightOnBit[0];
            if (i6 >= i7 || i4 >= i5) {
                throw h.getNotFoundInstance();
            }
            int i8 = i5 - i4;
            if (i8 != i7 - i6) {
                i7 = i6 + i8;
                if (i7 >= blackMatrix.getWidth()) {
                    throw h.getNotFoundInstance();
                }
            }
            int round = Math.round(((float) ((i7 - i6) + 1)) / f);
            int round2 = Math.round(((float) (i8 + 1)) / f);
            if (round <= 0 || round2 <= 0) {
                throw h.getNotFoundInstance();
            } else if (round2 == round) {
                int i9 = (int) (f / 2.0f);
                int i10 = i4 + i9;
                int i11 = i6 + i9;
                int i12 = (((int) (((float) (round - 1)) * f)) + i11) - i7;
                if (i12 > 0) {
                    if (i12 <= i9) {
                        i11 -= i12;
                    } else {
                        throw h.getNotFoundInstance();
                    }
                }
                int i13 = (((int) (((float) (round2 - 1)) * f)) + i10) - i5;
                if (i13 > 0) {
                    if (i13 <= i9) {
                        i10 -= i13;
                    } else {
                        throw h.getNotFoundInstance();
                    }
                }
                com.google.zxing.common.b bVar2 = new com.google.zxing.common.b(round, round2);
                for (int i14 = 0; i14 < round2; i14++) {
                    int i15 = ((int) (((float) i14) * f)) + i10;
                    for (int i16 = 0; i16 < round; i16++) {
                        if (blackMatrix.get(((int) (((float) i16) * f)) + i11, i15)) {
                            bVar2.set(i16, i14);
                        }
                    }
                }
                dVar = this.f4390b.decode(bVar2, map);
                mVarArr = f4389a;
            } else {
                throw h.getNotFoundInstance();
            }
        }
        if (dVar.getOther() instanceof g) {
            ((g) dVar.getOther()).applyMirroredCorrection(mVarArr);
        }
        l lVar = new l(dVar.getText(), dVar.getRawBytes(), mVarArr, BarcodeFormat.QR_CODE);
        List<byte[]> byteSegments = dVar.getByteSegments();
        if (byteSegments != null) {
            lVar.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = dVar.getECLevel();
        if (eCLevel != null) {
            lVar.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        if (dVar.hasStructuredAppend()) {
            lVar.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(dVar.getStructuredAppendSequenceNumber()));
            lVar.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(dVar.getStructuredAppendParity()));
        }
        return lVar;
    }
}
