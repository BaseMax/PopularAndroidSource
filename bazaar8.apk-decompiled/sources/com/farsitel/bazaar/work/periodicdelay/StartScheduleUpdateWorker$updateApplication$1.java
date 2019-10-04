package com.farsitel.bazaar.work.periodicdelay;

import android.content.ComponentName;
import android.content.Intent;
import androidx.lifecycle.LiveData;
import c.c.a.e.d.b.E;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.periodicdelay.StartScheduleUpdateWorker$updateApplication$1", f = "StartScheduleUpdateWorker.kt", l = {48}, m = "invokeSuspend")
/* compiled from: StartScheduleUpdateWorker.kt */
final class StartScheduleUpdateWorker$updateApplication$1 extends SuspendLambda implements c<H, b<? super ComponentName>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ StartScheduleUpdateWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public StartScheduleUpdateWorker$updateApplication$1(StartScheduleUpdateWorker startScheduleUpdateWorker, b bVar) {
        super(2, bVar);
        this.this$0 = startScheduleUpdateWorker;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        StartScheduleUpdateWorker$updateApplication$1 startScheduleUpdateWorker$updateApplication$1 = new StartScheduleUpdateWorker$updateApplication$1(this.this$0, bVar);
        startScheduleUpdateWorker$updateApplication$1.p$ = (H) obj;
        return startScheduleUpdateWorker$updateApplication$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((StartScheduleUpdateWorker$updateApplication$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        ComponentName componentName;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            E b2 = this.this$0.f12502g;
            this.label = 1;
            obj = b2.a(this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        List list = (List) ((LiveData) obj).a();
        if (list != null) {
            Intent intent = new Intent(this.this$0.f12501f, DownloadService.class);
            DownloadService.a aVar = DownloadService.f12108b;
            j.a((Object) list, "upgradableApps");
            intent.putExtras(aVar.a((List<UpgradableApp>) list));
            intent.setAction("BATCH_DOWNLOAD");
            componentName = this.this$0.f12501f.startService(intent);
        } else {
            componentName = null;
        }
        return componentName;
    }
}
