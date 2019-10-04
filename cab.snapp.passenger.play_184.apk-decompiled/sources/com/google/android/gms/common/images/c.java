package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.av;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.zzbfk;
import java.lang.ref.WeakReference;

public final class c extends a {
    private WeakReference<ImageView> d;

    public c(ImageView imageView, int i) {
        super(null, i);
        av.zzv(imageView);
        this.d = new WeakReference<>(imageView);
    }

    public c(ImageView imageView, Uri uri) {
        super(uri, 0);
        av.zzv(imageView);
        this.d = new WeakReference<>(imageView);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ImageView imageView = (ImageView) this.d.get();
        ImageView imageView2 = (ImageView) ((c) obj).d.get();
        return (imageView2 == null || imageView == null || !ag.equal(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public final void a(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageView imageView = (ImageView) this.d.get();
        if (imageView != null) {
            boolean z4 = true;
            int i = 0;
            boolean z5 = !z2 && !z3;
            if (z5 && (imageView instanceof zzbfk)) {
                int zzakg = zzbfk.zzakg();
                if (this.f2919b != 0 && zzakg == this.f2919b) {
                    return;
                }
            }
            if (!this.c || z2 || z) {
                z4 = false;
            }
            Uri uri = null;
            if (z4) {
                Drawable drawable2 = imageView.getDrawable();
                if (drawable2 == null) {
                    drawable2 = null;
                } else if (drawable2 instanceof ee) {
                    drawable2 = ((ee) drawable2).zzake();
                }
                drawable = new ee(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable);
            if (imageView instanceof zzbfk) {
                if (z3) {
                    uri = this.f2918a.uri;
                }
                zzbfk.zzn(uri);
                if (z5) {
                    i = this.f2919b;
                }
                zzbfk.zzcd(i);
            }
            if (z4) {
                ((ee) drawable).startTransition(250);
            }
        }
    }
}
