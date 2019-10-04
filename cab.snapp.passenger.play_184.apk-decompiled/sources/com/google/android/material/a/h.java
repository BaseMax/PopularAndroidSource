package com.google.android.material.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;

public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final SimpleArrayMap<String, i> f3769a = new SimpleArrayMap<>();

    public final boolean hasTiming(String str) {
        return this.f3769a.get(str) != null;
    }

    public final i getTiming(String str) {
        if (hasTiming(str)) {
            return this.f3769a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public final void setTiming(String str, i iVar) {
        this.f3769a.put(str, iVar);
    }

    public final long getTotalDuration() {
        int size = this.f3769a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            i valueAt = this.f3769a.valueAt(i);
            j = Math.max(j, valueAt.getDelay() + valueAt.getDuration());
        }
        return j;
    }

    public static h createFromAttribute(Context context, TypedArray typedArray, int i) {
        if (typedArray.hasValue(i)) {
            int resourceId = typedArray.getResourceId(i, 0);
            if (resourceId != 0) {
                return createFromResource(context, resourceId);
            }
        }
        return null;
    }

    public static h createFromResource(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return a(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return a(arrayList);
        } catch (Exception unused) {
            new StringBuilder("Can't load animation resource ID #0x").append(Integer.toHexString(i));
            return null;
        }
    }

    private static h a(List<Animator> list) {
        h hVar = new h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(hVar, list.get(i));
        }
        return hVar;
    }

    private static void a(h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.setTiming(objectAnimator.getPropertyName(), i.a(objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: ".concat(String.valueOf(animator)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f3769a.equals(((h) obj).f3769a);
    }

    public final int hashCode() {
        return this.f3769a.hashCode();
    }

    public final String toString() {
        return 10 + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f3769a + "}\n";
    }
}
