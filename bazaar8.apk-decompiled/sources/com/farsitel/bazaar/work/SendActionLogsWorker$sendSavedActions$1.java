package com.farsitel.bazaar.work;

import androidx.work.ListenableWorker;
import c.c.a.c.c.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.SendActionLogsWorker$sendSavedActions$1", f = "SendActionLogsWorker.kt", l = {24}, m = "invokeSuspend")
/* compiled from: SendActionLogsWorker.kt */
final class SendActionLogsWorker$sendSavedActions$1 extends SuspendLambda implements c<H, b<? super ListenableWorker.a>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ SendActionLogsWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SendActionLogsWorker$sendSavedActions$1(SendActionLogsWorker sendActionLogsWorker, b bVar) {
        super(2, bVar);
        this.this$0 = sendActionLogsWorker;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SendActionLogsWorker$sendSavedActions$1 sendActionLogsWorker$sendSavedActions$1 = new SendActionLogsWorker$sendSavedActions$1(this.this$0, bVar);
        sendActionLogsWorker$sendSavedActions$1.p$ = (H) obj;
        return sendActionLogsWorker$sendSavedActions$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SendActionLogsWorker$sendSavedActions$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        ListenableWorker.a aVar;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a.a(a.f4699b, "Start sending saved action logs", null, null, 6, null);
            c.c.a.a.b.a.a.a a3 = this.this$0.f12489h;
            this.label = 1;
            obj = a3.a((b<? super Boolean>) this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            try {
                e.a(obj);
            } catch (Exception e2) {
                a.f4699b.b(new Throwable("Exception happened while sending saved action logs.", e2));
                aVar = ListenableWorker.a.b();
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (((Boolean) obj).booleanValue()) {
            aVar = ListenableWorker.a.c();
        } else {
            a.f4699b.b(new Throwable("Unable to send saved action logs."));
            aVar = ListenableWorker.a.b();
        }
        return aVar;
    }
}
