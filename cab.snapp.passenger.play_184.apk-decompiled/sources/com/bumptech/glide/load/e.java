package com.bumptech.glide.load;

import android.content.Context;
import com.bumptech.glide.load.b.v;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;

public final class e<T> implements j<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Collection<? extends j<T>> f2324a;

    @SafeVarargs
    public e(j<T>... jVarArr) {
        if (jVarArr.length != 0) {
            this.f2324a = Arrays.asList(jVarArr);
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }

    public e(Collection<? extends j<T>> collection) {
        if (!collection.isEmpty()) {
            this.f2324a = collection;
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }

    public final v<T> transform(Context context, v<T> vVar, int i, int i2) {
        v<T> vVar2 = vVar;
        for (j transform : this.f2324a) {
            v<T> transform2 = transform.transform(context, vVar2, i, i2);
            if (vVar2 != null && !vVar2.equals(vVar) && !vVar2.equals(transform2)) {
                vVar2.recycle();
            }
            vVar2 = transform2;
        }
        return vVar2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f2324a.equals(((e) obj).f2324a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2324a.hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        for (j updateDiskCacheKey : this.f2324a) {
            updateDiskCacheKey.updateDiskCacheKey(messageDigest);
        }
    }
}
