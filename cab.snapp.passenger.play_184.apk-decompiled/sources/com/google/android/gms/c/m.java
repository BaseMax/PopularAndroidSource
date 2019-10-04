package com.google.android.gms.c;

final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f2698a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ l f2699b;

    m(l lVar, f fVar) {
        this.f2699b = lVar;
        this.f2698a = fVar;
    }

    public final void run() {
        try {
            f fVar = (f) this.f2699b.f2697b.then(this.f2698a);
            if (fVar == null) {
                this.f2699b.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            fVar.addOnSuccessListener(h.f2687a, this.f2699b);
            fVar.addOnFailureListener(h.f2687a, (c) this.f2699b);
        } catch (e e) {
            if (e.getCause() instanceof Exception) {
                this.f2699b.c.setException((Exception) e.getCause());
            } else {
                this.f2699b.c.setException(e);
            }
        } catch (Exception e2) {
            this.f2699b.c.setException(e2);
        }
    }
}
