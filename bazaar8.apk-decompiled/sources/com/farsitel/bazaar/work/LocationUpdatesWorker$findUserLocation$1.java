package com.farsitel.bazaar.work;

import androidx.work.ListenableWorker;
import c.c.a.c.c.a;
import com.farsitel.bazaar.data.entity.Place;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.LocationUpdatesWorker$findUserLocation$1", f = "LocationUpdatesWorker.kt", l = {}, m = "invokeSuspend")
/* compiled from: LocationUpdatesWorker.kt */
final class LocationUpdatesWorker$findUserLocation$1 extends SuspendLambda implements c<H, b<? super ListenableWorker.a>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ LocationUpdatesWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LocationUpdatesWorker$findUserLocation$1(LocationUpdatesWorker locationUpdatesWorker, b bVar) {
        super(2, bVar);
        this.this$0 = locationUpdatesWorker;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        LocationUpdatesWorker$findUserLocation$1 locationUpdatesWorker$findUserLocation$1 = new LocationUpdatesWorker$findUserLocation$1(this.this$0, bVar);
        locationUpdatesWorker$findUserLocation$1.p$ = (H) obj;
        return locationUpdatesWorker$findUserLocation$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((LocationUpdatesWorker$findUserLocation$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            H h2 = this.p$;
            a.a(a.f4699b, "Start finding user's location", null, null, 6, null);
            try {
                Place a2 = this.this$0.f12459h.a();
                if (a2 != null) {
                    a aVar = a.f4699b;
                    a.a(aVar, "User's location has been updated [place = " + a2 + ']', null, null, 6, null);
                }
                return ListenableWorker.a.c();
            } catch (Exception e2) {
                a aVar2 = a.f4699b;
                aVar2.a(new Throwable("Unable to fetch user's location. [error = " + e2.getMessage() + ']', e2));
                return ListenableWorker.a.a();
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
