package com.google.android.gms.internal;

final class ls extends ih {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ lr f3354a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ls(lr lrVar, jx jxVar) {
        super(jxVar);
        this.f3354a = lrVar;
    }

    public final void run() {
        lr lrVar = this.f3354a;
        lrVar.zzve();
        if (lrVar.isConnected()) {
            lrVar.zzawy().zzazj().log("Inactivity, disconnecting from the service");
            lrVar.disconnect();
        }
    }
}
