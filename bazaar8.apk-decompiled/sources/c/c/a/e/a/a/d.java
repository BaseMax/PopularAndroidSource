package c.c.a.e.a.a;

import android.content.Context;
import android.database.Cursor;
import c.c.a.e.d.h.e.a.a.a;
import com.farsitel.bazaar.common.model.VideoDownloadServerState;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import com.farsitel.bazaar.data.entity.DownloadedVideoEntity;
import h.a.l;
import h.c.b;
import h.f.b.j;
import h.h;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* compiled from: LegacyLocalDataSource.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f4867a = l.c("videoDownload.db", "actions.db", "bazaar_downloads.db", "bookmarked_apps.db", "user_reviews.db", "malicious-apps.db", "upgradable-apps.db", "LastPlayedVideos.db", "uoeno.db", "addr.db", "resid_payment_services.db", "inline.db", "purchases.db");

    /* renamed from: b  reason: collision with root package name */
    public final Context f4868b;

    /* renamed from: c  reason: collision with root package name */
    public c f4869c;

    /* renamed from: d  reason: collision with root package name */
    public final a f4870d;

    public d(Context context, c cVar, a aVar) {
        j.b(context, "context");
        j.b(cVar, "legacyDb");
        j.b(aVar, "downloadDao");
        this.f4868b = context;
        this.f4869c = cVar;
        this.f4870d = aVar;
    }

    public final List<DownloadedVideoEntity> a(Cursor cursor) {
        Cursor cursor2 = cursor;
        ArrayList arrayList = new ArrayList();
        if (cursor2 == null || !cursor.moveToFirst()) {
            return arrayList;
        }
        int columnIndex = cursor2.getColumnIndex("n");
        int columnIndex2 = cursor2.getColumnIndex("d");
        int columnIndex3 = cursor2.getColumnIndex("sl");
        int columnIndex4 = cursor2.getColumnIndex("_id");
        int columnIndex5 = cursor2.getColumnIndex("di");
        int columnIndex6 = cursor2.getColumnIndex("p");
        int columnIndex7 = cursor2.getColumnIndex("ex");
        int columnIndex8 = cursor2.getColumnIndex("t");
        int columnIndex9 = cursor2.getColumnIndex("q");
        int columnIndex10 = cursor2.getColumnIndex("s");
        int columnIndex11 = cursor2.getColumnIndex("c");
        while (true) {
            String string = cursor2.getString(columnIndex5);
            j.a((Object) string, "cursor.getString(columnDownloadIdIndex)");
            String string2 = cursor2.getString(columnIndex4);
            int i2 = columnIndex4;
            j.a((Object) string2, "cursor.getString(columnIdIndex)");
            String string3 = cursor2.getString(columnIndex);
            int i3 = columnIndex;
            j.a((Object) string3, "cursor.getString(columnNameIndex)");
            String string4 = cursor2.getString(columnIndex2);
            String string5 = cursor2.getString(columnIndex6);
            int i4 = columnIndex2;
            j.a((Object) string5, "cursor.getString(columnPathIndex)");
            String string6 = cursor2.getString(columnIndex11);
            int i5 = columnIndex5;
            j.a((Object) string6, "cursor.getString(columnCoverIndex)");
            long j2 = cursor2.getLong(columnIndex7);
            String string7 = cursor2.getString(columnIndex3);
            String string8 = cursor2.getString(columnIndex9);
            int i6 = columnIndex3;
            j.a((Object) string8, "cursor.getString(columnQualityIndex)");
            String str = string;
            String str2 = string2;
            DownloadedVideoEntity downloadedVideoEntity = r13;
            DownloadedVideoEntity downloadedVideoEntity2 = new DownloadedVideoEntity(str2, str, string3, string4, string5, string6, j2, string7, string8, VideoPurchaseState.values()[cursor2.getInt(columnIndex8)], VideoDownloadServerState.values()[cursor2.getInt(columnIndex10)]);
            arrayList.add(downloadedVideoEntity);
            if (!cursor.moveToNext()) {
                return arrayList;
            }
            columnIndex4 = i2;
            columnIndex = i3;
            columnIndex2 = i4;
            columnIndex5 = i5;
            columnIndex3 = i6;
        }
    }

    public final synchronized /* synthetic */ Object b(b<? super List<DownloadedVideoEntity>> bVar) {
        List<DownloadedVideoEntity> a2;
        Cursor rawQuery = this.f4869c.getReadableDatabase().rawQuery("SELECT * FROM videoDownload", null);
        a2 = a(rawQuery);
        if (rawQuery != null) {
            rawQuery.close();
        }
        return a2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object c(h.c.b<? super h.h> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.db.legacy.LegacyLocalDataSource$importLegacyData$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            com.farsitel.bazaar.data.db.legacy.LegacyLocalDataSource$importLegacyData$1 r0 = (com.farsitel.bazaar.data.db.legacy.LegacyLocalDataSource$importLegacyData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.db.legacy.LegacyLocalDataSource$importLegacyData$1 r0 = new com.farsitel.bazaar.data.db.legacy.LegacyLocalDataSource$importLegacyData$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r0 = r0.L$0
            c.c.a.e.a.a.d r0 = (c.c.a.e.a.a.d) r0
            h.e.a((java.lang.Object) r5)
            goto L_0x0044
        L_0x002d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x0035:
            h.e.a((java.lang.Object) r5)
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r4.b(r0)
            if (r5 != r1) goto L_0x0043
            return r1
        L_0x0043:
            r0 = r4
        L_0x0044:
            java.util.List r5 = (java.util.List) r5
            c.c.a.e.d.h.e.a.a.a r0 = r0.f4870d
            r0.a((java.util.List<com.farsitel.bazaar.data.entity.DownloadedVideoEntity>) r5)
            h.h r5 = h.h.f14579a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.a.a.d.c(h.c.b):java.lang.Object");
    }

    public final Object a(b<? super h> bVar) {
        for (String databasePath : this.f4867a) {
            File databasePath2 = this.f4868b.getDatabasePath(databasePath);
            if (databasePath2 != null) {
                h.c.b.a.a.a(databasePath2.delete());
            }
        }
        return h.f14579a;
    }
}
