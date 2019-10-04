package com.google.android.gms.a;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.s;

public abstract class o<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f2558a;

    /* renamed from: b  reason: collision with root package name */
    private T f2559b;

    protected o(String str) {
        this.f2558a = str;
    }

    /* access modifiers changed from: protected */
    public final T a(Context context) throws p {
        if (this.f2559b == null) {
            ap.checkNotNull(context);
            Context remoteContext = s.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    this.f2559b = zze((IBinder) remoteContext.getClassLoader().loadClass(this.f2558a).newInstance());
                } catch (ClassNotFoundException e) {
                    throw new p("Could not load creator class.", e);
                } catch (InstantiationException e2) {
                    throw new p("Could not instantiate creator.", e2);
                } catch (IllegalAccessException e3) {
                    throw new p("Could not access creator.", e3);
                }
            } else {
                throw new p("Could not get remote context.");
            }
        }
        return this.f2559b;
    }

    /* access modifiers changed from: protected */
    public abstract T zze(IBinder iBinder);
}
