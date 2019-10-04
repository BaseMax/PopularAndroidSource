package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;

final class n extends a<ImageView> {
    e m;

    n(Picasso picasso, ImageView imageView, w wVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, e eVar, boolean z) {
        super(picasso, imageView, wVar, i, i2, i3, drawable, str, obj, z);
        this.m = eVar;
    }

    public final void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap != null) {
            ImageView imageView = (ImageView) this.c.get();
            if (imageView != null) {
                Bitmap bitmap2 = bitmap;
                Picasso.LoadedFrom loadedFrom2 = loadedFrom;
                t.a(imageView, this.f5254a.e, bitmap2, loadedFrom2, this.d, this.f5254a.m);
                e eVar = this.m;
                if (eVar != null) {
                    eVar.onSuccess();
                }
                return;
            }
            return;
        }
        throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[]{this}));
    }

    public final void error(Exception exc) {
        ImageView imageView = (ImageView) this.c.get();
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).stop();
            }
            if (this.g != 0) {
                imageView.setImageResource(this.g);
            } else if (this.h != null) {
                imageView.setImageDrawable(this.h);
            }
            e eVar = this.m;
            if (eVar != null) {
                eVar.onError(exc);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        super.a();
        if (this.m != null) {
            this.m = null;
        }
    }
}
