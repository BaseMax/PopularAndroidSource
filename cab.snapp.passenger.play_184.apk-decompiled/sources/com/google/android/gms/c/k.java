package com.google.android.gms.c;

final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f2694a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ j f2695b;

    k(j jVar, f fVar) {
        this.f2695b = jVar;
        this.f2694a = fVar;
    }

    public final void run() {
        try {
            this.f2695b.f2693b.setResult(this.f2695b.f2692a.then(this.f2694a));
        } catch (e e) {
            if (e.getCause() instanceof Exception) {
                this.f2695b.f2693b.setException((Exception) e.getCause());
            } else {
                this.f2695b.f2693b.setException(e);
            }
        } catch (Exception e2) {
            this.f2695b.f2693b.setException(e2);
        }
    }
}
