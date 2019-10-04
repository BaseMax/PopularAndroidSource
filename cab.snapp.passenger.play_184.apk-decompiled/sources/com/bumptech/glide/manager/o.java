package com.bumptech.glide.manager;

import com.bumptech.glide.e.a.i;
import com.bumptech.glide.g.k;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class o implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Set<i<?>> f2417a = Collections.newSetFromMap(new WeakHashMap());

    public final void track(i<?> iVar) {
        this.f2417a.add(iVar);
    }

    public final void untrack(i<?> iVar) {
        this.f2417a.remove(iVar);
    }

    public final void onStart() {
        for (T onStart : k.getSnapshot(this.f2417a)) {
            onStart.onStart();
        }
    }

    public final void onStop() {
        for (T onStop : k.getSnapshot(this.f2417a)) {
            onStop.onStop();
        }
    }

    public final void onDestroy() {
        for (T onDestroy : k.getSnapshot(this.f2417a)) {
            onDestroy.onDestroy();
        }
    }

    public final List<i<?>> getAll() {
        return k.getSnapshot(this.f2417a);
    }

    public final void clear() {
        this.f2417a.clear();
    }
}
