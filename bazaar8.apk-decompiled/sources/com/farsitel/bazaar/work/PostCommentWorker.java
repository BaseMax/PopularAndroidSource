package com.farsitel.bazaar.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import b.H.d;
import c.c.a.p.C0676a;
import c.c.a.p.I;
import com.farsitel.bazaar.data.entity.EntityType;
import h.f.b.f;
import h.f.b.j;
import i.a.C1101f;

/* compiled from: PostCommentWorker.kt */
public final class PostCommentWorker extends Worker {

    /* renamed from: f  reason: collision with root package name */
    public static final a f12470f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public final Context f12471g;

    /* renamed from: h  reason: collision with root package name */
    public final WorkerParameters f12472h;

    /* renamed from: i  reason: collision with root package name */
    public final c.c.a.e.d.r.b.b f12473i;

    /* renamed from: j  reason: collision with root package name */
    public final I f12474j;

    /* compiled from: PostCommentWorker.kt */
    public static final class a {
        public a() {
        }

        public final d a(String str, int i2, String str2, long j2, EntityType entityType) {
            j.b(str, "entityId");
            j.b(entityType, "entityType");
            d.a aVar = new d.a();
            aVar.a("entityId", str);
            aVar.a("rateValue", i2);
            aVar.a("comment", str2);
            aVar.a("appVersion", j2);
            aVar.a("entityType", entityType.ordinal());
            d a2 = aVar.a();
            j.a((Object) a2, "Data.Builder()\n         …\n                .build()");
            return a2;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: PostCommentWorker.kt */
    public interface b extends C0676a {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PostCommentWorker(Context context, WorkerParameters workerParameters, c.c.a.e.d.r.b.b bVar, I i2) {
        super(context, workerParameters);
        j.b(context, "context");
        j.b(workerParameters, "params");
        j.b(bVar, "postCommentRepository");
        j.b(i2, "workManagerScheduler");
        this.f12471g = context;
        this.f12472h = workerParameters;
        this.f12473i = bVar;
        this.f12474j = i2;
    }

    public ListenableWorker.a k() {
        String a2 = d().a("entityId");
        int a3 = d().a("rateValue", 0);
        String a4 = d().a("comment");
        long a5 = d().a("appVersion", -1);
        EntityType entityType = EntityType.values()[d().a("entityType", 0)];
        if (a2 != null) {
            if (!a(a2, a3, a4, a5, entityType)) {
                this.f12474j.h();
            }
            ListenableWorker.a c2 = ListenableWorker.a.c();
            j.a((Object) c2, "Result.success()");
            return c2;
        }
        throw new IllegalStateException("use toInputData function to schedule this worker");
    }

    public final boolean a(String str, int i2, String str2, long j2, EntityType entityType) {
        j.b(str, "entityId");
        EntityType entityType2 = entityType;
        j.b(entityType2, "entityType");
        PostCommentWorker$sendComment$1 postCommentWorker$sendComment$1 = new PostCommentWorker$sendComment$1(this, str, i2, str2, j2, entityType2, null);
        return ((Boolean) C1101f.a(null, postCommentWorker$sendComment$1, 1, null)).booleanValue();
    }
}
