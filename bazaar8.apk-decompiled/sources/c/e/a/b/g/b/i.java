package c.e.a.b.g.b;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import c.e.a.b.d.a.d;
import c.e.a.b.d.d.C0782e;
import c.e.a.b.d.d.C0785h;
import c.e.a.b.d.e;
import com.google.android.gms.common.Feature;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.1.0 */
public final class i extends C0785h<e> {
    public i(Context context, Looper looper, C0782e eVar, d.a aVar, d.b bVar) {
        super(context, looper, 126, eVar, aVar, bVar);
    }

    public final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        if (queryLocalInterface instanceof e) {
            return (e) queryLocalInterface;
        }
        return new d(iBinder);
    }

    public final int e() {
        return e.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    public final Feature[] l() {
        return l.f10102b;
    }

    public final String s() {
        return "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService";
    }

    public final String t() {
        return "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START";
    }
}
