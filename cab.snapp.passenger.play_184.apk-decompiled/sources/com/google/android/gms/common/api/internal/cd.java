package com.google.android.gms.common.api.internal;

import com.google.android.gms.c.a;
import com.google.android.gms.c.f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;

final class cd implements a<Boolean, Void> {
    cd() {
    }

    public final /* synthetic */ Object then(f fVar) throws Exception {
        if (((Boolean) fVar.getResult()).booleanValue()) {
            return null;
        }
        throw new b(new Status(13, "listener already unregistered"));
    }
}
