package com.google.firebase.iid;

import android.os.Handler;
import android.os.Message;

final /* synthetic */ class m implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final l f4076a;

    m(l lVar) {
        this.f4076a = lVar;
    }

    public final boolean handleMessage(Message message) {
        return this.f4076a.a(message);
    }
}
