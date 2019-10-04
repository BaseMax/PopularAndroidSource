package com.google.zxing.c;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.common.a;
import com.google.zxing.h;
import com.google.zxing.k;
import com.google.zxing.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class j extends k {

    /* renamed from: a  reason: collision with root package name */
    private final p[] f4287a;

    public j(Map<DecodeHintType, ?> map) {
        Collection collection;
        if (map == null) {
            collection = null;
        } else {
            collection = (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        }
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(BarcodeFormat.EAN_13)) {
                arrayList.add(new e());
            } else if (collection.contains(BarcodeFormat.UPC_A)) {
                arrayList.add(new l());
            }
            if (collection.contains(BarcodeFormat.EAN_8)) {
                arrayList.add(new f());
            }
            if (collection.contains(BarcodeFormat.UPC_E)) {
                arrayList.add(new q());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new e());
            arrayList.add(new f());
            arrayList.add(new q());
        }
        this.f4287a = (p[]) arrayList.toArray(new p[arrayList.size()]);
    }

    public final l decodeRow(int i, a aVar, Map<DecodeHintType, ?> map) throws h {
        Collection collection;
        boolean z;
        int[] a2 = p.a(aVar);
        p[] pVarArr = this.f4287a;
        int i2 = 0;
        while (i2 < pVarArr.length) {
            try {
                l decodeRow = pVarArr[i2].decodeRow(i, aVar, a2, map);
                boolean z2 = decodeRow.getBarcodeFormat() == BarcodeFormat.EAN_13 && decodeRow.getText().charAt(0) == '0';
                if (map == null) {
                    collection = null;
                } else {
                    collection = (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
                }
                if (collection != null) {
                    if (!collection.contains(BarcodeFormat.UPC_A)) {
                        z = false;
                        if (z2 || !z) {
                            return decodeRow;
                        }
                        l lVar = new l(decodeRow.getText().substring(1), decodeRow.getRawBytes(), decodeRow.getResultPoints(), BarcodeFormat.UPC_A);
                        lVar.putAllMetadata(decodeRow.getResultMetadata());
                        return lVar;
                    }
                }
                z = true;
                if (z2) {
                }
                return decodeRow;
            } catch (k unused) {
                i2++;
            }
        }
        throw h.getNotFoundInstance();
    }

    public final void reset() {
        for (p reset : this.f4287a) {
            reset.reset();
        }
    }
}
