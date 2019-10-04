package c.c.a.b.d;

import android.content.Context;
import c.c.a.e.d.b.ba;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import g.a.a;

/* compiled from: AppManager_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4575a;

    /* renamed from: b  reason: collision with root package name */
    public final a<DownloadManager> f4576b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.c> f4577c;

    /* renamed from: d  reason: collision with root package name */
    public final a<ba> f4578d;

    /* renamed from: e  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f4579e;

    /* renamed from: f  reason: collision with root package name */
    public final a<d> f4580f;

    public c(a<Context> aVar, a<DownloadManager> aVar2, a<c.c.a.e.c> aVar3, a<ba> aVar4, a<c.c.a.e.d.u.a> aVar5, a<d> aVar6) {
        this.f4575a = aVar;
        this.f4576b = aVar2;
        this.f4577c = aVar3;
        this.f4578d = aVar4;
        this.f4579e = aVar5;
        this.f4580f = aVar6;
    }

    public static c a(a<Context> aVar, a<DownloadManager> aVar2, a<c.c.a.e.c> aVar3, a<ba> aVar4, a<c.c.a.e.d.u.a> aVar5, a<d> aVar6) {
        c cVar = new c(aVar, aVar2, aVar3, aVar4, aVar5, aVar6);
        return cVar;
    }

    public static b b(a<Context> aVar, a<DownloadManager> aVar2, a<c.c.a.e.c> aVar3, a<ba> aVar4, a<c.c.a.e.d.u.a> aVar5, a<d> aVar6) {
        b bVar = new b(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get(), aVar5.get(), aVar6.get());
        return bVar;
    }

    public b get() {
        return b(this.f4575a, this.f4576b, this.f4577c, this.f4578d, this.f4579e, this.f4580f);
    }
}
