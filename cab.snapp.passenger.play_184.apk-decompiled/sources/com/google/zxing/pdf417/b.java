package com.google.zxing.pdf417;

import androidx.appcompat.widget.ActivityChooserView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.c;
import com.google.zxing.d;
import com.google.zxing.h;
import com.google.zxing.j;
import com.google.zxing.l;
import com.google.zxing.m;
import com.google.zxing.pdf417.b.a;
import java.util.ArrayList;
import java.util.Map;

public final class b implements j {
    public final void reset() {
    }

    public final l decode(com.google.zxing.b bVar) throws h, d, c {
        return decode(bVar, null);
    }

    public final l decode(com.google.zxing.b bVar, Map<DecodeHintType, ?> map) throws h, d, c {
        l[] a2 = a(bVar, map, false);
        if (a2 != null && a2.length != 0 && a2[0] != null) {
            return a2[0];
        }
        throw h.getNotFoundInstance();
    }

    public final l[] decodeMultiple(com.google.zxing.b bVar) throws h {
        return decodeMultiple(bVar, null);
    }

    public final l[] decodeMultiple(com.google.zxing.b bVar, Map<DecodeHintType, ?> map) throws h {
        try {
            return a(bVar, map, true);
        } catch (c | d unused) {
            throw h.getNotFoundInstance();
        }
    }

    private static l[] a(com.google.zxing.b bVar, Map<DecodeHintType, ?> map, boolean z) throws h, d, c {
        ArrayList arrayList = new ArrayList();
        com.google.zxing.pdf417.b.b detect = a.detect(bVar, map, z);
        for (m[] next : detect.getPoints()) {
            com.google.zxing.common.d decode = com.google.zxing.pdf417.a.j.decode(detect.getBits(), next[4], next[5], next[6], next[7], b(next), a(next));
            l lVar = new l(decode.getText(), decode.getRawBytes(), next, BarcodeFormat.PDF_417);
            lVar.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, decode.getECLevel());
            c cVar = (c) decode.getOther();
            if (cVar != null) {
                lVar.putMetadata(ResultMetadataType.PDF417_EXTRA_METADATA, cVar);
            }
            arrayList.add(lVar);
        }
        return (l[]) arrayList.toArray(new l[arrayList.size()]);
    }

    private static int a(m mVar, m mVar2) {
        if (mVar == null || mVar2 == null) {
            return 0;
        }
        return (int) Math.abs(mVar.getX() - mVar2.getX());
    }

    private static int b(m mVar, m mVar2) {
        return (mVar == null || mVar2 == null) ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) Math.abs(mVar.getX() - mVar2.getX());
    }

    private static int a(m[] mVarArr) {
        return Math.max(Math.max(a(mVarArr[0], mVarArr[4]), (a(mVarArr[6], mVarArr[2]) * 17) / 18), Math.max(a(mVarArr[1], mVarArr[5]), (a(mVarArr[7], mVarArr[3]) * 17) / 18));
    }

    private static int b(m[] mVarArr) {
        return Math.min(Math.min(b(mVarArr[0], mVarArr[4]), (b(mVarArr[6], mVarArr[2]) * 17) / 18), Math.min(b(mVarArr[1], mVarArr[5]), (b(mVarArr[7], mVarArr[3]) * 17) / 18));
    }
}
