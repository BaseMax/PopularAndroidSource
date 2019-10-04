package com.bumptech.glide.e;

public final class b implements d, e {

    /* renamed from: a  reason: collision with root package name */
    private final e f2032a;

    /* renamed from: b  reason: collision with root package name */
    private d f2033b;
    private d c;

    public b(e eVar) {
        this.f2032a = eVar;
    }

    public final void setRequests(d dVar, d dVar2) {
        this.f2033b = dVar;
        this.c = dVar2;
    }

    public final void begin() {
        if (!this.f2033b.isRunning()) {
            this.f2033b.begin();
        }
    }

    public final void clear() {
        this.f2033b.clear();
        if (this.c.isRunning()) {
            this.c.clear();
        }
    }

    public final boolean isRunning() {
        return (this.f2033b.isFailed() ? this.c : this.f2033b).isRunning();
    }

    public final boolean isComplete() {
        return (this.f2033b.isFailed() ? this.c : this.f2033b).isComplete();
    }

    public final boolean isResourceSet() {
        return (this.f2033b.isFailed() ? this.c : this.f2033b).isResourceSet();
    }

    public final boolean isCleared() {
        return (this.f2033b.isFailed() ? this.c : this.f2033b).isCleared();
    }

    public final boolean isFailed() {
        return this.f2033b.isFailed() && this.c.isFailed();
    }

    public final void recycle() {
        this.f2033b.recycle();
        this.c.recycle();
    }

    public final boolean isEquivalentTo(d dVar) {
        if (dVar instanceof b) {
            b bVar = (b) dVar;
            if (this.f2033b.isEquivalentTo(bVar.f2033b) && this.c.isEquivalentTo(bVar.c)) {
                return true;
            }
        }
        return false;
    }

    private boolean a(d dVar) {
        return dVar.equals(this.f2033b) || (this.f2033b.isFailed() && dVar.equals(this.c));
    }

    public final void onRequestSuccess(d dVar) {
        e eVar = this.f2032a;
        if (eVar != null) {
            eVar.onRequestSuccess(this);
        }
    }

    public final void onRequestFailed(d dVar) {
        if (!dVar.equals(this.c)) {
            if (!this.c.isRunning()) {
                this.c.begin();
            }
            return;
        }
        e eVar = this.f2032a;
        if (eVar != null) {
            eVar.onRequestFailed(this);
        }
    }

    public final boolean canSetImage(d dVar) {
        e eVar = this.f2032a;
        return (eVar == null || eVar.canSetImage(this)) && a(dVar);
    }

    public final boolean canNotifyStatusChanged(d dVar) {
        e eVar = this.f2032a;
        return (eVar == null || eVar.canNotifyStatusChanged(this)) && a(dVar);
    }

    public final boolean canNotifyCleared(d dVar) {
        e eVar = this.f2032a;
        return (eVar == null || eVar.canNotifyCleared(this)) && a(dVar);
    }

    public final boolean isAnyResourceSet() {
        e eVar = this.f2032a;
        return (eVar != null && eVar.isAnyResourceSet()) || isResourceSet();
    }
}
