package com.yandex.metrica.impl.ob;

import android.content.Context;

public class lq extends mb {
    public lq(Context context, String str, t tVar, lz lzVar) {
        super(context, str, tVar, lzVar);
    }

    /* access modifiers changed from: package-private */
    public void a(ma maVar) {
        super.a(maVar);
        if (maVar.p == null) {
            h.a().a((Class<? extends j>) q.class);
        } else {
            h.a().b((j) new q(maVar.p));
        }
    }
}
