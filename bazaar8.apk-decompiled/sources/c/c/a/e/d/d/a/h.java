package c.c.a.e.d.d.a;

import android.database.Cursor;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import c.c.a.e.f.e;
import com.farsitel.bazaar.data.feature.bookmark.local.BookmarkStatus;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: BookmarkDao_Impl */
class h implements Callable<List<j>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f5042a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ i f5043b;

    public h(i iVar, x xVar) {
        this.f5043b = iVar;
        this.f5042a = xVar;
    }

    public void finalize() {
        this.f5042a.c();
    }

    public List<j> call() {
        Integer num;
        Cursor a2 = b.a(this.f5043b.f5044a, this.f5042a, false);
        try {
            int a3 = a.a(a2, "entityId");
            int a4 = a.a(a2, "iconUrl");
            int a5 = a.a(a2, "entityName");
            int a6 = a.a(a2, "price");
            int a7 = a.a(a2, "priceString");
            int a8 = a.a(a2, "bookmarkStatus");
            int a9 = a.a(a2, "entityDatabaseStatus");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                String string = a2.getString(a3);
                String string2 = a2.getString(a4);
                String string3 = a2.getString(a5);
                int i2 = a2.getInt(a6);
                String string4 = a2.getString(a7);
                Integer num2 = null;
                if (a2.isNull(a8)) {
                    num = null;
                } else {
                    num = Integer.valueOf(a2.getInt(a8));
                }
                BookmarkStatus a10 = c.c.a.e.f.b.a(num.intValue());
                if (!a2.isNull(a9)) {
                    num2 = Integer.valueOf(a2.getInt(a9));
                }
                j jVar = new j(string, string2, string3, i2, string4, a10, e.a(num2.intValue()));
                arrayList.add(jVar);
            }
            return arrayList;
        } finally {
            a2.close();
        }
    }
}
