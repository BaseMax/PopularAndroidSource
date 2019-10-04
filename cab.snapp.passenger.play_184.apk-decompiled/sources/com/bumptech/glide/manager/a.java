package com.bumptech.glide.manager;

import com.bumptech.glide.g.k;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

final class a implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Set<i> f2405a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private boolean f2406b;
    private boolean c;

    a() {
    }

    public final void addListener(i iVar) {
        this.f2405a.add(iVar);
        if (this.c) {
            iVar.onDestroy();
        } else if (this.f2406b) {
            iVar.onStart();
        } else {
            iVar.onStop();
        }
    }

    public final void removeListener(i iVar) {
        this.f2405a.remove(iVar);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.f2406b = true;
        for (T onStart : k.getSnapshot(this.f2405a)) {
            onStart.onStart();
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        this.f2406b = false;
        for (T onStop : k.getSnapshot(this.f2405a)) {
            onStop.onStop();
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        this.c = true;
        for (T onDestroy : k.getSnapshot(this.f2405a)) {
            onDestroy.onDestroy();
        }
    }
}
