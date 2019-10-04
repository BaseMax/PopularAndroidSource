package c.c.a.h.b;

import android.content.Context;
import c.c.a.d.d.e;
import c.c.a.e.d.h.e.a.a.n;
import c.c.a.e.d.i.q;
import c.c.a.e.d.i.r;
import c.c.a.e.d.i.y;
import c.c.a.e.g.b;
import c.c.a.e.h.a.c;
import c.c.a.e.h.a.f;
import c.c.a.e.h.b.a;
import c.c.a.i.d;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import com.farsitel.bazaar.data.feature.download.Downloader;
import h.f.b.j;
import j.C1136c;
import j.E;
import j.I;
import java.io.File;
import java.util.concurrent.TimeUnit;
import okhttp3.logging.HttpLoggingInterceptor;

/* compiled from: NetworkModule.kt */
public final class Ya {
    public final long a() {
        return 10485760;
    }

    public final File a(Context context) {
        j.b(context, "context");
        return new File(context.getFilesDir(), "cache");
    }

    public final HttpLoggingInterceptor b() {
        return new HttpLoggingInterceptor();
    }

    public final y c() {
        return new y();
    }

    public final c a(File file, long j2) {
        j.b(file, "cacheFile");
        return new c(file, j2);
    }

    public final r b(Context context) {
        j.b(context, "context");
        return new e(context);
    }

    public final f a(c cVar) {
        j.b(cVar, "cache");
        return new f(cVar.f5482a);
    }

    public final I a(Context context, HttpLoggingInterceptor httpLoggingInterceptor, c.c.a.e.h.b.f fVar, a aVar, f fVar2, c.c.a.e.d.u.a aVar2) {
        j.b(context, "context");
        j.b(httpLoggingInterceptor, "httpLoggingInterceptor");
        j.b(fVar, "tokenInterceptor");
        j.b(aVar, "authenticatorInterceptor");
        j.b(fVar2, "cacheInterceptor");
        j.b(aVar2, "settingsRepository");
        I.a aVar3 = new I.a();
        d.a(aVar3, context, aVar2);
        aVar3.a((E) new c.c.a.e.h.b.c());
        aVar3.a((E) new c.c.a.e.h.b.d());
        aVar3.a((E) httpLoggingInterceptor);
        aVar3.a((E) fVar);
        aVar3.a((E) fVar2);
        aVar3.a((C1136c) aVar);
        aVar3.a(120, TimeUnit.SECONDS);
        aVar3.b(120, TimeUnit.SECONDS);
        I a2 = aVar3.a();
        j.a((Object) a2, "OkHttpClient.Builder()\n …NDS)\n            .build()");
        return a2;
    }

    public final b a(c.c.a.e.d.u.a aVar) {
        j.b(aVar, "settingsRepository");
        return new b(aVar);
    }

    public final q a(c.c.a.e.c cVar, n nVar) {
        j.b(cVar, "storageManager");
        j.b(nVar, "videoStorage");
        return new q(cVar, nVar);
    }

    public final DownloadManager a(b bVar, q qVar, r rVar, Downloader downloader) {
        j.b(bVar, "downloadConfig");
        j.b(qVar, "fileDownloadHelper");
        j.b(rVar, "networkStateHelper");
        j.b(downloader, "downloader");
        return new DownloadManager(bVar, qVar, downloader, rVar);
    }
}
