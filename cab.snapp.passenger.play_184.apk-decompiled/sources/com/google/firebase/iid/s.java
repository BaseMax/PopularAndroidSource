package com.google.firebase.iid;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.c.g;

abstract class s<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f4083a;

    /* renamed from: b  reason: collision with root package name */
    final g<T> f4084b = new g<>();
    final int c;
    final Bundle d;

    s(int i, int i2, Bundle bundle) {
        this.f4083a = i;
        this.c = i2;
        this.d = bundle;
    }

    /* access modifiers changed from: package-private */
    public abstract void a(Bundle bundle);

    /* access modifiers changed from: package-private */
    public final void a(t tVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(tVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
        }
        this.f4084b.setException(tVar);
    }

    /* access modifiers changed from: package-private */
    public final void a(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
        }
        this.f4084b.setResult(t);
    }

    /* access modifiers changed from: package-private */
    public abstract boolean a();

    public String toString() {
        int i = this.c;
        int i2 = this.f4083a;
        boolean a2 = a();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(a2);
        sb.append("}");
        return sb.toString();
    }
}
