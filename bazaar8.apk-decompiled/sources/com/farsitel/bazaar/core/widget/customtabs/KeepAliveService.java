package com.farsitel.bazaar.core.widget.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import h.f.b.f;
import h.f.b.j;

/* compiled from: KeepAliveService.kt */
public final class KeepAliveService extends Service {

    /* renamed from: a  reason: collision with root package name */
    public static final Binder f12194a = new Binder();

    /* renamed from: b  reason: collision with root package name */
    public static final a f12195b = new a(null);

    /* compiled from: KeepAliveService.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public IBinder onBind(Intent intent) {
        j.b(intent, "intent");
        return f12194a;
    }
}
