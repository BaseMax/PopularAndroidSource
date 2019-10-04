package c.c.a.a.b;

import android.content.Context;
import android.os.Bundle;
import c.c.a.a.b.c;
import com.google.firebase.analytics.FirebaseAnalytics;
import h.c.b;
import h.f.b.j;
import h.h;
import kotlin.Pair;

/* compiled from: FirebaseAnalyticsTracker.kt */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public FirebaseAnalytics f4487a;

    public boolean a(c.c.a.a.a.a aVar) {
        j.b(aVar, "event");
        return c.a.a(this, aVar);
    }

    public void a(Context context) {
        j.b(context, "context");
        FirebaseAnalytics instance = FirebaseAnalytics.getInstance(context);
        j.a((Object) instance, "FirebaseAnalytics.getInstance(context)");
        this.f4487a = instance;
    }

    public Object a(c.c.a.a.a.a aVar, b<? super h> bVar) {
        Pair<String, Bundle> a2 = aVar.a();
        FirebaseAnalytics firebaseAnalytics = this.f4487a;
        if (firebaseAnalytics != null) {
            firebaseAnalytics.a(a2.c(), a2.d());
            return h.f14579a;
        }
        j.c("firebaseAnalytics");
        throw null;
    }

    public final void a(String str, Bundle bundle) {
        j.b(str, "event");
        FirebaseAnalytics firebaseAnalytics = this.f4487a;
        if (firebaseAnalytics != null) {
            firebaseAnalytics.a(str, bundle);
        } else {
            j.c("firebaseAnalytics");
            throw null;
        }
    }
}
