package com.google.android.gms.b;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.b.a;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.common.j;

final class b extends AsyncTask<Void, Void, Integer> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Context f2684a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ a.C0064a f2685b;

    b(Context context, a.C0064a aVar) {
        this.f2684a = context;
        this.f2685b = aVar;
    }

    private final Integer a() {
        int connectionStatusCode;
        try {
            a.installIfNeeded(this.f2684a);
            connectionStatusCode = 0;
        } catch (d e) {
            connectionStatusCode = e.getConnectionStatusCode();
        } catch (c e2) {
            connectionStatusCode = e2.errorCode;
        }
        return Integer.valueOf(connectionStatusCode);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        Integer num = (Integer) obj;
        if (num.intValue() == 0) {
            this.f2685b.onProviderInstalled();
            return;
        }
        j unused = a.f2682a;
        this.f2685b.onProviderInstallFailed(num.intValue(), j.zza(this.f2684a, num.intValue(), "pi"));
    }
}
