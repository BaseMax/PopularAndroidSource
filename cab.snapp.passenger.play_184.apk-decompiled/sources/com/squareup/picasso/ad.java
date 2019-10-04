package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;

final class ad extends a<ac> {
    ad(Picasso picasso, ac acVar, w wVar, int i, int i2, Drawable drawable, String str, Object obj, int i3) {
        super(picasso, acVar, wVar, i, i2, i3, drawable, str, obj, false);
    }

    /* access modifiers changed from: package-private */
    public final void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap != null) {
            ac acVar = (ac) b();
            if (acVar != null) {
                acVar.onBitmapLoaded(bitmap, loadedFrom);
                if (bitmap.isRecycled()) {
                    throw new IllegalStateException("Target callback must not recycle bitmap!");
                }
                return;
            }
            return;
        }
        throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[]{this}));
    }

    /* access modifiers changed from: package-private */
    public final void error(Exception exc) {
        ac acVar = (ac) b();
        if (acVar != null) {
            if (this.g != 0) {
                acVar.onBitmapFailed(exc, this.f5254a.e.getResources().getDrawable(this.g));
                return;
            }
            acVar.onBitmapFailed(exc, this.h);
        }
    }
}
