package com.bumptech.glide.e;

public final class k implements d, e {

    /* renamed from: a  reason: collision with root package name */
    private final e f2050a;

    /* renamed from: b  reason: collision with root package name */
    private d f2051b;
    private d c;
    private boolean d;

    k() {
        this(null);
    }

    public k(e eVar) {
        this.f2050a = eVar;
    }

    public final void setRequests(d dVar, d dVar2) {
        this.f2051b = dVar;
        this.c = dVar2;
    }

    public final void onRequestSuccess(d dVar) {
        if (!dVar.equals(this.c)) {
            e eVar = this.f2050a;
            if (eVar != null) {
                eVar.onRequestSuccess(this);
            }
            if (!this.c.isComplete()) {
                this.c.clear();
            }
        }
    }

    public final void onRequestFailed(d dVar) {
        if (dVar.equals(this.f2051b)) {
            e eVar = this.f2050a;
            if (eVar != null) {
                eVar.onRequestFailed(this);
            }
        }
    }

    public final void begin() {
        this.d = true;
        if (!this.f2051b.isComplete() && !this.c.isRunning()) {
            this.c.begin();
        }
        if (this.d && !this.f2051b.isRunning()) {
            this.f2051b.begin();
        }
    }

    public final void clear() {
        this.d = false;
        this.c.clear();
        this.f2051b.clear();
    }

    public final boolean isRunning() {
        return this.f2051b.isRunning();
    }

    public final boolean isComplete() {
        return this.f2051b.isComplete() || this.c.isComplete();
    }

    public final boolean isResourceSet() {
        return this.f2051b.isResourceSet() || this.c.isResourceSet();
    }

    public final boolean isCleared() {
        return this.f2051b.isCleared();
    }

    public final boolean isFailed() {
        return this.f2051b.isFailed();
    }

    public final void recycle() {
        this.f2051b.recycle();
        this.c.recycle();
    }

    public final boolean isEquivalentTo(d dVar) {
        if (dVar instanceof k) {
            k kVar = (k) dVar;
            d dVar2 = this.f2051b;
            if (dVar2 != null ? dVar2.isEquivalentTo(kVar.f2051b) : kVar.f2051b == null) {
                d dVar3 = this.c;
                d dVar4 = kVar.c;
                if (dVar3 != null ? dVar3.isEquivalentTo(dVar4) : dVar4 == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean canSetImage(d dVar) {
        e eVar = this.f2050a;
        return (eVar == null || eVar.canSetImage(this)) && (dVar.equals(this.f2051b) || !this.f2051b.isResourceSet());
    }

    public final boolean canNotifyStatusChanged(d dVar) {
        e eVar = this.f2050a;
        return (eVar == null || eVar.canNotifyStatusChanged(this)) && dVar.equals(this.f2051b) && !isAnyResourceSet();
    }

    public final boolean canNotifyCleared(d dVar) {
        e eVar = this.f2050a;
        return (eVar == null || eVar.canNotifyCleared(this)) && dVar.equals(this.f2051b);
    }

    public final boolean isAnyResourceSet() {
        e eVar = this.f2050a;
        return (eVar != null && eVar.isAnyResourceSet()) || isResourceSet();
    }
}
