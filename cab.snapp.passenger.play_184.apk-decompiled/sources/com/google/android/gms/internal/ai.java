package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.r;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.i;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class ai extends x implements Closeable {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final String f3058a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[]{"hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id"});

    /* renamed from: b  reason: collision with root package name */
    private static final String f3059b = String.format("SELECT MAX(%s) FROM %s WHERE 1;", new Object[]{"hit_time", "hits2"});
    private final aj c;
    private final ca d = new ca(this.zzdta.zzws());
    /* access modifiers changed from: private */
    public final ca e = new ca(this.zzdta.zzws());

    private final long a(String str) {
        Cursor cursor = null;
        try {
            cursor = b().rawQuery(str, null);
            if (cursor.moveToFirst()) {
                long j = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j;
            }
            throw new SQLiteException("Database returned empty set");
        } catch (SQLiteException e2) {
            zzd("Database error", str, e2);
            throw e2;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long a(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            Cursor rawQuery = b().rawQuery(str, strArr);
            if (rawQuery.moveToFirst()) {
                long j = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return 0;
        } catch (SQLiteException e2) {
            zzd("Database error", str, e2);
            throw e2;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x005b, code lost:
        if (r10 != null) goto L_0x0068;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0066, code lost:
        if (r10 == null) goto L_0x006b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0068, code lost:
        r10.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006b, code lost:
        return r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.util.List<java.lang.Long> a(long r14) {
        /*
            r13 = this;
            java.lang.String r0 = "hit_id"
            com.google.android.gms.analytics.r.zzve()
            r13.c()
            r1 = 0
            int r3 = (r14 > r1 ? 1 : (r14 == r1 ? 0 : -1))
            if (r3 > 0) goto L_0x0013
            java.util.List r14 = java.util.Collections.emptyList()
            return r14
        L_0x0013:
            android.database.sqlite.SQLiteDatabase r1 = r13.b()
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            r10 = 0
            java.lang.String r2 = "hits2"
            r3 = 1
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0060 }
            r11 = 0
            r4[r11] = r0     // Catch:{ SQLiteException -> 0x0060 }
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            java.lang.String r12 = "%s ASC"
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ SQLiteException -> 0x0060 }
            r3[r11] = r0     // Catch:{ SQLiteException -> 0x0060 }
            java.lang.String r12 = java.lang.String.format(r12, r3)     // Catch:{ SQLiteException -> 0x0060 }
            java.lang.String r14 = java.lang.Long.toString(r14)     // Catch:{ SQLiteException -> 0x0060 }
            r0 = r1
            r1 = r2
            r2 = r4
            r3 = r5
            r4 = r6
            r5 = r7
            r6 = r8
            r7 = r12
            r8 = r14
            android.database.Cursor r10 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x0060 }
            boolean r14 = r10.moveToFirst()     // Catch:{ SQLiteException -> 0x0060 }
            if (r14 == 0) goto L_0x005b
        L_0x004a:
            long r14 = r10.getLong(r11)     // Catch:{ SQLiteException -> 0x0060 }
            java.lang.Long r14 = java.lang.Long.valueOf(r14)     // Catch:{ SQLiteException -> 0x0060 }
            r9.add(r14)     // Catch:{ SQLiteException -> 0x0060 }
            boolean r14 = r10.moveToNext()     // Catch:{ SQLiteException -> 0x0060 }
            if (r14 != 0) goto L_0x004a
        L_0x005b:
            if (r10 == 0) goto L_0x006b
            goto L_0x0068
        L_0x005e:
            r14 = move-exception
            goto L_0x006c
        L_0x0060:
            r14 = move-exception
            java.lang.String r15 = "Error selecting hit ids"
            r13.zzd(r15, r14)     // Catch:{ all -> 0x005e }
            if (r10 == 0) goto L_0x006b
        L_0x0068:
            r10.close()
        L_0x006b:
            return r9
        L_0x006c:
            if (r10 == 0) goto L_0x0071
            r10.close()
        L_0x0071:
            goto L_0x0073
        L_0x0072:
            throw r14
        L_0x0073:
            goto L_0x0072
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ai.a(long):java.util.List");
    }

    private final Map<String, String> b(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                String valueOf = String.valueOf(str);
                str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            return i.zza(new URI(str), "UTF-8");
        } catch (URISyntaxException e2) {
            zze("Error parsing hit parameters", e2);
            return new HashMap(0);
        }
    }

    private final Map<String, String> c(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String valueOf = String.valueOf(str);
            return i.zza(new URI(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")), "UTF-8");
        } catch (URISyntaxException e2) {
            zze("Error parsing property parameters", e2);
            return new HashMap(0);
        }
    }

    static /* synthetic */ String d() {
        return "google_analytics_v4.db";
    }

    private final long f() {
        r.zzve();
        c();
        return a("SELECT COUNT(*) FROM hits2");
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return f() == 0;
    }

    /* access modifiers changed from: package-private */
    public final SQLiteDatabase b() {
        try {
            return this.c.getWritableDatabase();
        } catch (SQLiteException e2) {
            zzd("Error opening database", e2);
            throw e2;
        }
    }

    public final void beginTransaction() {
        c();
        b().beginTransaction();
    }

    public final void close() {
        String str;
        try {
            this.c.close();
        } catch (SQLiteException e2) {
            e = e2;
            str = "Sql error closing database";
            zze(str, e);
        } catch (IllegalStateException e3) {
            e = e3;
            str = "Error closing database";
            zze(str, e);
        }
    }

    public final void endTransaction() {
        c();
        b().endTransaction();
    }

    public final void setTransactionSuccessful() {
        c();
        b().setTransactionSuccessful();
    }

    public final long zza(long j, String str, String str2) {
        ap.zzgm(str);
        ap.zzgm(str2);
        c();
        r.zzve();
        return a("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2});
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00af  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.bk> zzo(long r23) {
        /*
            r22 = this;
            r10 = r22
            java.lang.String r0 = "hit_id"
            r11 = 1
            r12 = 0
            r1 = 0
            int r3 = (r23 > r1 ? 1 : (r23 == r1 ? 0 : -1))
            if (r3 < 0) goto L_0x000e
            r1 = 1
            goto L_0x000f
        L_0x000e:
            r1 = 0
        L_0x000f:
            com.google.android.gms.common.internal.ap.checkArgument(r1)
            com.google.android.gms.analytics.r.zzve()
            r22.c()
            android.database.sqlite.SQLiteDatabase r13 = r22.b()
            r1 = 0
            java.lang.String r14 = "hits2"
            r2 = 5
            java.lang.String[] r15 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x00a6 }
            r15[r12] = r0     // Catch:{ SQLiteException -> 0x00a6 }
            java.lang.String r2 = "hit_time"
            r15[r11] = r2     // Catch:{ SQLiteException -> 0x00a6 }
            java.lang.String r2 = "hit_string"
            r9 = 2
            r15[r9] = r2     // Catch:{ SQLiteException -> 0x00a6 }
            java.lang.String r2 = "hit_url"
            r7 = 3
            r15[r7] = r2     // Catch:{ SQLiteException -> 0x00a6 }
            java.lang.String r2 = "hit_app_id"
            r8 = 4
            r15[r8] = r2     // Catch:{ SQLiteException -> 0x00a6 }
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            java.lang.String r2 = "%s ASC"
            java.lang.Object[] r3 = new java.lang.Object[r11]     // Catch:{ SQLiteException -> 0x00a6 }
            r3[r12] = r0     // Catch:{ SQLiteException -> 0x00a6 }
            java.lang.String r20 = java.lang.String.format(r2, r3)     // Catch:{ SQLiteException -> 0x00a6 }
            java.lang.String r21 = java.lang.Long.toString(r23)     // Catch:{ SQLiteException -> 0x00a6 }
            android.database.Cursor r13 = r13.query(r14, r15, r16, r17, r18, r19, r20, r21)     // Catch:{ SQLiteException -> 0x00a6 }
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            r0.<init>()     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            boolean r1 = r13.moveToFirst()     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            if (r1 == 0) goto L_0x0098
        L_0x005c:
            long r14 = r13.getLong(r12)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            long r4 = r13.getLong(r11)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            java.lang.String r1 = r13.getString(r9)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            java.lang.String r2 = r13.getString(r7)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            int r16 = r13.getInt(r8)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            java.util.Map r3 = r10.b(r1)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            boolean r6 = com.google.android.gms.internal.ce.zzel(r2)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            com.google.android.gms.internal.bk r2 = new com.google.android.gms.internal.bk     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            r1 = r2
            r11 = r2
            r2 = r22
            r18 = 4
            r19 = 3
            r7 = r14
            r14 = 2
            r9 = r16
            r1.<init>(r2, r3, r4, r6, r7, r9)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            r0.add(r11)     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            boolean r1 = r13.moveToNext()     // Catch:{ SQLiteException -> 0x00a1, all -> 0x009e }
            if (r1 != 0) goto L_0x0093
            goto L_0x0098
        L_0x0093:
            r7 = 3
            r8 = 4
            r9 = 2
            r11 = 1
            goto L_0x005c
        L_0x0098:
            if (r13 == 0) goto L_0x009d
            r13.close()
        L_0x009d:
            return r0
        L_0x009e:
            r0 = move-exception
            r1 = r13
            goto L_0x00ad
        L_0x00a1:
            r0 = move-exception
            r1 = r13
            goto L_0x00a7
        L_0x00a4:
            r0 = move-exception
            goto L_0x00ad
        L_0x00a6:
            r0 = move-exception
        L_0x00a7:
            java.lang.String r2 = "Error loading hits from the database"
            r10.zze(r2, r0)     // Catch:{ all -> 0x00a4 }
            throw r0     // Catch:{ all -> 0x00a4 }
        L_0x00ad:
            if (r1 == 0) goto L_0x00b2
            r1.close()
        L_0x00b2:
            goto L_0x00b4
        L_0x00b3:
            throw r0
        L_0x00b4:
            goto L_0x00b3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ai.zzo(long):java.util.List");
    }

    public final void zzp(long j) {
        r.zzve();
        c();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        zza("Deleting hit, id", Long.valueOf(j));
        zzs(arrayList);
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00c7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.ac> zzq(long r26) {
        /*
            r25 = this;
            r1 = r25
            r25.c()
            com.google.android.gms.analytics.r.zzve()
            android.database.sqlite.SQLiteDatabase r2 = r25.b()
            r0 = 5
            java.lang.String[] r4 = new java.lang.String[r0]     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r0 = "cid"
            r12 = 0
            r4[r12] = r0     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r0 = "tid"
            r13 = 1
            r4[r13] = r0     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r0 = "adid"
            r14 = 2
            r4[r14] = r0     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r0 = "hits_count"
            r15 = 3
            r4[r15] = r0     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r0 = "params"
            r10 = 4
            r4[r10] = r0     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            com.google.android.gms.internal.bg<java.lang.Integer> r0 = com.google.android.gms.internal.bf.zzdwd     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.Object r0 = r0.get()     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            int r0 = r0.intValue()     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r16 = java.lang.String.valueOf(r0)     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r5 = "app_uid=?"
            java.lang.String[] r6 = new java.lang.String[r13]     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r3 = "0"
            r6[r12] = r3     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.lang.String r3 = "properties"
            r7 = 0
            r8 = 0
            r9 = 0
            r11 = 4
            r10 = r16
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch:{ SQLiteException -> 0x00bb, all -> 0x00b8 }
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            r3.<init>()     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            boolean r4 = r2.moveToFirst()     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            if (r4 == 0) goto L_0x00a2
        L_0x0057:
            java.lang.String r4 = r2.getString(r12)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            java.lang.String r5 = r2.getString(r13)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            int r6 = r2.getInt(r14)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            if (r6 == 0) goto L_0x0068
            r21 = 1
            goto L_0x006a
        L_0x0068:
            r21 = 0
        L_0x006a:
            int r6 = r2.getInt(r15)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            long r6 = (long) r6     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            java.lang.String r8 = r2.getString(r11)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            java.util.Map r24 = r1.c(r8)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            boolean r8 = android.text.TextUtils.isEmpty(r4)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            if (r8 != 0) goto L_0x0097
            boolean r8 = android.text.TextUtils.isEmpty(r5)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            if (r8 == 0) goto L_0x0084
            goto L_0x0097
        L_0x0084:
            com.google.android.gms.internal.ac r8 = new com.google.android.gms.internal.ac     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            r17 = 0
            r16 = r8
            r19 = r4
            r20 = r5
            r22 = r6
            r16.<init>(r17, r19, r20, r21, r22, r24)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            r3.add(r8)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            goto L_0x009c
        L_0x0097:
            java.lang.String r6 = "Read property with empty client id or tracker id"
            r1.zzc(r6, r4, r5)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
        L_0x009c:
            boolean r4 = r2.moveToNext()     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            if (r4 != 0) goto L_0x0057
        L_0x00a2:
            int r4 = r3.size()     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
            if (r4 < r0) goto L_0x00ad
            java.lang.String r0 = "Sending hits to too many properties. Campaign report might be incorrect"
            r1.zzdx(r0)     // Catch:{ SQLiteException -> 0x00b5, all -> 0x00b3 }
        L_0x00ad:
            if (r2 == 0) goto L_0x00b2
            r2.close()
        L_0x00b2:
            return r3
        L_0x00b3:
            r0 = move-exception
            goto L_0x00c5
        L_0x00b5:
            r0 = move-exception
            r11 = r2
            goto L_0x00bd
        L_0x00b8:
            r0 = move-exception
            r2 = 0
            goto L_0x00c5
        L_0x00bb:
            r0 = move-exception
            r11 = 0
        L_0x00bd:
            java.lang.String r2 = "Error loading hits from the database"
            r1.zze(r2, r0)     // Catch:{ all -> 0x00c3 }
            throw r0     // Catch:{ all -> 0x00c3 }
        L_0x00c3:
            r0 = move-exception
            r2 = r11
        L_0x00c5:
            if (r2 == 0) goto L_0x00ca
            r2.close()
        L_0x00ca:
            goto L_0x00cc
        L_0x00cb:
            throw r0
        L_0x00cc:
            goto L_0x00cb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ai.zzq(long):java.util.List");
    }

    public final void zzs(List<Long> list) {
        ap.checkNotNull(list);
        r.zzve();
        c();
        if (!list.isEmpty()) {
            StringBuilder sb = new StringBuilder("hit_id");
            sb.append(" in (");
            for (int i = 0; i < list.size(); i++) {
                Long l = list.get(i);
                if (l == null || l.longValue() == 0) {
                    throw new SQLiteException("Invalid hit id");
                }
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(l);
            }
            sb.append(")");
            String sb2 = sb.toString();
            try {
                SQLiteDatabase b2 = b();
                zza("Deleting dispatched hits. count", Integer.valueOf(list.size()));
                int delete = b2.delete("hits2", sb2, null);
                if (delete != list.size()) {
                    zzb("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(delete), sb2);
                }
            } catch (SQLiteException e2) {
                zze("Error deleting hits", e2);
                throw e2;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
    }

    public final long zzxv() {
        r.zzve();
        c();
        return a(f3059b, null);
    }

    ai(z zVar) {
        super(zVar);
        this.c = new aj(this, zVar.getContext(), "google_analytics_v4.db");
    }

    public final void zzc(bk bkVar) {
        ap.checkNotNull(bkVar);
        r.zzve();
        c();
        ap.checkNotNull(bkVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry next : bkVar.zzjh().entrySet()) {
            String str = (String) next.getKey();
            if (!"ht".equals(str) && !"qt".equals(str) && !"AppUID".equals(str)) {
                builder.appendQueryParameter(str, (String) next.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        if (encodedQuery == null) {
            encodedQuery = "";
        }
        if (encodedQuery.length() > 8192) {
            this.zzdta.zzwt().zza(bkVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        int intValue = bf.zzdwb.get().intValue();
        long f = f();
        if (f > ((long) (intValue - 1))) {
            List<Long> a2 = a((f - ((long) intValue)) + 1);
            zzd("Store full, deleting hits to make room, count", Integer.valueOf(a2.size()));
            zzs(a2);
        }
        SQLiteDatabase b2 = b();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", encodedQuery);
        contentValues.put("hit_time", Long.valueOf(bkVar.zzzi()));
        contentValues.put("hit_app_id", Integer.valueOf(bkVar.zzzg()));
        contentValues.put("hit_url", bkVar.zzzk() ? ax.zzyw() : ax.zzyx());
        try {
            long insert = b2.insert("hits2", null, contentValues);
            if (insert == -1) {
                zzdy("Failed to insert a hit (got -1)");
            } else {
                zzb("Hit saved to database. db-id, hit", Long.valueOf(insert), bkVar);
            }
        } catch (SQLiteException e2) {
            zze("Error storing a hit", e2);
        }
    }

    public final int zzxu() {
        r.zzve();
        c();
        if (!this.d.zzu(86400000)) {
            return 0;
        }
        this.d.start();
        zzdu("Deleting stale hits (if any)");
        int delete = b().delete("hits2", "hit_time < ?", new String[]{Long.toString(this.zzdta.zzws().currentTimeMillis() - 2592000000L)});
        zza("Deleted stale hits, count", Integer.valueOf(delete));
        return delete;
    }
}
