package c.e.c.a.a;

import android.content.Context;
import android.os.Bundle;
import c.e.a.b.d.d.r;
import c.e.c.a;
import c.e.c.c.d;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.FirebaseApp;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile a f11518a;

    /* renamed from: b  reason: collision with root package name */
    public final AppMeasurement f11519b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, Object> f11520c = new ConcurrentHashMap();

    public b(AppMeasurement appMeasurement) {
        r.a(appMeasurement);
        this.f11519b = appMeasurement;
    }

    public static a a(FirebaseApp firebaseApp, Context context, d dVar) {
        r.a(firebaseApp);
        r.a(context);
        r.a(dVar);
        r.a(context.getApplicationContext());
        if (f11518a == null) {
            synchronized (b.class) {
                if (f11518a == null) {
                    Bundle bundle = new Bundle(1);
                    if (firebaseApp.g()) {
                        dVar.a(a.class, c.f11521a, d.f11522a);
                        bundle.putBoolean("dataCollectionDefaultEnabled", firebaseApp.isDataCollectionDefaultEnabled());
                    }
                    f11518a = new b(AppMeasurement.a(context, bundle));
                }
            }
        }
        return f11518a;
    }

    public void logEvent(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (c.e.c.a.a.a.b.a(str) && c.e.c.a.a.a.b.a(str2, bundle) && c.e.c.a.a.a.b.a(str, str2, bundle)) {
            this.f11519b.logEventInternal(str, str2, bundle);
        }
    }

    public void a(String str, String str2, Object obj) {
        if (c.e.c.a.a.a.b.a(str) && c.e.c.a.a.a.b.a(str, str2)) {
            this.f11519b.a(str, str2, obj);
        }
    }

    public static final /* synthetic */ void a(c.e.c.c.a aVar) {
        boolean z = ((a) aVar.a()).f11509a;
        synchronized (b.class) {
            ((b) f11518a).f11519b.a(z);
        }
    }
}
