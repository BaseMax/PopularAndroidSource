package com.google.zxing;

import com.google.zxing.a.b;
import com.google.zxing.c.i;
import com.google.zxing.qrcode.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class g implements j {

    /* renamed from: a  reason: collision with root package name */
    private Map<DecodeHintType, ?> f4349a;

    /* renamed from: b  reason: collision with root package name */
    private j[] f4350b;

    public final l decode(b bVar) throws h {
        setHints(null);
        return a(bVar);
    }

    public final l decode(b bVar, Map<DecodeHintType, ?> map) throws h {
        setHints(map);
        return a(bVar);
    }

    public final l decodeWithState(b bVar) throws h {
        if (this.f4350b == null) {
            setHints(null);
        }
        return a(bVar);
    }

    public final void setHints(Map<DecodeHintType, ?> map) {
        Collection collection;
        this.f4349a = map;
        boolean z = true;
        boolean z2 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        if (map == null) {
            collection = null;
        } else {
            collection = (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        }
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (!collection.contains(BarcodeFormat.UPC_A) && !collection.contains(BarcodeFormat.UPC_E) && !collection.contains(BarcodeFormat.EAN_13) && !collection.contains(BarcodeFormat.EAN_8) && !collection.contains(BarcodeFormat.CODABAR) && !collection.contains(BarcodeFormat.CODE_39) && !collection.contains(BarcodeFormat.CODE_93) && !collection.contains(BarcodeFormat.CODE_128) && !collection.contains(BarcodeFormat.ITF) && !collection.contains(BarcodeFormat.RSS_14) && !collection.contains(BarcodeFormat.RSS_EXPANDED)) {
                z = false;
            }
            if (z && !z2) {
                arrayList.add(new i(map));
            }
            if (collection.contains(BarcodeFormat.QR_CODE)) {
                arrayList.add(new a());
            }
            if (collection.contains(BarcodeFormat.DATA_MATRIX)) {
                arrayList.add(new com.google.zxing.datamatrix.a());
            }
            if (collection.contains(BarcodeFormat.AZTEC)) {
                arrayList.add(new b());
            }
            if (collection.contains(BarcodeFormat.PDF_417)) {
                arrayList.add(new com.google.zxing.pdf417.b());
            }
            if (collection.contains(BarcodeFormat.MAXICODE)) {
                arrayList.add(new com.google.zxing.b.a());
            }
            if (z && z2) {
                arrayList.add(new i(map));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z2) {
                arrayList.add(new i(map));
            }
            arrayList.add(new a());
            arrayList.add(new com.google.zxing.datamatrix.a());
            arrayList.add(new b());
            arrayList.add(new com.google.zxing.pdf417.b());
            arrayList.add(new com.google.zxing.b.a());
            if (z2) {
                arrayList.add(new i(map));
            }
        }
        this.f4350b = (j[]) arrayList.toArray(new j[arrayList.size()]);
    }

    public final void reset() {
        j[] jVarArr = this.f4350b;
        if (jVarArr != null) {
            for (j reset : jVarArr) {
                reset.reset();
            }
        }
    }

    private l a(b bVar) throws h {
        j[] jVarArr = this.f4350b;
        if (jVarArr != null) {
            int length = jVarArr.length;
            int i = 0;
            while (i < length) {
                try {
                    return jVarArr[i].decode(bVar, this.f4349a);
                } catch (k unused) {
                    i++;
                }
            }
        }
        throw h.getNotFoundInstance();
    }
}
