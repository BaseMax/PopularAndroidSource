package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.ap;

final class bh extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ bg f2793a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public bh(bg bgVar, Looper looper) {
        super(looper);
        this.f2793a = bgVar;
    }

    public final void handleMessage(Message message) {
        boolean z = true;
        if (message.what != 1) {
            z = false;
        }
        ap.checkArgument(z);
        bg bgVar = this.f2793a;
        bj bjVar = (bj) message.obj;
        L l = bgVar.f2791a;
        if (l == null) {
            bjVar.zzahz();
            return;
        }
        try {
            bjVar.zzu(l);
        } catch (RuntimeException e) {
            bjVar.zzahz();
            throw e;
        }
    }
}
