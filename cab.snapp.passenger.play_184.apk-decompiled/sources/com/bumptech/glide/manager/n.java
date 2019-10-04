package com.bumptech.glide.manager;

import com.bumptech.glide.e.d;
import com.bumptech.glide.g.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final Set<d> f2415a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private final List<d> f2416b = new ArrayList();
    private boolean c;

    public final void runRequest(d dVar) {
        this.f2415a.add(dVar);
        if (!this.c) {
            dVar.begin();
            return;
        }
        dVar.clear();
        this.f2416b.add(dVar);
    }

    public final boolean clearRemoveAndRecycle(d dVar) {
        return a(dVar, true);
    }

    private boolean a(d dVar, boolean z) {
        boolean z2 = true;
        if (dVar == null) {
            return true;
        }
        boolean remove = this.f2415a.remove(dVar);
        if (!this.f2416b.remove(dVar) && !remove) {
            z2 = false;
        }
        if (z2) {
            dVar.clear();
            if (z) {
                dVar.recycle();
            }
        }
        return z2;
    }

    public final boolean isPaused() {
        return this.c;
    }

    public final void pauseRequests() {
        this.c = true;
        for (T t : k.getSnapshot(this.f2415a)) {
            if (t.isRunning()) {
                t.clear();
                this.f2416b.add(t);
            }
        }
    }

    public final void pauseAllRequests() {
        this.c = true;
        for (T t : k.getSnapshot(this.f2415a)) {
            if (t.isRunning() || t.isComplete()) {
                t.clear();
                this.f2416b.add(t);
            }
        }
    }

    public final void resumeRequests() {
        this.c = false;
        for (T t : k.getSnapshot(this.f2415a)) {
            if (!t.isComplete() && !t.isRunning()) {
                t.begin();
            }
        }
        this.f2416b.clear();
    }

    public final void clearRequests() {
        for (T a2 : k.getSnapshot(this.f2415a)) {
            a(a2, false);
        }
        this.f2416b.clear();
    }

    public final void restartRequests() {
        for (T t : k.getSnapshot(this.f2415a)) {
            if (!t.isComplete() && !t.isCleared()) {
                t.clear();
                if (!this.c) {
                    t.begin();
                } else {
                    this.f2416b.add(t);
                }
            }
        }
    }

    public final String toString() {
        return super.toString() + "{numRequests=" + this.f2415a.size() + ", isPaused=" + this.c + "}";
    }
}
