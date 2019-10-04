package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import c.e.c.a.a.a;
import c.e.c.b.e;
import c.e.c.b.i;
import c.e.c.b.j;
import c.e.c.b.q;
import c.e.c.c.d;
import com.google.firebase.FirebaseApp;
import java.util.Collections;
import java.util.List;

@Keep
public class AnalyticsConnectorRegistrar implements j {
    @SuppressLint({"MissingPermission"})
    @Keep
    public List<e<?>> getComponents() {
        e.a<a> a2 = e.a(a.class);
        a2.a(q.a(FirebaseApp.class));
        a2.a(q.a(Context.class));
        a2.a(q.a(d.class));
        a2.a((i<a>) c.e.c.a.a.a.a.f11511a);
        a2.c();
        return Collections.singletonList(a2.b());
    }
}
