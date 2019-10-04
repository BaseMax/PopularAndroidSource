package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.b;

enum c {
    ;

    /* access modifiers changed from: package-private */
    public abstract boolean a(int i, int i2);

    /* access modifiers changed from: package-private */
    public final void a(b bVar, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (a(i2, i3)) {
                    bVar.flip(i3, i2);
                }
            }
        }
    }
}
