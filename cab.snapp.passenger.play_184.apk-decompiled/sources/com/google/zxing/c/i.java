package com.google.zxing.c;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.c.a.a.d;
import com.google.zxing.c.a.e;
import com.google.zxing.common.a;
import com.google.zxing.h;
import com.google.zxing.k;
import com.google.zxing.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class i extends k {

    /* renamed from: a  reason: collision with root package name */
    private final k[] f4286a;

    public i(Map<DecodeHintType, ?> map) {
        Collection collection;
        if (map == null) {
            collection = null;
        } else {
            collection = (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        }
        boolean z = (map == null || map.get(DecodeHintType.ASSUME_CODE_39_CHECK_DIGIT) == null) ? false : true;
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(BarcodeFormat.EAN_13) || collection.contains(BarcodeFormat.UPC_A) || collection.contains(BarcodeFormat.EAN_8) || collection.contains(BarcodeFormat.UPC_E)) {
                arrayList.add(new j(map));
            }
            if (collection.contains(BarcodeFormat.CODE_39)) {
                arrayList.add(new c(z));
            }
            if (collection.contains(BarcodeFormat.CODE_93)) {
                arrayList.add(new d());
            }
            if (collection.contains(BarcodeFormat.CODE_128)) {
                arrayList.add(new b());
            }
            if (collection.contains(BarcodeFormat.ITF)) {
                arrayList.add(new h());
            }
            if (collection.contains(BarcodeFormat.CODABAR)) {
                arrayList.add(new a());
            }
            if (collection.contains(BarcodeFormat.RSS_14)) {
                arrayList.add(new e());
            }
            if (collection.contains(BarcodeFormat.RSS_EXPANDED)) {
                arrayList.add(new d());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new j(map));
            arrayList.add(new c());
            arrayList.add(new a());
            arrayList.add(new d());
            arrayList.add(new b());
            arrayList.add(new h());
            arrayList.add(new e());
            arrayList.add(new d());
        }
        this.f4286a = (k[]) arrayList.toArray(new k[arrayList.size()]);
    }

    public final l decodeRow(int i, a aVar, Map<DecodeHintType, ?> map) throws h {
        k[] kVarArr = this.f4286a;
        int i2 = 0;
        while (i2 < kVarArr.length) {
            try {
                return kVarArr[i2].decodeRow(i, aVar, map);
            } catch (k unused) {
                i2++;
            }
        }
        throw h.getNotFoundInstance();
    }

    public final void reset() {
        for (k reset : this.f4286a) {
            reset.reset();
        }
    }
}
