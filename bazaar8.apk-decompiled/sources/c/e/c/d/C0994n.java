package c.e.c.d;

import android.os.Bundle;
import android.util.Log;
import c.e.a.b.j.h;
import com.google.firebase.iid.zzak;

/* renamed from: c.e.c.d.n  reason: case insensitive filesystem */
public abstract class C0994n<T> {

    /* renamed from: a  reason: collision with root package name */
    public final int f11660a;

    /* renamed from: b  reason: collision with root package name */
    public final h<T> f11661b = new h<>();

    /* renamed from: c  reason: collision with root package name */
    public final int f11662c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f11663d;

    public C0994n(int i2, int i3, Bundle bundle) {
        this.f11660a = i2;
        this.f11662c = i3;
        this.f11663d = bundle;
    }

    public abstract void a(Bundle bundle);

    public final void a(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f11661b.a(t);
    }

    public abstract boolean a();

    public String toString() {
        int i2 = this.f11662c;
        int i3 = this.f11660a;
        boolean a2 = a();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i2);
        sb.append(" id=");
        sb.append(i3);
        sb.append(" oneWay=");
        sb.append(a2);
        sb.append("}");
        return sb.toString();
    }

    public final void a(zzak zzak) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzak);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f11661b.a((Exception) zzak);
    }
}
