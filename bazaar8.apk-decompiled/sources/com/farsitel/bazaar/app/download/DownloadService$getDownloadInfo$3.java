package com.farsitel.bazaar.app.download;

import c.c.a.c.a.a;
import c.c.a.e.d.i.C0398c;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.data.entity.DownloadInfo;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.download.DownloadService$getDownloadInfo$3", f = "DownloadService.kt", l = {393}, m = "invokeSuspend")
/* compiled from: DownloadService.kt */
final class DownloadService$getDownloadInfo$3 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ AppDownloaderModel $appDownloadModel;
    public final /* synthetic */ DownloadService$getDownloadInfo$2 $failedDownloadInfo$2;
    public final /* synthetic */ DownloadService$getDownloadInfo$1 $successDownloadInfo$1;
    public int label;
    public H p$;
    public final /* synthetic */ DownloadService this$0;

    @d(c = "com.farsitel.bazaar.app.download.DownloadService$getDownloadInfo$3$1", f = "DownloadService.kt", l = {396, 400}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.app.download.DownloadService$getDownloadInfo$3$1  reason: invalid class name */
    /* compiled from: DownloadService.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends DownloadInfo>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ DownloadService$getDownloadInfo$3 this$0;

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
            Object a2 = h.c.a.b.a();
            int i2 = this.label;
            if (i2 == 0) {
                e.a(obj);
                H h2 = this.p$;
                if (this.this$0.$appDownloadModel.isFree()) {
                    C0398c c2 = this.this$0.this$0.c();
                    String packageName = this.this$0.$appDownloadModel.getPackageName();
                    String referrer = this.this$0.$appDownloadModel.getReferrer();
                    this.label = 1;
                    obj = c2.a(packageName, referrer, this);
                    if (obj == a2) {
                        return a2;
                    }
                } else {
                    C0398c c3 = this.this$0.this$0.c();
                    String packageName2 = this.this$0.$appDownloadModel.getPackageName();
                    String referrer2 = this.this$0.$appDownloadModel.getReferrer();
                    this.label = 2;
                    obj = c3.b(packageName2, referrer2, this);
                    if (obj == a2) {
                        return a2;
                    }
                }
            } else if (i2 == 1 || i2 == 2) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return (Either) obj;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadService$getDownloadInfo$3(DownloadService downloadService, AppDownloaderModel appDownloaderModel, DownloadService$getDownloadInfo$1 downloadService$getDownloadInfo$1, DownloadService$getDownloadInfo$2 downloadService$getDownloadInfo$2, b bVar) {
        super(2, bVar);
        this.this$0 = downloadService;
        this.$appDownloadModel = appDownloaderModel;
        this.$successDownloadInfo$1 = downloadService$getDownloadInfo$1;
        this.$failedDownloadInfo$2 = downloadService$getDownloadInfo$2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        DownloadService$getDownloadInfo$3 downloadService$getDownloadInfo$3 = new DownloadService$getDownloadInfo$3(this.this$0, this.$appDownloadModel, this.$successDownloadInfo$1, this.$failedDownloadInfo$2, bVar);
        downloadService$getDownloadInfo$3.p$ = (H) obj;
        return downloadService$getDownloadInfo$3;
    }

    public final Object b(Object obj, Object obj2) {
        return ((DownloadService$getDownloadInfo$3) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        if (either instanceof Either.Success) {
            this.$successDownloadInfo$1.a((DownloadInfo) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            this.$failedDownloadInfo$2.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
