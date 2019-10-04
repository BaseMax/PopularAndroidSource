package c.c.a.e.d.n.a;

import android.database.Cursor;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import c.c.a.e.f.h;
import com.crashlytics.android.answers.SessionEventTransform;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: PlayedVideoDao_Impl */
class d implements Callable<List<f>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f5298a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ e f5299b;

    public d(e eVar, x xVar) {
        this.f5299b = eVar;
        this.f5298a = xVar;
    }

    public void finalize() {
        this.f5298a.c();
    }

    public List<f> call() {
        Integer num;
        Integer num2;
        Cursor a2 = b.a(this.f5299b.f5300a, this.f5298a, false);
        try {
            int a3 = a.a(a2, "entityId");
            int a4 = a.a(a2, "title");
            int a5 = a.a(a2, "cover");
            int a6 = a.a(a2, "serialId");
            int a7 = a.a(a2, "episodeIdx");
            int a8 = a.a(a2, "seasonIdx");
            int a9 = a.a(a2, SessionEventTransform.TYPE_KEY);
            int a10 = a.a(a2, "isLive");
            int a11 = a.a(a2, "date");
            int a12 = a.a(a2, "seasonEpisodeTitle");
            int a13 = a.a(a2, "providerName");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                String string = a2.getString(a3);
                String string2 = a2.getString(a4);
                String string3 = a2.getString(a5);
                String string4 = a2.getString(a6);
                Integer num3 = null;
                if (a2.isNull(a7)) {
                    num = null;
                } else {
                    num = Integer.valueOf(a2.getInt(a7));
                }
                if (a2.isNull(a8)) {
                    num2 = null;
                } else {
                    num2 = Integer.valueOf(a2.getInt(a8));
                }
                if (!a2.isNull(a9)) {
                    num3 = Integer.valueOf(a2.getInt(a9));
                }
                f fVar = new f(string, string2, string3, string4, num, num2, h.a(num3.intValue()), a2.getInt(a10) != 0, a2.getLong(a11), a2.getString(a12), a2.getString(a13));
                arrayList.add(fVar);
            }
            return arrayList;
        } finally {
            a2.close();
        }
    }
}
