package com.farsitel.bazaar.work;

import androidx.work.ListenableWorker;
import c.c.a.e.d.p.a;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.EitherKt;
import h.c.b;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: ReportApplicationWorker.kt */
final class ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1 extends SuspendLambda implements c<H, b<? super ListenableWorker.a>, Object> {
    public final /* synthetic */ String $comment$inlined;
    public final /* synthetic */ String $packageName;
    public final /* synthetic */ String $selectedReason;
    public int label;
    public H p$;
    public final /* synthetic */ ReportApplicationWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1(String str, String str2, b bVar, ReportApplicationWorker reportApplicationWorker, String str3) {
        super(2, bVar);
        this.$packageName = str;
        this.$selectedReason = str2;
        this.this$0 = reportApplicationWorker;
        this.$comment$inlined = str3;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1 reportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1 = new ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1(this.$packageName, this.$selectedReason, bVar, this.this$0, this.$comment$inlined);
        reportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1.p$ = (H) obj;
        return reportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((ReportApplicationWorker$doWork$$inlined$ifNotNull$lambda$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            a a3 = this.this$0.f12481h;
            String str = this.$packageName;
            String str2 = this.$selectedReason;
            String str3 = this.$comment$inlined;
            this.label = 1;
            obj = a3.a(str, str2, str3, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Boolean) EitherKt.getOrDefault((Either) obj, h.c.b.a.a.a(false))).booleanValue() ? ListenableWorker.a.c() : ListenableWorker.a.b();
    }
}
