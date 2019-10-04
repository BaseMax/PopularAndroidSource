package c.c.a.e.d.h.e.a.a;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C;
import b.z.C0355d;
import b.z.C0356e;
import b.z.b.b;
import b.z.x;
import c.c.a.e.f.d;
import com.farsitel.bazaar.common.model.VideoDownloadServerState;
import com.farsitel.bazaar.data.entity.DownloadedVideoEntity;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DownloadedVideoDao_Impl */
public final class h implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f5115a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f5116b;

    /* renamed from: c  reason: collision with root package name */
    public final C0355d f5117c;

    /* renamed from: d  reason: collision with root package name */
    public final C f5118d;

    /* renamed from: e  reason: collision with root package name */
    public final C f5119e;

    public h(RoomDatabase roomDatabase) {
        this.f5115a = roomDatabase;
        this.f5116b = new b(this, roomDatabase);
        this.f5117c = new c(this, roomDatabase);
        this.f5118d = new d(this, roomDatabase);
        this.f5119e = new e(this, roomDatabase);
    }

    public List<String> b(long j2) {
        x a2 = x.a("SELECT videoId FROM downloadedVideo WHERE expirationDate > 0 AND expirationDate < ?", 1);
        a2.a(1, j2);
        this.f5115a.b();
        Cursor a3 = b.a(this.f5115a, a2, false);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(a3.getString(0));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public LiveData<DownloadedVideoEntity> c(String str) {
        x a2 = x.a("SELECT * FROM downloadedVideo WHERE videoId = ?", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        return this.f5115a.h().a(new String[]{"downloadedVideo"}, false, new g(this, a2));
    }

    public void a(DownloadedVideoEntity downloadedVideoEntity) {
        this.f5115a.b();
        this.f5115a.c();
        try {
            this.f5116b.a(downloadedVideoEntity);
            this.f5115a.o();
        } finally {
            this.f5115a.e();
        }
    }

    public void a(List<DownloadedVideoEntity> list) {
        this.f5115a.b();
        this.f5115a.c();
        try {
            this.f5116b.a(list);
            this.f5115a.o();
        } finally {
            this.f5115a.e();
        }
    }

    public void a(String str) {
        this.f5115a.b();
        f a2 = this.f5118d.a();
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        this.f5115a.c();
        try {
            a2.l();
            this.f5115a.o();
        } finally {
            this.f5115a.e();
            this.f5118d.a(a2);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r15v1, resolved type: com.farsitel.bazaar.data.entity.DownloadedVideoEntity} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r15v2, resolved type: java.lang.Integer} */
    /* JADX WARNING: type inference failed for: r15v0 */
    /* JADX WARNING: type inference failed for: r15v3 */
    /* JADX WARNING: type inference failed for: r15v5 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.farsitel.bazaar.data.entity.DownloadedVideoEntity b(java.lang.String r30) {
        /*
            r29 = this;
            r1 = r29
            r0 = r30
            r2 = 1
            java.lang.String r3 = "SELECT * FROM downloadedVideo WHERE videoId = ?"
            b.z.x r3 = b.z.x.a((java.lang.String) r3, (int) r2)
            if (r0 != 0) goto L_0x0011
            r3.a((int) r2)
            goto L_0x0014
        L_0x0011:
            r3.a((int) r2, (java.lang.String) r0)
        L_0x0014:
            androidx.room.RoomDatabase r0 = r1.f5115a
            r0.b()
            androidx.room.RoomDatabase r0 = r1.f5115a
            r2 = 0
            android.database.Cursor r2 = b.z.b.b.a(r0, r3, r2)
            java.lang.String r0 = "videoId"
            int r0 = b.z.b.a.a(r2, r0)     // Catch:{ all -> 0x00cb }
            java.lang.String r4 = "downloadId"
            int r4 = b.z.b.a.a(r2, r4)     // Catch:{ all -> 0x00cb }
            java.lang.String r5 = "videoName"
            int r5 = b.z.b.a.a(r2, r5)     // Catch:{ all -> 0x00cb }
            java.lang.String r6 = "videoDesc"
            int r6 = b.z.b.a.a(r2, r6)     // Catch:{ all -> 0x00cb }
            java.lang.String r7 = "videoPath"
            int r7 = b.z.b.a.a(r2, r7)     // Catch:{ all -> 0x00cb }
            java.lang.String r8 = "coverUrl"
            int r8 = b.z.b.a.a(r2, r8)     // Catch:{ all -> 0x00cb }
            java.lang.String r9 = "expirationDate"
            int r9 = b.z.b.a.a(r2, r9)     // Catch:{ all -> 0x00cb }
            java.lang.String r10 = "shareLink"
            int r10 = b.z.b.a.a(r2, r10)     // Catch:{ all -> 0x00cb }
            java.lang.String r11 = "qualityString"
            int r11 = b.z.b.a.a(r2, r11)     // Catch:{ all -> 0x00cb }
            java.lang.String r12 = "downloadPriceType"
            int r12 = b.z.b.a.a(r2, r12)     // Catch:{ all -> 0x00cb }
            java.lang.String r13 = "downloadServerState"
            int r13 = b.z.b.a.a(r2, r13)     // Catch:{ all -> 0x00cb }
            boolean r14 = r2.moveToFirst()     // Catch:{ all -> 0x00cb }
            r15 = 0
            if (r14 == 0) goto L_0x00c4
            java.lang.String r17 = r2.getString(r0)     // Catch:{ all -> 0x00cb }
            java.lang.String r18 = r2.getString(r4)     // Catch:{ all -> 0x00cb }
            java.lang.String r19 = r2.getString(r5)     // Catch:{ all -> 0x00cb }
            java.lang.String r20 = r2.getString(r6)     // Catch:{ all -> 0x00cb }
            java.lang.String r21 = r2.getString(r7)     // Catch:{ all -> 0x00cb }
            java.lang.String r22 = r2.getString(r8)     // Catch:{ all -> 0x00cb }
            long r23 = r2.getLong(r9)     // Catch:{ all -> 0x00cb }
            java.lang.String r25 = r2.getString(r10)     // Catch:{ all -> 0x00cb }
            java.lang.String r26 = r2.getString(r11)     // Catch:{ all -> 0x00cb }
            boolean r0 = r2.isNull(r12)     // Catch:{ all -> 0x00cb }
            if (r0 == 0) goto L_0x0095
            r0 = r15
            goto L_0x009d
        L_0x0095:
            int r0 = r2.getInt(r12)     // Catch:{ all -> 0x00cb }
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ all -> 0x00cb }
        L_0x009d:
            int r0 = r0.intValue()     // Catch:{ all -> 0x00cb }
            com.farsitel.bazaar.common.model.VideoPurchaseState r27 = c.c.a.e.f.c.a((int) r0)     // Catch:{ all -> 0x00cb }
            boolean r0 = r2.isNull(r13)     // Catch:{ all -> 0x00cb }
            if (r0 == 0) goto L_0x00ac
            goto L_0x00b4
        L_0x00ac:
            int r0 = r2.getInt(r13)     // Catch:{ all -> 0x00cb }
            java.lang.Integer r15 = java.lang.Integer.valueOf(r0)     // Catch:{ all -> 0x00cb }
        L_0x00b4:
            int r0 = r15.intValue()     // Catch:{ all -> 0x00cb }
            com.farsitel.bazaar.common.model.VideoDownloadServerState r28 = c.c.a.e.f.d.a((int) r0)     // Catch:{ all -> 0x00cb }
            com.farsitel.bazaar.data.entity.DownloadedVideoEntity r0 = new com.farsitel.bazaar.data.entity.DownloadedVideoEntity     // Catch:{ all -> 0x00cb }
            r16 = r0
            r16.<init>(r17, r18, r19, r20, r21, r22, r23, r25, r26, r27, r28)     // Catch:{ all -> 0x00cb }
            r15 = r0
        L_0x00c4:
            r2.close()
            r3.c()
            return r15
        L_0x00cb:
            r0 = move-exception
            r2.close()
            r3.c()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.a.a.h.b(java.lang.String):com.farsitel.bazaar.data.entity.DownloadedVideoEntity");
    }

    public void a(String str, VideoDownloadServerState videoDownloadServerState) {
        this.f5115a.b();
        f a2 = this.f5119e.a();
        Integer a3 = d.a(videoDownloadServerState);
        if (a3 == null) {
            a2.a(1);
        } else {
            a2.a(1, (long) a3.intValue());
        }
        if (str == null) {
            a2.a(2);
        } else {
            a2.a(2, str);
        }
        this.f5115a.c();
        try {
            a2.l();
            this.f5115a.o();
        } finally {
            this.f5115a.e();
            this.f5119e.a(a2);
        }
    }

    public LiveData<List<DownloadedVideoEntity>> a(long j2) {
        x a2 = x.a("SELECT * FROM downloadedVideo WHERE expirationDate <= 0 OR expirationDate > ?", 1);
        a2.a(1, j2);
        return this.f5115a.h().a(new String[]{"downloadedVideo"}, false, new f(this, a2));
    }
}
