package com.google.zxing.c;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.b;
import com.google.zxing.c;
import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.h;
import java.util.Map;

public final class l extends p {

    /* renamed from: a  reason: collision with root package name */
    private final p f4288a = new e();

    public final com.google.zxing.l decodeRow(int i, a aVar, int[] iArr, Map<DecodeHintType, ?> map) throws h, d, c {
        return a(this.f4288a.decodeRow(i, aVar, iArr, map));
    }

    public final com.google.zxing.l decodeRow(int i, a aVar, Map<DecodeHintType, ?> map) throws h, d, c {
        return a(this.f4288a.decodeRow(i, aVar, map));
    }

    public final com.google.zxing.l decode(b bVar) throws h, d {
        return a(this.f4288a.decode(bVar));
    }

    public final com.google.zxing.l decode(b bVar, Map<DecodeHintType, ?> map) throws h, d {
        return a(this.f4288a.decode(bVar, map));
    }

    /* access modifiers changed from: package-private */
    public final BarcodeFormat a() {
        return BarcodeFormat.UPC_A;
    }

    /* access modifiers changed from: protected */
    public final int a(a aVar, int[] iArr, StringBuilder sb) throws h {
        return this.f4288a.a(aVar, iArr, sb);
    }

    private static com.google.zxing.l a(com.google.zxing.l lVar) throws d {
        String text = lVar.getText();
        if (text.charAt(0) == '0') {
            com.google.zxing.l lVar2 = new com.google.zxing.l(text.substring(1), null, lVar.getResultPoints(), BarcodeFormat.UPC_A);
            if (lVar.getResultMetadata() != null) {
                lVar2.putAllMetadata(lVar.getResultMetadata());
            }
            return lVar2;
        }
        throw d.getFormatInstance();
    }
}
