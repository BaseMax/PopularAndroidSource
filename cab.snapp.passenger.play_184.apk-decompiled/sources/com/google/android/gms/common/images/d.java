package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.av;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public final class d extends a {
    private WeakReference<ImageManager.a> d;

    public d(ImageManager.a aVar, Uri uri) {
        super(uri, 0);
        av.zzv(aVar);
        this.d = new WeakReference<>(aVar);
    }

    /* access modifiers changed from: protected */
    public final void a(Drawable drawable, boolean z, boolean z2, boolean z3) {
        if (!z2) {
            ImageManager.a aVar = (ImageManager.a) this.d.get();
            if (aVar != null) {
                aVar.onImageLoaded(this.f2918a.uri, drawable, z3);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        d dVar = (d) obj;
        ImageManager.a aVar = (ImageManager.a) this.d.get();
        ImageManager.a aVar2 = (ImageManager.a) dVar.d.get();
        return aVar2 != null && aVar != null && ag.equal(aVar2, aVar) && ag.equal(dVar.f2918a, this.f2918a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2918a});
    }
}
