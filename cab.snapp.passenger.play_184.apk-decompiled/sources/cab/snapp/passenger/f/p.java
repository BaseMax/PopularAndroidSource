package cab.snapp.passenger.f;

import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.snappnetwork.model.f;

public final class p {
    /* access modifiers changed from: private */
    public static /* synthetic */ void a(f fVar) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void b(f fVar) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void b(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void c(f fVar) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void c(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void d(f fVar) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void d(Throwable th) throws Exception {
    }

    public static void requestLogOrigin(d dVar, String str, double d, double d2) {
        if (dVar != null && str != null && !str.isEmpty()) {
            if (d != 0.0d || d2 != 0.0d) {
                dVar.logSmappOrigin(str, d, d2).singleOrError().subscribe($$Lambda$p$5Z2eGmPwzy0ZqykpoktOmrPXQ9E.INSTANCE, $$Lambda$p$UPL7lsYRcRGsX3mORjEsH0vzQzo.INSTANCE);
            }
        }
    }

    public static void requestLogDestination(d dVar, String str, double d, double d2) {
        if (dVar != null && str != null && !str.isEmpty()) {
            if (d != 0.0d || d2 != 0.0d) {
                dVar.logSmappDestination(str, d, d2).singleOrError().subscribe($$Lambda$p$w_dfGty44EB5HdPIgSFsVb0wD8o.INSTANCE, $$Lambda$p$7bxaKpQtI_du8vBQJxr4XwYNFPs.INSTANCE);
            }
        }
    }

    public static void requestLogSecondDestination(d dVar, String str, double d, double d2) {
        requestLogDestination(dVar, str, d, d2);
    }

    public static void requestLogSelectOriginItem(d dVar, String str) {
        if (dVar != null) {
            dVar.logSmappSelectedOriginItem(str).singleOrError().subscribe($$Lambda$p$ZkokSBCYEGVUXh2X6wWIoovoOw.INSTANCE, $$Lambda$p$ozMUnuoUnjXEz0uta77WxmNtsQ.INSTANCE);
        }
    }

    public static void requestLogSelectDestinationItem(d dVar, String str) {
        if (dVar != null) {
            dVar.logSmappSelectedDestinationItem(str).singleOrError().subscribe($$Lambda$p$XrYi9S9fsyCFUfdSP9ayGM5277o.INSTANCE, $$Lambda$p$m3ruBD2jFx2FdmIpc9g3AbU_KQ.INSTANCE);
        }
    }

    public static void requestLogSelectSecondDestinationItem(d dVar, String str) {
        requestLogSelectDestinationItem(dVar, str);
    }
}
