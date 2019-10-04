package c.c.a.e.d.h.e.a.a;

import android.database.Cursor;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import c.c.a.e.f.c;
import c.c.a.e.f.d;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import com.farsitel.bazaar.data.entity.DownloadedVideoEntity;
import java.util.concurrent.Callable;

/* compiled from: DownloadedVideoDao_Impl */
class g implements Callable<DownloadedVideoEntity> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f5113a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h f5114b;

    public g(h hVar, x xVar) {
        this.f5114b = hVar;
        this.f5113a = xVar;
    }

    public void finalize() {
        this.f5113a.c();
    }

    public DownloadedVideoEntity call() {
        DownloadedVideoEntity downloadedVideoEntity;
        Integer num;
        Cursor a2 = b.a(this.f5114b.f5115a, this.f5113a, false);
        try {
            int a3 = a.a(a2, "videoId");
            int a4 = a.a(a2, "downloadId");
            int a5 = a.a(a2, "videoName");
            int a6 = a.a(a2, "videoDesc");
            int a7 = a.a(a2, "videoPath");
            int a8 = a.a(a2, "coverUrl");
            int a9 = a.a(a2, "expirationDate");
            int a10 = a.a(a2, "shareLink");
            int a11 = a.a(a2, "qualityString");
            int a12 = a.a(a2, "downloadPriceType");
            int a13 = a.a(a2, "downloadServerState");
            Integer num2 = null;
            if (a2.moveToFirst()) {
                String string = a2.getString(a3);
                String string2 = a2.getString(a4);
                String string3 = a2.getString(a5);
                String string4 = a2.getString(a6);
                String string5 = a2.getString(a7);
                String string6 = a2.getString(a8);
                long j2 = a2.getLong(a9);
                String string7 = a2.getString(a10);
                String string8 = a2.getString(a11);
                if (a2.isNull(a12)) {
                    num = null;
                } else {
                    num = Integer.valueOf(a2.getInt(a12));
                }
                VideoPurchaseState a14 = c.a(num.intValue());
                if (!a2.isNull(a13)) {
                    num2 = Integer.valueOf(a2.getInt(a13));
                }
                downloadedVideoEntity = new DownloadedVideoEntity(string, string2, string3, string4, string5, string6, j2, string7, string8, a14, d.a(num2.intValue()));
            } else {
                downloadedVideoEntity = null;
            }
            return downloadedVideoEntity;
        } finally {
            a2.close();
        }
    }
}
