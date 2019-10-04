package com.farsitel.bazaar.app;

import android.content.Context;
import c.c.a.e.d.u.a;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.io.IOException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.BazaarHelper$getAdvertisingId$1", f = "BazaarHelper.kt", l = {206}, m = "invokeSuspend")
/* compiled from: BazaarHelper.kt */
final class BazaarHelper$getAdvertisingId$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ Context $context;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.b.d this$0;

    @d(c = "com.farsitel.bazaar.app.BazaarHelper$getAdvertisingId$1$1", f = "BazaarHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.app.BazaarHelper$getAdvertisingId$1$1  reason: invalid class name */
    /* compiled from: BazaarHelper.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ BazaarHelper$getAdvertisingId$1 this$0;

        {
            this.this$0 = r1;
        }

        public final b<h> a(Object obj, b<?> bVar) {
            j.b(bVar, "completion");
            AnonymousClass1 r0 = new AnonymousClass1(this.this$0, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass1) a(obj, (b) obj2)).d(h.f14579a);
        }

        public final Object d(Object obj) {
            h.c.a.b.a();
            if (this.label == 0) {
                e.a(obj);
                H h2 = this.p$;
                try {
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.this$0.$context);
                    j.a((Object) advertisingIdInfo, "AdvertisingIdClient.getAdvertisingIdInfo(context)");
                    String id = advertisingIdInfo.getId();
                    AdvertisingIdClient.Info advertisingIdInfo2 = AdvertisingIdClient.getAdvertisingIdInfo(this.this$0.$context);
                    j.a((Object) advertisingIdInfo2, "AdvertisingIdClient.getAdvertisingIdInfo(context)");
                    boolean isLimitAdTrackingEnabled = advertisingIdInfo2.isLimitAdTrackingEnabled();
                    a e2 = this.this$0.this$0.f4562f;
                    j.a((Object) id, "advertisingId");
                    e2.c(id);
                    this.this$0.this$0.f4562f.a(isLimitAdTrackingEnabled);
                } catch (IOException e3) {
                    c.c.a.c.c.a.f4699b.a(new Throwable("IOException in getting advertising ID", e3));
                } catch (IllegalStateException e4) {
                    c.c.a.c.c.a.f4699b.a(new Throwable("Illegal state exception in getting advertising ID", e4));
                } catch (GooglePlayServicesNotAvailableException e5) {
                    c.c.a.c.c.a.f4699b.a(new Throwable("Device has not play services for getting advertising ID", e5));
                } catch (SecurityException e6) {
                    c.c.a.c.c.a.f4699b.a(new Throwable("SecurityException for getting advertising ID", e6));
                }
                return h.f14579a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BazaarHelper$getAdvertisingId$1(c.c.a.b.d dVar, Context context, b bVar) {
        super(2, bVar);
        this.this$0 = dVar;
        this.$context = context;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        BazaarHelper$getAdvertisingId$1 bazaarHelper$getAdvertisingId$1 = new BazaarHelper$getAdvertisingId$1(this.this$0, this.$context, bVar);
        bazaarHelper$getAdvertisingId$1.p$ = (H) obj;
        return bazaarHelper$getAdvertisingId$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((BazaarHelper$getAdvertisingId$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            if (c.c.a.c.a.a.a(r4, this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return h.f14579a;
    }
}
