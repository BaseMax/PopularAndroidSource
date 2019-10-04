package com.squareup.picasso;

import android.graphics.Bitmap;
import com.squareup.picasso.Picasso;

final class k extends a<Object> {
    private final Object m = new Object();
    private e n;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    k(Picasso picasso, w wVar, int i, int i2, Object obj, String str, e eVar) {
        super(picasso, null, wVar, i, i2, 0, null, str, obj, false);
        this.n = eVar;
    }

    /* access modifiers changed from: package-private */
    public final void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        e eVar = this.n;
        if (eVar != null) {
            eVar.onSuccess();
        }
    }

    /* access modifiers changed from: package-private */
    public final void error(Exception exc) {
        e eVar = this.n;
        if (eVar != null) {
            eVar.onError(exc);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        super.a();
        this.n = null;
    }

    /* access modifiers changed from: package-private */
    public final Object b() {
        return this.m;
    }
}
