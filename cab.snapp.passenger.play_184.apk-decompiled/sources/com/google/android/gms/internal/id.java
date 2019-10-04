package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class id extends kw {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f3201a = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"};
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f3202b = {FirebaseAnalytics.b.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    /* access modifiers changed from: private */
    public static final String[] c = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"};
    /* access modifiers changed from: private */
    public static final String[] d = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    /* access modifiers changed from: private */
    public static final String[] f = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"};
    /* access modifiers changed from: private */
    public static final String[] g = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final ig h = new ig(this, getContext(), "google_app_measurement.db");
    /* access modifiers changed from: private */
    public final mv i = new mv(zzws());

    id(jx jxVar) {
        super(jxVar);
    }

    private final long a(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            cursor = b().rawQuery(str, strArr);
            if (cursor.moveToFirst()) {
                long j = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j;
            }
            throw new SQLiteException("Database returned empty set");
        } catch (SQLiteException e) {
            zzawy().zzazd().zze("Database error", str, e);
            throw e;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long a(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            Cursor rawQuery = b().rawQuery(str, strArr);
            if (rawQuery.moveToFirst()) {
                long j2 = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j2;
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return j;
        } catch (SQLiteException e) {
            zzawy().zzazd().zze("Database error", str, e);
            throw e;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private final Object a(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            zzawy().zzazd().log("Loaded invalid null value from database");
            return null;
        } else if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        } else {
            if (type == 2) {
                return Double.valueOf(cursor.getDouble(i2));
            }
            if (type == 3) {
                return cursor.getString(i2);
            }
            if (type != 4) {
                zzawy().zzazd().zzj("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            zzawy().zzazd().log("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    private static Set<String> a(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    private static void a(ContentValues contentValues, String str, Object obj) {
        ap.zzgm(str);
        ap.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put(str, (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    static void a(iz izVar, SQLiteDatabase sQLiteDatabase) {
        if (izVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                izVar.zzazf().log("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                izVar.zzazf().log("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                izVar.zzazf().log("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                izVar.zzazf().log("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    static void a(iz izVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws SQLiteException {
        if (izVar != null) {
            if (!a(izVar, sQLiteDatabase, str)) {
                sQLiteDatabase.execSQL(str2);
            }
            try {
                a(izVar, sQLiteDatabase, str, str3, strArr);
            } catch (SQLiteException e) {
                izVar.zzazd().zzj("Failed to verify columns on table that was just created", str);
                throw e;
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }

    private static void a(iz izVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) throws SQLiteException {
        if (izVar != null) {
            Set<String> a2 = a(sQLiteDatabase, str);
            String[] split = str2.split(",");
            int length = split.length;
            int i2 = 0;
            while (i2 < length) {
                String str3 = split[i2];
                if (a2.remove(str3)) {
                    i2++;
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 35 + String.valueOf(str3).length());
                    sb.append("Table ");
                    sb.append(str);
                    sb.append(" is missing required column: ");
                    sb.append(str3);
                    throw new SQLiteException(sb.toString());
                }
            }
            if (strArr != null) {
                for (int i3 = 0; i3 < strArr.length; i3 += 2) {
                    if (!a2.remove(strArr[i3])) {
                        sQLiteDatabase.execSQL(strArr[i3 + 1]);
                    }
                }
            }
            if (!a2.isEmpty()) {
                izVar.zzazf().zze("Table has extra columns. table, columns", str, TextUtils.join(", ", a2));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    private static boolean a(iz izVar, SQLiteDatabase sQLiteDatabase, String str) {
        if (izVar != null) {
            Cursor cursor = null;
            try {
                Cursor query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                boolean moveToFirst = query.moveToFirst();
                if (query != null) {
                    query.close();
                }
                return moveToFirst;
            } catch (SQLiteException e) {
                izVar.zzazf().zze("Error querying for table", str, e);
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }

    private final boolean a(String str, int i2, nc ncVar) {
        k();
        zzve();
        ap.zzgm(str);
        ap.checkNotNull(ncVar);
        if (TextUtils.isEmpty(ncVar.zzjjx)) {
            zzawy().zzazf().zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", iz.a(str), Integer.valueOf(i2), String.valueOf(ncVar.zzjjw));
            return false;
        }
        try {
            byte[] bArr = new byte[ncVar.zzho()];
            sp zzo = sp.zzo(bArr, 0, bArr.length);
            ncVar.zza(zzo);
            zzo.zzcwt();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i2));
            contentValues.put("filter_id", ncVar.zzjjw);
            contentValues.put("event_name", ncVar.zzjjx);
            contentValues.put("data", bArr);
            try {
                if (b().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                    zzawy().zzazd().zzj("Failed to insert event filter (got -1). appId", iz.a(str));
                }
                return true;
            } catch (SQLiteException e) {
                zzawy().zzazd().zze("Error storing event filter. appId", iz.a(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzawy().zzazd().zze("Configuration loss. Failed to serialize event filter. appId", iz.a(str), e2);
            return false;
        }
    }

    private final boolean a(String str, int i2, nf nfVar) {
        k();
        zzve();
        ap.zzgm(str);
        ap.checkNotNull(nfVar);
        if (TextUtils.isEmpty(nfVar.zzjkm)) {
            zzawy().zzazf().zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", iz.a(str), Integer.valueOf(i2), String.valueOf(nfVar.zzjjw));
            return false;
        }
        try {
            byte[] bArr = new byte[nfVar.zzho()];
            sp zzo = sp.zzo(bArr, 0, bArr.length);
            nfVar.zza(zzo);
            zzo.zzcwt();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i2));
            contentValues.put("filter_id", nfVar.zzjjw);
            contentValues.put("property_name", nfVar.zzjkm);
            contentValues.put("data", bArr);
            try {
                if (b().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                zzawy().zzazd().zzj("Failed to insert property filter (got -1). appId", iz.a(str));
                return false;
            } catch (SQLiteException e) {
                zzawy().zzazd().zze("Error storing property filter. appId", iz.a(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzawy().zzazd().zze("Configuration loss. Failed to serialize property filter. appId", iz.a(str), e2);
            return false;
        }
    }

    private final boolean a(String str, List<Integer> list) {
        ap.zzgm(str);
        k();
        zzve();
        SQLiteDatabase b2 = b();
        try {
            long a2 = a("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, zzaxa().zzb(str, ip.zzjbi)));
            if (a2 <= ((long) max)) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                Integer num = list.get(i2);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String join = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 140);
            sb3.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb3.append(sb2);
            sb3.append(" order by rowid desc limit -1 offset ?)");
            return b2.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e) {
            zzawy().zzazd().zze("Database error querying filters. appId", iz.a(str), e);
            return false;
        }
    }

    private final boolean l() {
        return getContext().getDatabasePath("google_app_measurement.db").exists();
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.np> a(java.lang.String r12) {
        /*
            r11 = this;
            r11.k()
            r11.zzve()
            com.google.android.gms.common.internal.ap.zzgm(r12)
            android.database.sqlite.SQLiteDatabase r0 = r11.b()
            r8 = 0
            java.lang.String r1 = "audience_filter_values"
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
            java.lang.String r3 = "audience_id"
            r9 = 0
            r2[r9] = r3     // Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
            java.lang.String r3 = "current_results"
            r10 = 1
            r2[r10] = r3     // Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
            java.lang.String r3 = "app_id=?"
            java.lang.String[] r4 = new java.lang.String[r10]     // Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
            r4[r9] = r12     // Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ SQLiteException -> 0x007f, all -> 0x007c }
            boolean r1 = r0.moveToFirst()     // Catch:{ SQLiteException -> 0x007a }
            if (r1 != 0) goto L_0x0036
            if (r0 == 0) goto L_0x0035
            r0.close()
        L_0x0035:
            return r8
        L_0x0036:
            androidx.collection.ArrayMap r1 = new androidx.collection.ArrayMap     // Catch:{ SQLiteException -> 0x007a }
            r1.<init>()     // Catch:{ SQLiteException -> 0x007a }
        L_0x003b:
            int r2 = r0.getInt(r9)     // Catch:{ SQLiteException -> 0x007a }
            byte[] r3 = r0.getBlob(r10)     // Catch:{ SQLiteException -> 0x007a }
            int r4 = r3.length     // Catch:{ SQLiteException -> 0x007a }
            com.google.android.gms.internal.so r3 = com.google.android.gms.internal.so.zzn(r3, r9, r4)     // Catch:{ SQLiteException -> 0x007a }
            com.google.android.gms.internal.np r4 = new com.google.android.gms.internal.np     // Catch:{ SQLiteException -> 0x007a }
            r4.<init>()     // Catch:{ SQLiteException -> 0x007a }
            r4.zza((com.google.android.gms.internal.so) r3)     // Catch:{ IOException -> 0x0058 }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ SQLiteException -> 0x007a }
            r1.put(r2, r4)     // Catch:{ SQLiteException -> 0x007a }
            goto L_0x006e
        L_0x0058:
            r3 = move-exception
            com.google.android.gms.internal.iz r4 = r11.zzawy()     // Catch:{ SQLiteException -> 0x007a }
            com.google.android.gms.internal.jb r4 = r4.zzazd()     // Catch:{ SQLiteException -> 0x007a }
            java.lang.String r5 = "Failed to merge filter results. appId, audienceId, error"
            java.lang.Object r6 = com.google.android.gms.internal.iz.a((java.lang.String) r12)     // Catch:{ SQLiteException -> 0x007a }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ SQLiteException -> 0x007a }
            r4.zzd(r5, r6, r2, r3)     // Catch:{ SQLiteException -> 0x007a }
        L_0x006e:
            boolean r2 = r0.moveToNext()     // Catch:{ SQLiteException -> 0x007a }
            if (r2 != 0) goto L_0x003b
            if (r0 == 0) goto L_0x0079
            r0.close()
        L_0x0079:
            return r1
        L_0x007a:
            r1 = move-exception
            goto L_0x0081
        L_0x007c:
            r12 = move-exception
            r0 = r8
            goto L_0x0099
        L_0x007f:
            r1 = move-exception
            r0 = r8
        L_0x0081:
            com.google.android.gms.internal.iz r2 = r11.zzawy()     // Catch:{ all -> 0x0098 }
            com.google.android.gms.internal.jb r2 = r2.zzazd()     // Catch:{ all -> 0x0098 }
            java.lang.String r3 = "Database error querying filter results. appId"
            java.lang.Object r12 = com.google.android.gms.internal.iz.a((java.lang.String) r12)     // Catch:{ all -> 0x0098 }
            r2.zze(r3, r12, r1)     // Catch:{ all -> 0x0098 }
            if (r0 == 0) goto L_0x0097
            r0.close()
        L_0x0097:
            return r8
        L_0x0098:
            r12 = move-exception
        L_0x0099:
            if (r0 == 0) goto L_0x009e
            r0.close()
        L_0x009e:
            goto L_0x00a0
        L_0x009f:
            throw r12
        L_0x00a0:
            goto L_0x009f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.a(java.lang.String):java.util.Map");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.nc>> a(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.k()
            r12.zzve()
            com.google.android.gms.common.internal.ap.zzgm(r13)
            com.google.android.gms.common.internal.ap.zzgm(r14)
            androidx.collection.ArrayMap r0 = new androidx.collection.ArrayMap
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.b()
            r9 = 0
            java.lang.String r2 = "event_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            java.lang.String r5 = "app_id=? AND event_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            r6[r10] = r13     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            r6[r11] = r14     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            boolean r1 = r14.moveToFirst()     // Catch:{ SQLiteException -> 0x0097 }
            if (r1 != 0) goto L_0x0048
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch:{ SQLiteException -> 0x0097 }
            if (r14 == 0) goto L_0x0047
            r14.close()
        L_0x0047:
            return r13
        L_0x0048:
            byte[] r1 = r14.getBlob(r11)     // Catch:{ SQLiteException -> 0x0097 }
            int r2 = r1.length     // Catch:{ SQLiteException -> 0x0097 }
            com.google.android.gms.internal.so r1 = com.google.android.gms.internal.so.zzn(r1, r10, r2)     // Catch:{ SQLiteException -> 0x0097 }
            com.google.android.gms.internal.nc r2 = new com.google.android.gms.internal.nc     // Catch:{ SQLiteException -> 0x0097 }
            r2.<init>()     // Catch:{ SQLiteException -> 0x0097 }
            r2.zza((com.google.android.gms.internal.so) r1)     // Catch:{ IOException -> 0x0079 }
            int r1 = r14.getInt(r10)     // Catch:{ SQLiteException -> 0x0097 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLiteException -> 0x0097 }
            java.lang.Object r3 = r0.get(r3)     // Catch:{ SQLiteException -> 0x0097 }
            java.util.List r3 = (java.util.List) r3     // Catch:{ SQLiteException -> 0x0097 }
            if (r3 != 0) goto L_0x0075
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ SQLiteException -> 0x0097 }
            r3.<init>()     // Catch:{ SQLiteException -> 0x0097 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLiteException -> 0x0097 }
            r0.put(r1, r3)     // Catch:{ SQLiteException -> 0x0097 }
        L_0x0075:
            r3.add(r2)     // Catch:{ SQLiteException -> 0x0097 }
            goto L_0x008b
        L_0x0079:
            r1 = move-exception
            com.google.android.gms.internal.iz r2 = r12.zzawy()     // Catch:{ SQLiteException -> 0x0097 }
            com.google.android.gms.internal.jb r2 = r2.zzazd()     // Catch:{ SQLiteException -> 0x0097 }
            java.lang.String r3 = "Failed to merge filter. appId"
            java.lang.Object r4 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ SQLiteException -> 0x0097 }
            r2.zze(r3, r4, r1)     // Catch:{ SQLiteException -> 0x0097 }
        L_0x008b:
            boolean r1 = r14.moveToNext()     // Catch:{ SQLiteException -> 0x0097 }
            if (r1 != 0) goto L_0x0048
            if (r14 == 0) goto L_0x0096
            r14.close()
        L_0x0096:
            return r0
        L_0x0097:
            r0 = move-exception
            goto L_0x009e
        L_0x0099:
            r13 = move-exception
            r14 = r9
            goto L_0x00b6
        L_0x009c:
            r0 = move-exception
            r14 = r9
        L_0x009e:
            com.google.android.gms.internal.iz r1 = r12.zzawy()     // Catch:{ all -> 0x00b5 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x00b5 }
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ all -> 0x00b5 }
            r1.zze(r2, r13, r0)     // Catch:{ all -> 0x00b5 }
            if (r14 == 0) goto L_0x00b4
            r14.close()
        L_0x00b4:
            return r9
        L_0x00b5:
            r13 = move-exception
        L_0x00b6:
            if (r14 == 0) goto L_0x00bb
            r14.close()
        L_0x00bb:
            goto L_0x00bd
        L_0x00bc:
            throw r13
        L_0x00bd:
            goto L_0x00bc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.a(java.lang.String, java.lang.String):java.util.Map");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0094, code lost:
        r9.zze(r12, r13, r10);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r17, com.google.android.gms.internal.nb[] r18) {
        /*
            r16 = this;
            r1 = r16
            r0 = r17
            r2 = r18
            java.lang.String r3 = "app_id=? and audience_id=?"
            java.lang.String r4 = "event_filters"
            java.lang.String r5 = "app_id=?"
            java.lang.String r6 = "property_filters"
            r16.k()
            r16.zzve()
            com.google.android.gms.common.internal.ap.zzgm(r17)
            com.google.android.gms.common.internal.ap.checkNotNull(r18)
            android.database.sqlite.SQLiteDatabase r7 = r16.b()
            r7.beginTransaction()
            r16.k()     // Catch:{ all -> 0x0132 }
            r16.zzve()     // Catch:{ all -> 0x0132 }
            com.google.android.gms.common.internal.ap.zzgm(r17)     // Catch:{ all -> 0x0132 }
            android.database.sqlite.SQLiteDatabase r8 = r16.b()     // Catch:{ all -> 0x0132 }
            r9 = 1
            java.lang.String[] r10 = new java.lang.String[r9]     // Catch:{ all -> 0x0132 }
            r11 = 0
            r10[r11] = r0     // Catch:{ all -> 0x0132 }
            r8.delete(r6, r5, r10)     // Catch:{ all -> 0x0132 }
            java.lang.String[] r10 = new java.lang.String[r9]     // Catch:{ all -> 0x0132 }
            r10[r11] = r0     // Catch:{ all -> 0x0132 }
            r8.delete(r4, r5, r10)     // Catch:{ all -> 0x0132 }
            int r5 = r2.length     // Catch:{ all -> 0x0132 }
            r8 = 0
        L_0x0040:
            if (r8 >= r5) goto L_0x0116
            r10 = r2[r8]     // Catch:{ all -> 0x0132 }
            r16.k()     // Catch:{ all -> 0x0132 }
            r16.zzve()     // Catch:{ all -> 0x0132 }
            com.google.android.gms.common.internal.ap.zzgm(r17)     // Catch:{ all -> 0x0132 }
            com.google.android.gms.common.internal.ap.checkNotNull(r10)     // Catch:{ all -> 0x0132 }
            com.google.android.gms.internal.nc[] r12 = r10.zzjju     // Catch:{ all -> 0x0132 }
            com.google.android.gms.common.internal.ap.checkNotNull(r12)     // Catch:{ all -> 0x0132 }
            com.google.android.gms.internal.nf[] r12 = r10.zzjjt     // Catch:{ all -> 0x0132 }
            com.google.android.gms.common.internal.ap.checkNotNull(r12)     // Catch:{ all -> 0x0132 }
            java.lang.Integer r12 = r10.zzjjs     // Catch:{ all -> 0x0132 }
            if (r12 != 0) goto L_0x0072
            com.google.android.gms.internal.iz r10 = r16.zzawy()     // Catch:{ all -> 0x0132 }
            com.google.android.gms.internal.jb r10 = r10.zzazf()     // Catch:{ all -> 0x0132 }
            java.lang.String r12 = "Audience with no ID. appId"
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r17)     // Catch:{ all -> 0x0132 }
            r10.zzj(r12, r13)     // Catch:{ all -> 0x0132 }
        L_0x006f:
            r13 = 1
            goto L_0x0111
        L_0x0072:
            java.lang.Integer r12 = r10.zzjjs     // Catch:{ all -> 0x0132 }
            int r12 = r12.intValue()     // Catch:{ all -> 0x0132 }
            com.google.android.gms.internal.nc[] r13 = r10.zzjju     // Catch:{ all -> 0x0132 }
            int r14 = r13.length     // Catch:{ all -> 0x0132 }
            r15 = 0
        L_0x007c:
            if (r15 >= r14) goto L_0x009c
            r9 = r13[r15]     // Catch:{ all -> 0x0132 }
            java.lang.Integer r9 = r9.zzjjw     // Catch:{ all -> 0x0132 }
            if (r9 != 0) goto L_0x0098
            com.google.android.gms.internal.iz r9 = r16.zzawy()     // Catch:{ all -> 0x0132 }
            com.google.android.gms.internal.jb r9 = r9.zzazf()     // Catch:{ all -> 0x0132 }
            java.lang.String r12 = "Event filter with no ID. Audience definition ignored. appId, audienceId"
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r17)     // Catch:{ all -> 0x0132 }
            java.lang.Integer r10 = r10.zzjjs     // Catch:{ all -> 0x0132 }
        L_0x0094:
            r9.zze(r12, r13, r10)     // Catch:{ all -> 0x0132 }
            goto L_0x006f
        L_0x0098:
            int r15 = r15 + 1
            r9 = 1
            goto L_0x007c
        L_0x009c:
            com.google.android.gms.internal.nf[] r9 = r10.zzjjt     // Catch:{ all -> 0x0132 }
            int r13 = r9.length     // Catch:{ all -> 0x0132 }
            r14 = 0
        L_0x00a0:
            if (r14 >= r13) goto L_0x00bc
            r15 = r9[r14]     // Catch:{ all -> 0x0132 }
            java.lang.Integer r15 = r15.zzjjw     // Catch:{ all -> 0x0132 }
            if (r15 != 0) goto L_0x00b9
            com.google.android.gms.internal.iz r9 = r16.zzawy()     // Catch:{ all -> 0x0132 }
            com.google.android.gms.internal.jb r9 = r9.zzazf()     // Catch:{ all -> 0x0132 }
            java.lang.String r12 = "Property filter with no ID. Audience definition ignored. appId, audienceId"
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r17)     // Catch:{ all -> 0x0132 }
            java.lang.Integer r10 = r10.zzjjs     // Catch:{ all -> 0x0132 }
            goto L_0x0094
        L_0x00b9:
            int r14 = r14 + 1
            goto L_0x00a0
        L_0x00bc:
            com.google.android.gms.internal.nc[] r9 = r10.zzjju     // Catch:{ all -> 0x0132 }
            int r13 = r9.length     // Catch:{ all -> 0x0132 }
            r14 = 0
        L_0x00c0:
            if (r14 >= r13) goto L_0x00cf
            r15 = r9[r14]     // Catch:{ all -> 0x0132 }
            boolean r15 = r1.a((java.lang.String) r0, (int) r12, (com.google.android.gms.internal.nc) r15)     // Catch:{ all -> 0x0132 }
            if (r15 != 0) goto L_0x00cc
            r9 = 0
            goto L_0x00d0
        L_0x00cc:
            int r14 = r14 + 1
            goto L_0x00c0
        L_0x00cf:
            r9 = 1
        L_0x00d0:
            if (r9 == 0) goto L_0x00e5
            com.google.android.gms.internal.nf[] r10 = r10.zzjjt     // Catch:{ all -> 0x0132 }
            int r13 = r10.length     // Catch:{ all -> 0x0132 }
            r14 = 0
        L_0x00d6:
            if (r14 >= r13) goto L_0x00e5
            r15 = r10[r14]     // Catch:{ all -> 0x0132 }
            boolean r15 = r1.a((java.lang.String) r0, (int) r12, (com.google.android.gms.internal.nf) r15)     // Catch:{ all -> 0x0132 }
            if (r15 != 0) goto L_0x00e2
            r9 = 0
            goto L_0x00e5
        L_0x00e2:
            int r14 = r14 + 1
            goto L_0x00d6
        L_0x00e5:
            if (r9 != 0) goto L_0x006f
            r16.k()     // Catch:{ all -> 0x0132 }
            r16.zzve()     // Catch:{ all -> 0x0132 }
            com.google.android.gms.common.internal.ap.zzgm(r17)     // Catch:{ all -> 0x0132 }
            android.database.sqlite.SQLiteDatabase r9 = r16.b()     // Catch:{ all -> 0x0132 }
            r10 = 2
            java.lang.String[] r13 = new java.lang.String[r10]     // Catch:{ all -> 0x0132 }
            r13[r11] = r0     // Catch:{ all -> 0x0132 }
            java.lang.String r14 = java.lang.String.valueOf(r12)     // Catch:{ all -> 0x0132 }
            r15 = 1
            r13[r15] = r14     // Catch:{ all -> 0x0132 }
            r9.delete(r6, r3, r13)     // Catch:{ all -> 0x0132 }
            java.lang.String[] r10 = new java.lang.String[r10]     // Catch:{ all -> 0x0132 }
            r10[r11] = r0     // Catch:{ all -> 0x0132 }
            java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch:{ all -> 0x0132 }
            r13 = 1
            r10[r13] = r12     // Catch:{ all -> 0x0132 }
            r9.delete(r4, r3, r10)     // Catch:{ all -> 0x0132 }
        L_0x0111:
            int r8 = r8 + 1
            r9 = 1
            goto L_0x0040
        L_0x0116:
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ all -> 0x0132 }
            r3.<init>()     // Catch:{ all -> 0x0132 }
            int r4 = r2.length     // Catch:{ all -> 0x0132 }
        L_0x011c:
            if (r11 >= r4) goto L_0x0128
            r5 = r2[r11]     // Catch:{ all -> 0x0132 }
            java.lang.Integer r5 = r5.zzjjs     // Catch:{ all -> 0x0132 }
            r3.add(r5)     // Catch:{ all -> 0x0132 }
            int r11 = r11 + 1
            goto L_0x011c
        L_0x0128:
            r1.a((java.lang.String) r0, (java.util.List<java.lang.Integer>) r3)     // Catch:{ all -> 0x0132 }
            r7.setTransactionSuccessful()     // Catch:{ all -> 0x0132 }
            r7.endTransaction()
            return
        L_0x0132:
            r0 = move-exception
            r7.endTransaction()
            goto L_0x0138
        L_0x0137:
            throw r0
        L_0x0138:
            goto L_0x0137
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.a(java.lang.String, com.google.android.gms.internal.nb[]):void");
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public final SQLiteDatabase b() {
        zzve();
        try {
            return this.h.getWritableDatabase();
        } catch (SQLiteException e) {
            zzawy().zzazf().zzj("Error opening database", e);
            throw e;
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.nf>> b(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.k()
            r12.zzve()
            com.google.android.gms.common.internal.ap.zzgm(r13)
            com.google.android.gms.common.internal.ap.zzgm(r14)
            androidx.collection.ArrayMap r0 = new androidx.collection.ArrayMap
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.b()
            r9 = 0
            java.lang.String r2 = "property_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            java.lang.String r5 = "app_id=? AND property_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            r6[r10] = r13     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            r6[r11] = r14     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x009c, all -> 0x0099 }
            boolean r1 = r14.moveToFirst()     // Catch:{ SQLiteException -> 0x0097 }
            if (r1 != 0) goto L_0x0048
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch:{ SQLiteException -> 0x0097 }
            if (r14 == 0) goto L_0x0047
            r14.close()
        L_0x0047:
            return r13
        L_0x0048:
            byte[] r1 = r14.getBlob(r11)     // Catch:{ SQLiteException -> 0x0097 }
            int r2 = r1.length     // Catch:{ SQLiteException -> 0x0097 }
            com.google.android.gms.internal.so r1 = com.google.android.gms.internal.so.zzn(r1, r10, r2)     // Catch:{ SQLiteException -> 0x0097 }
            com.google.android.gms.internal.nf r2 = new com.google.android.gms.internal.nf     // Catch:{ SQLiteException -> 0x0097 }
            r2.<init>()     // Catch:{ SQLiteException -> 0x0097 }
            r2.zza((com.google.android.gms.internal.so) r1)     // Catch:{ IOException -> 0x0079 }
            int r1 = r14.getInt(r10)     // Catch:{ SQLiteException -> 0x0097 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLiteException -> 0x0097 }
            java.lang.Object r3 = r0.get(r3)     // Catch:{ SQLiteException -> 0x0097 }
            java.util.List r3 = (java.util.List) r3     // Catch:{ SQLiteException -> 0x0097 }
            if (r3 != 0) goto L_0x0075
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ SQLiteException -> 0x0097 }
            r3.<init>()     // Catch:{ SQLiteException -> 0x0097 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLiteException -> 0x0097 }
            r0.put(r1, r3)     // Catch:{ SQLiteException -> 0x0097 }
        L_0x0075:
            r3.add(r2)     // Catch:{ SQLiteException -> 0x0097 }
            goto L_0x008b
        L_0x0079:
            r1 = move-exception
            com.google.android.gms.internal.iz r2 = r12.zzawy()     // Catch:{ SQLiteException -> 0x0097 }
            com.google.android.gms.internal.jb r2 = r2.zzazd()     // Catch:{ SQLiteException -> 0x0097 }
            java.lang.String r3 = "Failed to merge filter"
            java.lang.Object r4 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ SQLiteException -> 0x0097 }
            r2.zze(r3, r4, r1)     // Catch:{ SQLiteException -> 0x0097 }
        L_0x008b:
            boolean r1 = r14.moveToNext()     // Catch:{ SQLiteException -> 0x0097 }
            if (r1 != 0) goto L_0x0048
            if (r14 == 0) goto L_0x0096
            r14.close()
        L_0x0096:
            return r0
        L_0x0097:
            r0 = move-exception
            goto L_0x009e
        L_0x0099:
            r13 = move-exception
            r14 = r9
            goto L_0x00b6
        L_0x009c:
            r0 = move-exception
            r14 = r9
        L_0x009e:
            com.google.android.gms.internal.iz r1 = r12.zzawy()     // Catch:{ all -> 0x00b5 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x00b5 }
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ all -> 0x00b5 }
            r1.zze(r2, r13, r0)     // Catch:{ all -> 0x00b5 }
            if (r14 == 0) goto L_0x00b4
            r14.close()
        L_0x00b4:
            return r9
        L_0x00b5:
            r13 = move-exception
        L_0x00b6:
            if (r14 == 0) goto L_0x00bb
            r14.close()
        L_0x00bb:
            goto L_0x00bd
        L_0x00bc:
            throw r13
        L_0x00bd:
            goto L_0x00bc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.b(java.lang.String, java.lang.String):java.util.Map");
    }

    public final void beginTransaction() {
        k();
        b().beginTransaction();
    }

    /* access modifiers changed from: protected */
    public final long c(String str, String str2) {
        long j;
        String str3 = str;
        String str4 = str2;
        ap.zzgm(str);
        ap.zzgm(str2);
        zzve();
        k();
        SQLiteDatabase b2 = b();
        b2.beginTransaction();
        try {
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 32);
            sb.append("select ");
            sb.append(str4);
            sb.append(" from app2 where app_id=?");
            try {
                j = a(sb.toString(), new String[]{str3}, -1);
                if (j == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str3);
                    contentValues.put("first_open_count", 0);
                    contentValues.put("previous_install_count", 0);
                    if (b2.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        zzawy().zzazd().zze("Failed to insert column (got -1). appId", iz.a(str), str4);
                        b2.endTransaction();
                        return -1;
                    }
                    j = 0;
                }
                try {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("app_id", str3);
                    contentValues2.put(str4, Long.valueOf(1 + j));
                    if (((long) b2.update("app2", contentValues2, "app_id = ?", new String[]{str3})) == 0) {
                        zzawy().zzazd().zze("Failed to update column (got 0). appId", iz.a(str), str4);
                        b2.endTransaction();
                        return -1;
                    }
                    b2.setTransactionSuccessful();
                    b2.endTransaction();
                    return j;
                } catch (SQLiteException e) {
                    e = e;
                }
            } catch (SQLiteException e2) {
                e = e2;
                j = 0;
                try {
                    zzawy().zzazd().zzd("Error inserting column. appId", iz.a(str), str4, e);
                    b2.endTransaction();
                    return j;
                } catch (Throwable th) {
                    th = th;
                    b2.endTransaction();
                    throw th;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            j = 0;
            zzawy().zzazd().zzd("Error inserting column. appId", iz.a(str), str4, e);
            b2.endTransaction();
            return j;
        } catch (Throwable th2) {
            th = th2;
            b2.endTransaction();
            throw th;
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        zzve();
        k();
        if (l()) {
            long j = zzawz().zzjcu.get();
            long elapsedRealtime = zzws().elapsedRealtime();
            if (Math.abs(elapsedRealtime - j) > ip.zzjbb.get().longValue()) {
                zzawz().zzjcu.set(elapsedRealtime);
                zzve();
                k();
                if (l()) {
                    int delete = b().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzws().currentTimeMillis()), String.valueOf(ic.zzayb())});
                    if (delete > 0) {
                        zzawy().zzazj().zzj("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    public final void endTransaction() {
        k();
        b().endTransaction();
    }

    public final void setTransactionSuccessful() {
        k();
        b().setTransactionSuccessful();
    }

    public final long zza(no noVar) throws IOException {
        long j;
        zzve();
        k();
        ap.checkNotNull(noVar);
        ap.zzgm(noVar.zzcn);
        try {
            byte[] bArr = new byte[noVar.zzho()];
            sp zzo = sp.zzo(bArr, 0, bArr.length);
            noVar.zza(zzo);
            zzo.zzcwt();
            na zzawu = zzawu();
            ap.checkNotNull(bArr);
            zzawu.zzve();
            MessageDigest b2 = na.b("MD5");
            if (b2 == null) {
                zzawu.zzawy().zzazd().log("Failed to get MD5");
                j = 0;
            } else {
                j = na.a(b2.digest(bArr));
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", noVar.zzcn);
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("metadata", bArr);
            try {
                b().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return j;
            } catch (SQLiteException e) {
                zzawy().zzazd().zze("Error storing raw event metadata. appId", iz.a(noVar.zzcn), e);
                throw e;
            }
        } catch (IOException e2) {
            zzawy().zzazd().zze("Data loss. Failed to serialize event metadata. appId", iz.a(noVar.zzcn), e2);
            throw e2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0123  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x012a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.ie zza(long r22, java.lang.String r24, boolean r25, boolean r26, boolean r27, boolean r28, boolean r29) {
        /*
            r21 = this;
            java.lang.String r0 = "daily_realtime_events_count"
            java.lang.String r1 = "daily_error_events_count"
            java.lang.String r2 = "daily_conversions_count"
            java.lang.String r3 = "daily_public_events_count"
            java.lang.String r4 = "daily_events_count"
            java.lang.String r5 = "day"
            com.google.android.gms.common.internal.ap.zzgm(r24)
            r21.zzve()
            r21.k()
            r6 = 1
            java.lang.String[] r7 = new java.lang.String[r6]
            r8 = 0
            r7[r8] = r24
            com.google.android.gms.internal.ie r9 = new com.google.android.gms.internal.ie
            r9.<init>()
            android.database.sqlite.SQLiteDatabase r15 = r21.b()     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            java.lang.String r12 = "apps"
            r11 = 6
            java.lang.String[] r13 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            r13[r8] = r5     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            r13[r6] = r4     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            r14 = 2
            r13[r14] = r3     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            r11 = 3
            r13[r11] = r2     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            r10 = 4
            r13[r10] = r1     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            r10 = 5
            r13[r10] = r0     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            java.lang.String r16 = "app_id=?"
            java.lang.String[] r10 = new java.lang.String[r6]     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            r10[r8] = r24     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            r17 = 0
            r18 = 0
            r19 = 0
            r11 = r15
            r14 = r16
            r20 = r15
            r15 = r10
            r16 = r17
            r17 = r18
            r18 = r19
            android.database.Cursor r10 = r11.query(r12, r13, r14, r15, r16, r17, r18)     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
            boolean r11 = r10.moveToFirst()     // Catch:{ SQLiteException -> 0x0109 }
            if (r11 != 0) goto L_0x0072
            com.google.android.gms.internal.iz r0 = r21.zzawy()     // Catch:{ SQLiteException -> 0x0109 }
            com.google.android.gms.internal.jb r0 = r0.zzazf()     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.String r1 = "Not updating daily counts, app is not known. appId"
            java.lang.Object r2 = com.google.android.gms.internal.iz.a((java.lang.String) r24)     // Catch:{ SQLiteException -> 0x0109 }
            r0.zzj(r1, r2)     // Catch:{ SQLiteException -> 0x0109 }
            if (r10 == 0) goto L_0x0071
            r10.close()
        L_0x0071:
            return r9
        L_0x0072:
            long r11 = r10.getLong(r8)     // Catch:{ SQLiteException -> 0x0109 }
            int r8 = (r11 > r22 ? 1 : (r11 == r22 ? 0 : -1))
            if (r8 != 0) goto L_0x009c
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.f3204b = r11     // Catch:{ SQLiteException -> 0x0109 }
            r6 = 2
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.f3203a = r11     // Catch:{ SQLiteException -> 0x0109 }
            r6 = 3
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.c = r11     // Catch:{ SQLiteException -> 0x0109 }
            r6 = 4
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.d = r11     // Catch:{ SQLiteException -> 0x0109 }
            r6 = 5
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.e = r11     // Catch:{ SQLiteException -> 0x0109 }
        L_0x009c:
            r11 = 1
            if (r25 == 0) goto L_0x00a5
            long r13 = r9.f3204b     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.f3204b = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00a5:
            if (r26 == 0) goto L_0x00ac
            long r13 = r9.f3203a     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.f3203a = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00ac:
            if (r27 == 0) goto L_0x00b3
            long r13 = r9.c     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.c = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00b3:
            if (r28 == 0) goto L_0x00ba
            long r13 = r9.d     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.d = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00ba:
            if (r29 == 0) goto L_0x00c1
            long r13 = r9.e     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.e = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00c1:
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch:{ SQLiteException -> 0x0109 }
            r6.<init>()     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r8 = java.lang.Long.valueOf(r22)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r5, r8)     // Catch:{ SQLiteException -> 0x0109 }
            long r11 = r9.f3203a     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r5 = java.lang.Long.valueOf(r11)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r3, r5)     // Catch:{ SQLiteException -> 0x0109 }
            long r11 = r9.f3204b     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r3 = java.lang.Long.valueOf(r11)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r4, r3)     // Catch:{ SQLiteException -> 0x0109 }
            long r3 = r9.c     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r2, r3)     // Catch:{ SQLiteException -> 0x0109 }
            long r2 = r9.d     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r1, r2)     // Catch:{ SQLiteException -> 0x0109 }
            long r1 = r9.e     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r0, r1)     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.String r0 = "apps"
            java.lang.String r1 = "app_id=?"
            r2 = r20
            r2.update(r0, r6, r1, r7)     // Catch:{ SQLiteException -> 0x0109 }
            if (r10 == 0) goto L_0x0108
            r10.close()
        L_0x0108:
            return r9
        L_0x0109:
            r0 = move-exception
            goto L_0x0110
        L_0x010b:
            r0 = move-exception
            r10 = 0
            goto L_0x0128
        L_0x010e:
            r0 = move-exception
            r10 = 0
        L_0x0110:
            com.google.android.gms.internal.iz r1 = r21.zzawy()     // Catch:{ all -> 0x0127 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x0127 }
            java.lang.String r2 = "Error updating daily counts. appId"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r24)     // Catch:{ all -> 0x0127 }
            r1.zze(r2, r3, r0)     // Catch:{ all -> 0x0127 }
            if (r10 == 0) goto L_0x0126
            r10.close()
        L_0x0126:
            return r9
        L_0x0127:
            r0 = move-exception
        L_0x0128:
            if (r10 == 0) goto L_0x012d
            r10.close()
        L_0x012d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zza(long, java.lang.String, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.internal.ie");
    }

    public final void zza(hy hyVar) {
        ap.checkNotNull(hyVar);
        zzve();
        k();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", hyVar.getAppId());
        contentValues.put("app_instance_id", hyVar.getAppInstanceId());
        contentValues.put("gmp_app_id", hyVar.getGmpAppId());
        contentValues.put("resettable_device_id_hash", hyVar.zzaxc());
        contentValues.put("last_bundle_index", Long.valueOf(hyVar.zzaxl()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(hyVar.zzaxe()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(hyVar.zzaxf()));
        contentValues.put("app_version", hyVar.zzvj());
        contentValues.put("app_store", hyVar.zzaxh());
        contentValues.put("gmp_version", Long.valueOf(hyVar.zzaxi()));
        contentValues.put("dev_cert_hash", Long.valueOf(hyVar.zzaxj()));
        contentValues.put("measurement_enabled", Boolean.valueOf(hyVar.zzaxk()));
        contentValues.put("day", Long.valueOf(hyVar.zzaxp()));
        contentValues.put("daily_public_events_count", Long.valueOf(hyVar.zzaxq()));
        contentValues.put("daily_events_count", Long.valueOf(hyVar.zzaxr()));
        contentValues.put("daily_conversions_count", Long.valueOf(hyVar.zzaxs()));
        contentValues.put("config_fetched_time", Long.valueOf(hyVar.zzaxm()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(hyVar.zzaxn()));
        contentValues.put("app_version_int", Long.valueOf(hyVar.zzaxg()));
        contentValues.put("firebase_instance_id", hyVar.zzaxd());
        contentValues.put("daily_error_events_count", Long.valueOf(hyVar.zzaxu()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(hyVar.zzaxt()));
        contentValues.put("health_monitor_sample", hyVar.zzaxv());
        contentValues.put("android_id", Long.valueOf(hyVar.zzaxx()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(hyVar.zzaxy()));
        try {
            SQLiteDatabase b2 = b();
            if (((long) b2.update("apps", contentValues, "app_id = ?", new String[]{hyVar.getAppId()})) == 0 && b2.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzawy().zzazd().zzj("Failed to insert/update app (got -1). appId", iz.a(hyVar.getAppId()));
            }
        } catch (SQLiteException e) {
            zzawy().zzazd().zze("Error storing app. appId", iz.a(hyVar.getAppId()), e);
        }
    }

    public final void zza(il ilVar) {
        ap.checkNotNull(ilVar);
        zzve();
        k();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", ilVar.f3213a);
        contentValues.put("name", ilVar.f3214b);
        contentValues.put("lifetime_count", Long.valueOf(ilVar.c));
        contentValues.put("current_bundle_count", Long.valueOf(ilVar.d));
        contentValues.put("last_fire_timestamp", Long.valueOf(ilVar.e));
        contentValues.put("last_bundled_timestamp", Long.valueOf(ilVar.f));
        contentValues.put("last_sampled_complex_event_id", ilVar.g);
        contentValues.put("last_sampling_rate", ilVar.h);
        contentValues.put("last_exempt_from_sampling", (ilVar.i == null || !ilVar.i.booleanValue()) ? null : 1L);
        try {
            if (b().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzawy().zzazd().zzj("Failed to insert/update event aggregates (got -1). appId", iz.a(ilVar.f3213a));
            }
        } catch (SQLiteException e) {
            zzawy().zzazd().zze("Error storing event aggregates. appId", iz.a(ilVar.f3213a), e);
        }
    }

    public final boolean zza(ik ikVar, long j, boolean z) {
        jb zzazd;
        Object a2;
        String str;
        zzve();
        k();
        ap.checkNotNull(ikVar);
        ap.zzgm(ikVar.f3211a);
        nl nlVar = new nl();
        nlVar.zzjlj = Long.valueOf(ikVar.d);
        nlVar.zzjlh = new nm[ikVar.e.size()];
        Iterator<String> it = ikVar.e.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String next = it.next();
            nm nmVar = new nm();
            int i3 = i2 + 1;
            nlVar.zzjlh[i2] = nmVar;
            nmVar.name = next;
            zzawu().zza(nmVar, ikVar.e.a(next));
            i2 = i3;
        }
        try {
            byte[] bArr = new byte[nlVar.zzho()];
            sp zzo = sp.zzo(bArr, 0, bArr.length);
            nlVar.zza(zzo);
            zzo.zzcwt();
            zzawy().zzazj().zze("Saving event, name, data size", zzawt().a(ikVar.f3212b), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", ikVar.f3211a);
            contentValues.put("name", ikVar.f3212b);
            contentValues.put(AppMeasurement.d.TIMESTAMP, Long.valueOf(ikVar.c));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("data", bArr);
            contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
            try {
                if (b().insert("raw_events", null, contentValues) != -1) {
                    return true;
                }
                zzawy().zzazd().zzj("Failed to insert raw event (got -1). appId", iz.a(ikVar.f3211a));
                return false;
            } catch (SQLiteException e) {
                e = e;
                zzazd = zzawy().zzazd();
                a2 = iz.a(ikVar.f3211a);
                str = "Error storing raw event. appId";
                zzazd.zze(str, a2, e);
                return false;
            }
        } catch (IOException e2) {
            e = e2;
            zzazd = zzawy().zzazd();
            a2 = iz.a(ikVar.f3211a);
            str = "Data loss. Failed to serialize event params/data. appId";
            zzazd.zze(str, a2, e);
            return false;
        }
    }

    public final boolean zza(mz mzVar) {
        ap.checkNotNull(mzVar);
        zzve();
        k();
        if (zzag(mzVar.f3408a, mzVar.c) == null) {
            if (na.a(mzVar.c)) {
                if (a("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{mzVar.f3408a}) >= 25) {
                    return false;
                }
            } else {
                if (a("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{mzVar.f3408a, mzVar.f3409b}) >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", mzVar.f3408a);
        contentValues.put(FirebaseAnalytics.b.ORIGIN, mzVar.f3409b);
        contentValues.put("name", mzVar.c);
        contentValues.put("set_timestamp", Long.valueOf(mzVar.d));
        a(contentValues, FirebaseAnalytics.b.VALUE, mzVar.e);
        try {
            if (b().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzawy().zzazd().zzj("Failed to insert/update user property (got -1). appId", iz.a(mzVar.f3408a));
            }
        } catch (SQLiteException e) {
            zzawy().zzazd().zze("Error storing user property. appId", iz.a(mzVar.f3408a), e);
        }
        return true;
    }

    public final boolean zza(no noVar, boolean z) {
        jb zzazd;
        Object a2;
        String str;
        zzve();
        k();
        ap.checkNotNull(noVar);
        ap.zzgm(noVar.zzcn);
        ap.checkNotNull(noVar.zzjlt);
        c();
        long currentTimeMillis = zzws().currentTimeMillis();
        if (noVar.zzjlt.longValue() < currentTimeMillis - ic.zzayb() || noVar.zzjlt.longValue() > ic.zzayb() + currentTimeMillis) {
            zzawy().zzazf().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", iz.a(noVar.zzcn), Long.valueOf(currentTimeMillis), noVar.zzjlt);
        }
        try {
            byte[] bArr = new byte[noVar.zzho()];
            sp zzo = sp.zzo(bArr, 0, bArr.length);
            noVar.zza(zzo);
            zzo.zzcwt();
            byte[] zzq = zzawu().zzq(bArr);
            zzawy().zzazj().zzj("Saving bundle, size", Integer.valueOf(zzq.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", noVar.zzcn);
            contentValues.put("bundle_end_timestamp", noVar.zzjlt);
            contentValues.put("data", zzq);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            try {
                if (b().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzawy().zzazd().zzj("Failed to insert bundle (got -1). appId", iz.a(noVar.zzcn));
                return false;
            } catch (SQLiteException e) {
                e = e;
                zzazd = zzawy().zzazd();
                a2 = iz.a(noVar.zzcn);
                str = "Error storing bundle. appId";
                zzazd.zze(str, a2, e);
                return false;
            }
        } catch (IOException e2) {
            e = e2;
            zzazd = zzawy().zzazd();
            a2 = iz.a(noVar.zzcn);
            str = "Data loss. Failed to serialize bundle. appId";
            zzazd.zze(str, a2, e);
            return false;
        }
    }

    public final boolean zza(zzcgl zzcgl) {
        ap.checkNotNull(zzcgl);
        zzve();
        k();
        if (zzag(zzcgl.packageName, zzcgl.zziyg.name) == null) {
            if (a("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzcgl.packageName}) >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzcgl.packageName);
        contentValues.put(FirebaseAnalytics.b.ORIGIN, zzcgl.zziyf);
        contentValues.put("name", zzcgl.zziyg.name);
        a(contentValues, FirebaseAnalytics.b.VALUE, zzcgl.zziyg.getValue());
        contentValues.put("active", Boolean.valueOf(zzcgl.zziyi));
        contentValues.put("trigger_event_name", zzcgl.zziyj);
        contentValues.put("trigger_timeout", Long.valueOf(zzcgl.zziyl));
        zzawu();
        contentValues.put("timed_out_event", na.a((Parcelable) zzcgl.zziyk));
        contentValues.put("creation_timestamp", Long.valueOf(zzcgl.zziyh));
        zzawu();
        contentValues.put("triggered_event", na.a((Parcelable) zzcgl.zziym));
        contentValues.put("triggered_timestamp", Long.valueOf(zzcgl.zziyg.zzjji));
        contentValues.put("time_to_live", Long.valueOf(zzcgl.zziyn));
        zzawu();
        contentValues.put("expired_event", na.a((Parcelable) zzcgl.zziyo));
        try {
            if (b().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzawy().zzazd().zzj("Failed to insert/update conditional user property (got -1)", iz.a(zzcgl.packageName));
            }
        } catch (SQLiteException e) {
            zzawy().zzazd().zze("Error storing conditional user property", iz.a(zzcgl.packageName), e);
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x010a  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0111  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.il zzae(java.lang.String r23, java.lang.String r24) {
        /*
            r22 = this;
            r15 = r24
            com.google.android.gms.common.internal.ap.zzgm(r23)
            com.google.android.gms.common.internal.ap.zzgm(r24)
            r22.zzve()
            r22.k()
            r16 = 0
            android.database.sqlite.SQLiteDatabase r1 = r22.b()     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r2 = "events"
            r0 = 7
            java.lang.String[] r3 = new java.lang.String[r0]     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r0 = "lifetime_count"
            r9 = 0
            r3[r9] = r0     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r0 = "current_bundle_count"
            r10 = 1
            r3[r10] = r0     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r0 = "last_fire_timestamp"
            r11 = 2
            r3[r11] = r0     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r0 = "last_bundled_timestamp"
            r12 = 3
            r3[r12] = r0     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r0 = "last_sampled_complex_event_id"
            r13 = 4
            r3[r13] = r0     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r0 = "last_sampling_rate"
            r14 = 5
            r3[r14] = r0     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r0 = "last_exempt_from_sampling"
            r8 = 6
            r3[r8] = r0     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            java.lang.String r4 = "app_id=? and name=?"
            java.lang.String[] r5 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            r5[r9] = r23     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            r5[r10] = r15     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            r6 = 0
            r7 = 0
            r0 = 0
            r8 = r0
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x00ec, all -> 0x00e8 }
            boolean r0 = r8.moveToFirst()     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            if (r0 != 0) goto L_0x0058
            if (r8 == 0) goto L_0x0057
            r8.close()
        L_0x0057:
            return r16
        L_0x0058:
            long r4 = r8.getLong(r9)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            long r6 = r8.getLong(r10)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            long r18 = r8.getLong(r11)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            boolean r0 = r8.isNull(r12)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            if (r0 == 0) goto L_0x006d
            r0 = 0
            goto L_0x0071
        L_0x006d:
            long r0 = r8.getLong(r12)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
        L_0x0071:
            r11 = r0
            boolean r0 = r8.isNull(r13)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            if (r0 == 0) goto L_0x007b
            r0 = r16
            goto L_0x0083
        L_0x007b:
            long r0 = r8.getLong(r13)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
        L_0x0083:
            boolean r1 = r8.isNull(r14)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            if (r1 == 0) goto L_0x008d
            r13 = r16
        L_0x008b:
            r1 = 6
            goto L_0x0097
        L_0x008d:
            long r1 = r8.getLong(r14)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            r13 = r1
            goto L_0x008b
        L_0x0097:
            boolean r2 = r8.isNull(r1)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            if (r2 != 0) goto L_0x00ae
            long r1 = r8.getLong(r1)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            r20 = 1
            int r3 = (r1 > r20 ? 1 : (r1 == r20 ? 0 : -1))
            if (r3 != 0) goto L_0x00a8
            r9 = 1
        L_0x00a8:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r9)     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            r14 = r1
            goto L_0x00b0
        L_0x00ae:
            r14 = r16
        L_0x00b0:
            com.google.android.gms.internal.il r17 = new com.google.android.gms.internal.il     // Catch:{ SQLiteException -> 0x00e4, all -> 0x00e0 }
            r1 = r17
            r2 = r23
            r3 = r24
            r20 = r8
            r8 = r18
            r10 = r11
            r12 = r0
            r1.<init>(r2, r3, r4, r6, r8, r10, r12, r13, r14)     // Catch:{ SQLiteException -> 0x00de }
            boolean r0 = r20.moveToNext()     // Catch:{ SQLiteException -> 0x00de }
            if (r0 == 0) goto L_0x00d8
            com.google.android.gms.internal.iz r0 = r22.zzawy()     // Catch:{ SQLiteException -> 0x00de }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ SQLiteException -> 0x00de }
            java.lang.String r1 = "Got multiple records for event aggregates, expected one. appId"
            java.lang.Object r2 = com.google.android.gms.internal.iz.a((java.lang.String) r23)     // Catch:{ SQLiteException -> 0x00de }
            r0.zzj(r1, r2)     // Catch:{ SQLiteException -> 0x00de }
        L_0x00d8:
            if (r20 == 0) goto L_0x00dd
            r20.close()
        L_0x00dd:
            return r17
        L_0x00de:
            r0 = move-exception
            goto L_0x00ef
        L_0x00e0:
            r0 = move-exception
            r20 = r8
            goto L_0x010f
        L_0x00e4:
            r0 = move-exception
            r20 = r8
            goto L_0x00ef
        L_0x00e8:
            r0 = move-exception
            r20 = r16
            goto L_0x010f
        L_0x00ec:
            r0 = move-exception
            r20 = r16
        L_0x00ef:
            com.google.android.gms.internal.iz r1 = r22.zzawy()     // Catch:{ all -> 0x010e }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x010e }
            java.lang.String r2 = "Error querying events. appId"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r23)     // Catch:{ all -> 0x010e }
            com.google.android.gms.internal.ix r4 = r22.zzawt()     // Catch:{ all -> 0x010e }
            java.lang.String r4 = r4.a((java.lang.String) r15)     // Catch:{ all -> 0x010e }
            r1.zzd(r2, r3, r4, r0)     // Catch:{ all -> 0x010e }
            if (r20 == 0) goto L_0x010d
            r20.close()
        L_0x010d:
            return r16
        L_0x010e:
            r0 = move-exception
        L_0x010f:
            if (r20 == 0) goto L_0x0114
            r20.close()
        L_0x0114:
            goto L_0x0116
        L_0x0115:
            throw r0
        L_0x0116:
            goto L_0x0115
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzae(java.lang.String, java.lang.String):com.google.android.gms.internal.il");
    }

    public final void zzaf(String str, String str2) {
        ap.zzgm(str);
        ap.zzgm(str2);
        zzve();
        k();
        try {
            zzawy().zzazj().zzj("Deleted user attribute rows", Integer.valueOf(b().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzawy().zzazd().zzd("Error deleting user attribute. appId", iz.a(str), zzawt().c(str2), e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00ae  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.mz zzag(java.lang.String r19, java.lang.String r20) {
        /*
            r18 = this;
            r8 = r20
            com.google.android.gms.common.internal.ap.zzgm(r19)
            com.google.android.gms.common.internal.ap.zzgm(r20)
            r18.zzve()
            r18.k()
            r9 = 0
            android.database.sqlite.SQLiteDatabase r10 = r18.b()     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            java.lang.String r11 = "user_attributes"
            r0 = 3
            java.lang.String[] r12 = new java.lang.String[r0]     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            java.lang.String r0 = "set_timestamp"
            r1 = 0
            r12[r1] = r0     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            java.lang.String r0 = "value"
            r2 = 1
            r12[r2] = r0     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            java.lang.String r0 = "origin"
            r3 = 2
            r12[r3] = r0     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            java.lang.String r13 = "app_id=? and name=?"
            java.lang.String[] r14 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            r14[r1] = r19     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            r14[r2] = r8     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            r15 = 0
            r16 = 0
            r17 = 0
            android.database.Cursor r10 = r10.query(r11, r12, r13, r14, r15, r16, r17)     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
            boolean r0 = r10.moveToFirst()     // Catch:{ SQLiteException -> 0x007f, all -> 0x007b }
            if (r0 != 0) goto L_0x0044
            if (r10 == 0) goto L_0x0043
            r10.close()
        L_0x0043:
            return r9
        L_0x0044:
            long r5 = r10.getLong(r1)     // Catch:{ SQLiteException -> 0x007f, all -> 0x007b }
            r11 = r18
            java.lang.Object r7 = r11.a((android.database.Cursor) r10, (int) r2)     // Catch:{ SQLiteException -> 0x0079 }
            java.lang.String r3 = r10.getString(r3)     // Catch:{ SQLiteException -> 0x0079 }
            com.google.android.gms.internal.mz r0 = new com.google.android.gms.internal.mz     // Catch:{ SQLiteException -> 0x0079 }
            r1 = r0
            r2 = r19
            r4 = r20
            r1.<init>(r2, r3, r4, r5, r7)     // Catch:{ SQLiteException -> 0x0079 }
            boolean r1 = r10.moveToNext()     // Catch:{ SQLiteException -> 0x0079 }
            if (r1 == 0) goto L_0x0073
            com.google.android.gms.internal.iz r1 = r18.zzawy()     // Catch:{ SQLiteException -> 0x0079 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ SQLiteException -> 0x0079 }
            java.lang.String r2 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r19)     // Catch:{ SQLiteException -> 0x0079 }
            r1.zzj(r2, r3)     // Catch:{ SQLiteException -> 0x0079 }
        L_0x0073:
            if (r10 == 0) goto L_0x0078
            r10.close()
        L_0x0078:
            return r0
        L_0x0079:
            r0 = move-exception
            goto L_0x008c
        L_0x007b:
            r0 = move-exception
            r11 = r18
            goto L_0x00ac
        L_0x007f:
            r0 = move-exception
            r11 = r18
            goto L_0x008c
        L_0x0083:
            r0 = move-exception
            r11 = r18
            r10 = r9
            goto L_0x00ac
        L_0x0088:
            r0 = move-exception
            r11 = r18
            r10 = r9
        L_0x008c:
            com.google.android.gms.internal.iz r1 = r18.zzawy()     // Catch:{ all -> 0x00ab }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x00ab }
            java.lang.String r2 = "Error querying user property. appId"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r19)     // Catch:{ all -> 0x00ab }
            com.google.android.gms.internal.ix r4 = r18.zzawt()     // Catch:{ all -> 0x00ab }
            java.lang.String r4 = r4.c(r8)     // Catch:{ all -> 0x00ab }
            r1.zzd(r2, r3, r4, r0)     // Catch:{ all -> 0x00ab }
            if (r10 == 0) goto L_0x00aa
            r10.close()
        L_0x00aa:
            return r9
        L_0x00ab:
            r0 = move-exception
        L_0x00ac:
            if (r10 == 0) goto L_0x00b1
            r10.close()
        L_0x00b1:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzag(java.lang.String, java.lang.String):com.google.android.gms.internal.mz");
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0155  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.zzcgl zzah(java.lang.String r33, java.lang.String r34) {
        /*
            r32 = this;
            r7 = r34
            com.google.android.gms.common.internal.ap.zzgm(r33)
            com.google.android.gms.common.internal.ap.zzgm(r34)
            r32.zzve()
            r32.k()
            r8 = 0
            android.database.sqlite.SQLiteDatabase r9 = r32.b()     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r10 = "conditional_properties"
            r0 = 11
            java.lang.String[] r11 = new java.lang.String[r0]     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "origin"
            r1 = 0
            r11[r1] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "value"
            r2 = 1
            r11[r2] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "active"
            r3 = 2
            r11[r3] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "trigger_event_name"
            r4 = 3
            r11[r4] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "trigger_timeout"
            r5 = 4
            r11[r5] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "timed_out_event"
            r6 = 5
            r11[r6] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "creation_timestamp"
            r15 = 6
            r11[r15] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "triggered_event"
            r14 = 7
            r11[r14] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "triggered_timestamp"
            r13 = 8
            r11[r13] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "time_to_live"
            r12 = 9
            r11[r12] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "expired_event"
            r6 = 10
            r11[r6] = r0     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            java.lang.String r0 = "app_id=? and name=?"
            java.lang.String[] r13 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            r13[r1] = r33     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            r13[r2] = r7     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            r17 = 0
            r18 = 0
            r19 = 0
            r6 = 9
            r12 = r0
            r0 = 8
            r6 = 7
            r14 = r17
            r0 = 6
            r15 = r18
            r16 = r19
            android.database.Cursor r9 = r9.query(r10, r11, r12, r13, r14, r15, r16)     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
            boolean r10 = r9.moveToFirst()     // Catch:{ SQLiteException -> 0x0126, all -> 0x0122 }
            if (r10 != 0) goto L_0x007e
            if (r9 == 0) goto L_0x007d
            r9.close()
        L_0x007d:
            return r8
        L_0x007e:
            java.lang.String r19 = r9.getString(r1)     // Catch:{ SQLiteException -> 0x0126, all -> 0x0122 }
            r10 = r32
            java.lang.Object r11 = r10.a((android.database.Cursor) r9, (int) r2)     // Catch:{ SQLiteException -> 0x0120 }
            int r3 = r9.getInt(r3)     // Catch:{ SQLiteException -> 0x0120 }
            if (r3 == 0) goto L_0x0091
            r23 = 1
            goto L_0x0093
        L_0x0091:
            r23 = 0
        L_0x0093:
            java.lang.String r24 = r9.getString(r4)     // Catch:{ SQLiteException -> 0x0120 }
            long r26 = r9.getLong(r5)     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.internal.na r1 = r32.zzawu()     // Catch:{ SQLiteException -> 0x0120 }
            r2 = 5
            byte[] r2 = r9.getBlob(r2)     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcha> r3 = com.google.android.gms.internal.zzcha.CREATOR     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable r1 = r1.a((byte[]) r2, r3)     // Catch:{ SQLiteException -> 0x0120 }
            r25 = r1
            com.google.android.gms.internal.zzcha r25 = (com.google.android.gms.internal.zzcha) r25     // Catch:{ SQLiteException -> 0x0120 }
            long r12 = r9.getLong(r0)     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.internal.na r0 = r32.zzawu()     // Catch:{ SQLiteException -> 0x0120 }
            byte[] r1 = r9.getBlob(r6)     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcha> r2 = com.google.android.gms.internal.zzcha.CREATOR     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable r0 = r0.a((byte[]) r1, r2)     // Catch:{ SQLiteException -> 0x0120 }
            r28 = r0
            com.google.android.gms.internal.zzcha r28 = (com.google.android.gms.internal.zzcha) r28     // Catch:{ SQLiteException -> 0x0120 }
            r0 = 8
            long r3 = r9.getLong(r0)     // Catch:{ SQLiteException -> 0x0120 }
            r0 = 9
            long r29 = r9.getLong(r0)     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.internal.na r0 = r32.zzawu()     // Catch:{ SQLiteException -> 0x0120 }
            r1 = 10
            byte[] r1 = r9.getBlob(r1)     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcha> r2 = com.google.android.gms.internal.zzcha.CREATOR     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable r0 = r0.a((byte[]) r1, r2)     // Catch:{ SQLiteException -> 0x0120 }
            r31 = r0
            com.google.android.gms.internal.zzcha r31 = (com.google.android.gms.internal.zzcha) r31     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.internal.zzcln r20 = new com.google.android.gms.internal.zzcln     // Catch:{ SQLiteException -> 0x0120 }
            r1 = r20
            r2 = r34
            r5 = r11
            r6 = r19
            r1.<init>(r2, r3, r5, r6)     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.internal.zzcgl r0 = new com.google.android.gms.internal.zzcgl     // Catch:{ SQLiteException -> 0x0120 }
            r17 = r0
            r18 = r33
            r21 = r12
            r17.<init>(r18, r19, r20, r21, r23, r24, r25, r26, r28, r29, r31)     // Catch:{ SQLiteException -> 0x0120 }
            boolean r1 = r9.moveToNext()     // Catch:{ SQLiteException -> 0x0120 }
            if (r1 == 0) goto L_0x011a
            com.google.android.gms.internal.iz r1 = r32.zzawy()     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ SQLiteException -> 0x0120 }
            java.lang.String r2 = "Got multiple records for conditional property, expected one"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r33)     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.internal.ix r4 = r32.zzawt()     // Catch:{ SQLiteException -> 0x0120 }
            java.lang.String r4 = r4.c(r7)     // Catch:{ SQLiteException -> 0x0120 }
            r1.zze(r2, r3, r4)     // Catch:{ SQLiteException -> 0x0120 }
        L_0x011a:
            if (r9 == 0) goto L_0x011f
            r9.close()
        L_0x011f:
            return r0
        L_0x0120:
            r0 = move-exception
            goto L_0x0133
        L_0x0122:
            r0 = move-exception
            r10 = r32
            goto L_0x0153
        L_0x0126:
            r0 = move-exception
            r10 = r32
            goto L_0x0133
        L_0x012a:
            r0 = move-exception
            r10 = r32
            r9 = r8
            goto L_0x0153
        L_0x012f:
            r0 = move-exception
            r10 = r32
            r9 = r8
        L_0x0133:
            com.google.android.gms.internal.iz r1 = r32.zzawy()     // Catch:{ all -> 0x0152 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x0152 }
            java.lang.String r2 = "Error querying conditional property"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r33)     // Catch:{ all -> 0x0152 }
            com.google.android.gms.internal.ix r4 = r32.zzawt()     // Catch:{ all -> 0x0152 }
            java.lang.String r4 = r4.c(r7)     // Catch:{ all -> 0x0152 }
            r1.zzd(r2, r3, r4, r0)     // Catch:{ all -> 0x0152 }
            if (r9 == 0) goto L_0x0151
            r9.close()
        L_0x0151:
            return r8
        L_0x0152:
            r0 = move-exception
        L_0x0153:
            if (r9 == 0) goto L_0x0158
            r9.close()
        L_0x0158:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzah(java.lang.String, java.lang.String):com.google.android.gms.internal.zzcgl");
    }

    public final void zzah(List<Long> list) {
        ap.checkNotNull(list);
        zzve();
        k();
        StringBuilder sb = new StringBuilder("rowid in (");
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(list.get(i2).longValue());
        }
        sb.append(")");
        int delete = b().delete("raw_events", sb.toString(), null);
        if (delete != list.size()) {
            zzawy().zzazd().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(delete), Integer.valueOf(list.size()));
        }
    }

    public final int zzai(String str, String str2) {
        ap.zzgm(str);
        ap.zzgm(str2);
        zzve();
        k();
        try {
            return b().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzawy().zzazd().zzd("Error deleting conditional property", iz.a(str), zzawt().c(str2), e);
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0041  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String zzayf() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.b()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch:{ SQLiteException -> 0x0029, all -> 0x0024 }
            boolean r2 = r0.moveToFirst()     // Catch:{ SQLiteException -> 0x0022 }
            if (r2 == 0) goto L_0x001c
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch:{ SQLiteException -> 0x0022 }
            if (r0 == 0) goto L_0x001b
            r0.close()
        L_0x001b:
            return r1
        L_0x001c:
            if (r0 == 0) goto L_0x0021
            r0.close()
        L_0x0021:
            return r1
        L_0x0022:
            r2 = move-exception
            goto L_0x002b
        L_0x0024:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x003f
        L_0x0029:
            r2 = move-exception
            r0 = r1
        L_0x002b:
            com.google.android.gms.internal.iz r3 = r6.zzawy()     // Catch:{ all -> 0x003e }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ all -> 0x003e }
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.zzj(r4, r2)     // Catch:{ all -> 0x003e }
            if (r0 == 0) goto L_0x003d
            r0.close()
        L_0x003d:
            return r1
        L_0x003e:
            r1 = move-exception
        L_0x003f:
            if (r0 == 0) goto L_0x0044
            r0.close()
        L_0x0044:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzayf():java.lang.String");
    }

    public final boolean zzayg() {
        return a("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    public final long zzayi() {
        return a("select max(bundle_end_timestamp) from queue", (String[]) null, 0);
    }

    public final long zzayj() {
        return a("select max(timestamp) from raw_events", (String[]) null, 0);
    }

    public final boolean zzayk() {
        return a("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzayl() {
        return a("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final long zzaym() {
        Cursor cursor = null;
        try {
            cursor = b().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
            if (!cursor.moveToFirst()) {
                if (cursor != null) {
                    cursor.close();
                }
                return -1;
            }
            long j = cursor.getLong(0);
            if (cursor != null) {
                cursor.close();
            }
            return j;
        } catch (SQLiteException e) {
            zzawy().zzazd().zzj("Error querying raw events", e);
            if (cursor != null) {
                cursor.close();
            }
            return -1;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x005b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String zzba(long r5) {
        /*
            r4 = this;
            r4.zzve()
            r4.k()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.b()     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            r6 = 0
            r3[r6] = r5     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            boolean r1 = r5.moveToFirst()     // Catch:{ SQLiteException -> 0x003e }
            if (r1 != 0) goto L_0x0034
            com.google.android.gms.internal.iz r6 = r4.zzawy()     // Catch:{ SQLiteException -> 0x003e }
            com.google.android.gms.internal.jb r6 = r6.zzazj()     // Catch:{ SQLiteException -> 0x003e }
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.log(r1)     // Catch:{ SQLiteException -> 0x003e }
            if (r5 == 0) goto L_0x0033
            r5.close()
        L_0x0033:
            return r0
        L_0x0034:
            java.lang.String r6 = r5.getString(r6)     // Catch:{ SQLiteException -> 0x003e }
            if (r5 == 0) goto L_0x003d
            r5.close()
        L_0x003d:
            return r6
        L_0x003e:
            r6 = move-exception
            goto L_0x0045
        L_0x0040:
            r6 = move-exception
            r5 = r0
            goto L_0x0059
        L_0x0043:
            r6 = move-exception
            r5 = r0
        L_0x0045:
            com.google.android.gms.internal.iz r1 = r4.zzawy()     // Catch:{ all -> 0x0058 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x0058 }
            java.lang.String r2 = "Error selecting expired configs"
            r1.zzj(r2, r6)     // Catch:{ all -> 0x0058 }
            if (r5 == 0) goto L_0x0057
            r5.close()
        L_0x0057:
            return r0
        L_0x0058:
            r6 = move-exception
        L_0x0059:
            if (r5 == 0) goto L_0x005e
            r5.close()
        L_0x005e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzba(long):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x016d  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0175  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.zzcgl> zzc(java.lang.String r40, java.lang.String[] r41) {
        /*
            r39 = this;
            r39.zzve()
            r39.k()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r2 = r39.b()     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r3 = "conditional_properties"
            r4 = 13
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "app_id"
            r11 = 0
            r4[r11] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "origin"
            r12 = 1
            r4[r12] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "name"
            r13 = 2
            r4[r13] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "value"
            r14 = 3
            r4[r14] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "active"
            r15 = 4
            r4[r15] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "trigger_event_name"
            r10 = 5
            r4[r10] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "trigger_timeout"
            r9 = 6
            r4[r9] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "timed_out_event"
            r8 = 7
            r4[r8] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "creation_timestamp"
            r7 = 8
            r4[r7] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "triggered_event"
            r6 = 9
            r4[r6] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "triggered_timestamp"
            r1 = 10
            r4[r1] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "time_to_live"
            r1 = 11
            r4[r1] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            java.lang.String r5 = "expired_event"
            r1 = 12
            r4[r1] = r5     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            r19 = 0
            r20 = 0
            java.lang.String r21 = "rowid"
            java.lang.String r22 = "1001"
            r5 = r40
            r1 = 9
            r6 = r41
            r1 = 8
            r7 = r19
            r1 = 7
            r8 = r20
            r1 = 6
            r9 = r21
            r1 = 5
            r10 = r22
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
            boolean r3 = r2.moveToFirst()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            if (r3 != 0) goto L_0x0086
            if (r2 == 0) goto L_0x0085
            r2.close()
        L_0x0085:
            return r0
        L_0x0086:
            int r3 = r0.size()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r4 = 1000(0x3e8, float:1.401E-42)
            if (r3 < r4) goto L_0x00a1
            com.google.android.gms.internal.iz r1 = r39.zzawy()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            java.lang.String r3 = "Read more than the max allowed conditional properties, ignoring extra"
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r1.zzj(r3, r4)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            goto L_0x0146
        L_0x00a1:
            java.lang.String r3 = r2.getString(r11)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            java.lang.String r10 = r2.getString(r12)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            java.lang.String r5 = r2.getString(r13)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r9 = r39
            java.lang.Object r8 = r9.a((android.database.Cursor) r2, (int) r14)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            int r4 = r2.getInt(r15)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            if (r4 == 0) goto L_0x00bc
            r22 = 1
            goto L_0x00be
        L_0x00bc:
            r22 = 0
        L_0x00be:
            java.lang.String r24 = r2.getString(r1)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r6 = 6
            long r25 = r2.getLong(r6)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.internal.na r4 = r39.zzawu()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r7 = 7
            byte[] r1 = r2.getBlob(r7)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcha> r6 = com.google.android.gms.internal.zzcha.CREATOR     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable r1 = r4.a((byte[]) r1, r6)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.internal.zzcha r1 = (com.google.android.gms.internal.zzcha) r1     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r6 = 8
            long r27 = r2.getLong(r6)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.internal.na r4 = r39.zzawu()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r11 = 9
            byte[] r6 = r2.getBlob(r11)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcha> r7 = com.google.android.gms.internal.zzcha.CREATOR     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable r4 = r4.a((byte[]) r6, r7)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r29 = r4
            com.google.android.gms.internal.zzcha r29 = (com.google.android.gms.internal.zzcha) r29     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r6 = 10
            long r16 = r2.getLong(r6)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r7 = 11
            long r31 = r2.getLong(r7)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.internal.na r4 = r39.zzawu()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r11 = 12
            byte[] r6 = r2.getBlob(r11)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcha> r7 = com.google.android.gms.internal.zzcha.CREATOR     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable r4 = r4.a((byte[]) r6, r7)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r30 = r4
            com.google.android.gms.internal.zzcha r30 = (com.google.android.gms.internal.zzcha) r30     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.internal.zzcln r33 = new com.google.android.gms.internal.zzcln     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r4 = r33
            r34 = 11
            r35 = 10
            r36 = 8
            r37 = 7
            r38 = 6
            r6 = r16
            r9 = r10
            r4.<init>(r5, r6, r8, r9)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.internal.zzcgl r4 = new com.google.android.gms.internal.zzcgl     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r16 = r4
            r17 = r3
            r18 = r10
            r19 = r33
            r20 = r27
            r23 = r24
            r24 = r1
            r27 = r29
            r28 = r31
            r16.<init>(r17, r18, r19, r20, r22, r23, r24, r25, r27, r28, r30)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r0.add(r4)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            boolean r1 = r2.moveToNext()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            if (r1 != 0) goto L_0x014c
        L_0x0146:
            if (r2 == 0) goto L_0x014b
            r2.close()
        L_0x014b:
            return r0
        L_0x014c:
            r1 = 5
            r11 = 0
            goto L_0x0086
        L_0x0150:
            r0 = move-exception
            goto L_0x0173
        L_0x0152:
            r0 = move-exception
            r1 = r2
            goto L_0x015a
        L_0x0155:
            r0 = move-exception
            r2 = 0
            goto L_0x0173
        L_0x0158:
            r0 = move-exception
            r1 = 0
        L_0x015a:
            com.google.android.gms.internal.iz r2 = r39.zzawy()     // Catch:{ all -> 0x0171 }
            com.google.android.gms.internal.jb r2 = r2.zzazd()     // Catch:{ all -> 0x0171 }
            java.lang.String r3 = "Error querying conditional user property value"
            r2.zzj(r3, r0)     // Catch:{ all -> 0x0171 }
            java.util.List r0 = java.util.Collections.emptyList()     // Catch:{ all -> 0x0171 }
            if (r1 == 0) goto L_0x0170
            r1.close()
        L_0x0170:
            return r0
        L_0x0171:
            r0 = move-exception
            r2 = r1
        L_0x0173:
            if (r2 == 0) goto L_0x0178
            r2.close()
        L_0x0178:
            goto L_0x017a
        L_0x0179:
            throw r0
        L_0x017a:
            goto L_0x0179
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzc(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:55:0x011a, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x011b, code lost:
        r14 = r21;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0122, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0123, code lost:
        r14 = r21;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0126, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0127, code lost:
        r14 = r21;
        r11 = r22;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0122 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x000f] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0141  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0149  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.mz> zzg(java.lang.String r22, java.lang.String r23, java.lang.String r24) {
        /*
            r21 = this;
            com.google.android.gms.common.internal.ap.zzgm(r22)
            r21.zzve()
            r21.k()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch:{ SQLiteException -> 0x0126, all -> 0x0122 }
            r3 = 3
            r2.<init>(r3)     // Catch:{ SQLiteException -> 0x0126, all -> 0x0122 }
            r11 = r22
            r2.add(r11)     // Catch:{ SQLiteException -> 0x011e, all -> 0x0122 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ SQLiteException -> 0x011e, all -> 0x0122 }
            java.lang.String r5 = "app_id=?"
            r4.<init>(r5)     // Catch:{ SQLiteException -> 0x011e, all -> 0x0122 }
            boolean r5 = android.text.TextUtils.isEmpty(r23)     // Catch:{ SQLiteException -> 0x011e, all -> 0x0122 }
            if (r5 != 0) goto L_0x0032
            r5 = r23
            r2.add(r5)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r6 = " and origin=?"
            r4.append(r6)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            goto L_0x0034
        L_0x0032:
            r5 = r23
        L_0x0034:
            boolean r6 = android.text.TextUtils.isEmpty(r24)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            if (r6 != 0) goto L_0x004c
            java.lang.String r6 = java.lang.String.valueOf(r24)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r7 = "*"
            java.lang.String r6 = r6.concat(r7)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            r2.add(r6)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r6 = " and name glob ?"
            r4.append(r6)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
        L_0x004c:
            int r6 = r2.size()     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.Object[] r2 = r2.toArray(r6)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            r16 = r2
            java.lang.String[] r16 = (java.lang.String[]) r16     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            android.database.sqlite.SQLiteDatabase r12 = r21.b()     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r13 = "user_attributes"
            r2 = 4
            java.lang.String[] r14 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r2 = "name"
            r10 = 0
            r14[r10] = r2     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r2 = "set_timestamp"
            r8 = 1
            r14[r8] = r2     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r2 = "value"
            r9 = 2
            r14[r9] = r2     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r2 = "origin"
            r14[r3] = r2     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            java.lang.String r15 = r4.toString()     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            r17 = 0
            r18 = 0
            java.lang.String r19 = "rowid"
            java.lang.String r20 = "1001"
            android.database.Cursor r2 = r12.query(r13, r14, r15, r16, r17, r18, r19, r20)     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
            boolean r4 = r2.moveToFirst()     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            if (r4 != 0) goto L_0x0092
            if (r2 == 0) goto L_0x0091
            r2.close()
        L_0x0091:
            return r0
        L_0x0092:
            int r4 = r0.size()     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            r6 = 1000(0x3e8, float:1.401E-42)
            if (r4 < r6) goto L_0x00ae
            com.google.android.gms.internal.iz r3 = r21.zzawy()     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            java.lang.String r4 = "Read more than the max allowed user properties, ignoring excess"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            r3.zzj(r4, r6)     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            r14 = r21
            goto L_0x00fb
        L_0x00ae:
            java.lang.String r7 = r2.getString(r10)     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            long r12 = r2.getLong(r8)     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            r14 = r21
            java.lang.Object r15 = r14.a((android.database.Cursor) r2, (int) r9)     // Catch:{ SQLiteException -> 0x0110 }
            java.lang.String r6 = r2.getString(r3)     // Catch:{ SQLiteException -> 0x0110 }
            if (r15 != 0) goto L_0x00e0
            com.google.android.gms.internal.iz r4 = r21.zzawy()     // Catch:{ SQLiteException -> 0x00dd }
            com.google.android.gms.internal.jb r4 = r4.zzazd()     // Catch:{ SQLiteException -> 0x00dd }
            java.lang.String r5 = "(2)Read invalid user property value, ignoring it"
            java.lang.Object r7 = com.google.android.gms.internal.iz.a((java.lang.String) r22)     // Catch:{ SQLiteException -> 0x00dd }
            r12 = r24
            r4.zzd(r5, r7, r6, r12)     // Catch:{ SQLiteException -> 0x00dd }
            r17 = r6
            r12 = 0
            r18 = 2
            r19 = 1
            goto L_0x00f5
        L_0x00dd:
            r0 = move-exception
            r5 = r6
            goto L_0x012e
        L_0x00e0:
            com.google.android.gms.internal.mz r5 = new com.google.android.gms.internal.mz     // Catch:{ SQLiteException -> 0x010a }
            r4 = r5
            r3 = r5
            r5 = r22
            r17 = r6
            r18 = 2
            r19 = 1
            r8 = r12
            r12 = 0
            r10 = r15
            r4.<init>(r5, r6, r7, r8, r10)     // Catch:{ SQLiteException -> 0x0108 }
            r0.add(r3)     // Catch:{ SQLiteException -> 0x0108 }
        L_0x00f5:
            boolean r3 = r2.moveToNext()     // Catch:{ SQLiteException -> 0x0108 }
            if (r3 != 0) goto L_0x0101
        L_0x00fb:
            if (r2 == 0) goto L_0x0100
            r2.close()
        L_0x0100:
            return r0
        L_0x0101:
            r5 = r17
            r3 = 3
            r8 = 1
            r9 = 2
            r10 = 0
            goto L_0x0092
        L_0x0108:
            r0 = move-exception
            goto L_0x010d
        L_0x010a:
            r0 = move-exception
            r17 = r6
        L_0x010d:
            r5 = r17
            goto L_0x012e
        L_0x0110:
            r0 = move-exception
            goto L_0x012e
        L_0x0112:
            r0 = move-exception
            r14 = r21
            goto L_0x0146
        L_0x0116:
            r0 = move-exception
            r14 = r21
            goto L_0x012e
        L_0x011a:
            r0 = move-exception
            r14 = r21
            goto L_0x012d
        L_0x011e:
            r0 = move-exception
            r14 = r21
            goto L_0x012b
        L_0x0122:
            r0 = move-exception
            r14 = r21
            goto L_0x0147
        L_0x0126:
            r0 = move-exception
            r14 = r21
            r11 = r22
        L_0x012b:
            r5 = r23
        L_0x012d:
            r2 = r1
        L_0x012e:
            com.google.android.gms.internal.iz r3 = r21.zzawy()     // Catch:{ all -> 0x0145 }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ all -> 0x0145 }
            java.lang.String r4 = "(2)Error querying user properties"
            java.lang.Object r6 = com.google.android.gms.internal.iz.a((java.lang.String) r22)     // Catch:{ all -> 0x0145 }
            r3.zzd(r4, r6, r5, r0)     // Catch:{ all -> 0x0145 }
            if (r2 == 0) goto L_0x0144
            r2.close()
        L_0x0144:
            return r1
        L_0x0145:
            r0 = move-exception
        L_0x0146:
            r1 = r2
        L_0x0147:
            if (r1 == 0) goto L_0x014c
            r1.close()
        L_0x014c:
            goto L_0x014e
        L_0x014d:
            throw r0
        L_0x014e:
            goto L_0x014d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzg(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final List<zzcgl> zzh(String str, String str2, String str3) {
        ap.zzgm(str);
        zzve();
        k();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return zzc(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00b8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.mz> zzja(java.lang.String r23) {
        /*
            r22 = this;
            com.google.android.gms.common.internal.ap.zzgm(r23)
            r22.zzve()
            r22.k()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r22.b()     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            java.lang.String r3 = "user_attributes"
            r4 = 4
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            java.lang.String r5 = "name"
            r11 = 0
            r4[r11] = r5     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            java.lang.String r5 = "origin"
            r12 = 1
            r4[r12] = r5     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            java.lang.String r5 = "set_timestamp"
            r13 = 2
            r4[r13] = r5     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            java.lang.String r5 = "value"
            r14 = 3
            r4[r14] = r5     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[r12]     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            r6[r11] = r23     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            r7 = 0
            r8 = 0
            java.lang.String r9 = "rowid"
            java.lang.String r10 = "1000"
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
            boolean r3 = r2.moveToFirst()     // Catch:{ SQLiteException -> 0x0091, all -> 0x008d }
            if (r3 != 0) goto L_0x0048
            if (r2 == 0) goto L_0x0047
            r2.close()
        L_0x0047:
            return r0
        L_0x0048:
            java.lang.String r18 = r2.getString(r11)     // Catch:{ SQLiteException -> 0x0091, all -> 0x008d }
            java.lang.String r3 = r2.getString(r12)     // Catch:{ SQLiteException -> 0x0091, all -> 0x008d }
            if (r3 != 0) goto L_0x0054
            java.lang.String r3 = ""
        L_0x0054:
            r17 = r3
            long r19 = r2.getLong(r13)     // Catch:{ SQLiteException -> 0x0091, all -> 0x008d }
            r3 = r22
            java.lang.Object r21 = r3.a((android.database.Cursor) r2, (int) r14)     // Catch:{ SQLiteException -> 0x008b }
            if (r21 != 0) goto L_0x0074
            com.google.android.gms.internal.iz r4 = r22.zzawy()     // Catch:{ SQLiteException -> 0x008b }
            com.google.android.gms.internal.jb r4 = r4.zzazd()     // Catch:{ SQLiteException -> 0x008b }
            java.lang.String r5 = "Read invalid user property value, ignoring it. appId"
            java.lang.Object r6 = com.google.android.gms.internal.iz.a((java.lang.String) r23)     // Catch:{ SQLiteException -> 0x008b }
            r4.zzj(r5, r6)     // Catch:{ SQLiteException -> 0x008b }
            goto L_0x007f
        L_0x0074:
            com.google.android.gms.internal.mz r4 = new com.google.android.gms.internal.mz     // Catch:{ SQLiteException -> 0x008b }
            r15 = r4
            r16 = r23
            r15.<init>(r16, r17, r18, r19, r21)     // Catch:{ SQLiteException -> 0x008b }
            r0.add(r4)     // Catch:{ SQLiteException -> 0x008b }
        L_0x007f:
            boolean r4 = r2.moveToNext()     // Catch:{ SQLiteException -> 0x008b }
            if (r4 != 0) goto L_0x0048
            if (r2 == 0) goto L_0x008a
            r2.close()
        L_0x008a:
            return r0
        L_0x008b:
            r0 = move-exception
            goto L_0x009e
        L_0x008d:
            r0 = move-exception
            r3 = r22
            goto L_0x00b6
        L_0x0091:
            r0 = move-exception
            r3 = r22
            goto L_0x009e
        L_0x0095:
            r0 = move-exception
            r3 = r22
            r2 = r1
            goto L_0x00b6
        L_0x009a:
            r0 = move-exception
            r3 = r22
            r2 = r1
        L_0x009e:
            com.google.android.gms.internal.iz r4 = r22.zzawy()     // Catch:{ all -> 0x00b5 }
            com.google.android.gms.internal.jb r4 = r4.zzazd()     // Catch:{ all -> 0x00b5 }
            java.lang.String r5 = "Error querying user properties. appId"
            java.lang.Object r6 = com.google.android.gms.internal.iz.a((java.lang.String) r23)     // Catch:{ all -> 0x00b5 }
            r4.zze(r5, r6, r0)     // Catch:{ all -> 0x00b5 }
            if (r2 == 0) goto L_0x00b4
            r2.close()
        L_0x00b4:
            return r1
        L_0x00b5:
            r0 = move-exception
        L_0x00b6:
            if (r2 == 0) goto L_0x00bb
            r2.close()
        L_0x00bb:
            goto L_0x00bd
        L_0x00bc:
            throw r0
        L_0x00bd:
            goto L_0x00bc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzja(java.lang.String):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0170 A[Catch:{ SQLiteException -> 0x01e4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0174 A[Catch:{ SQLiteException -> 0x01e4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x01a8 A[Catch:{ SQLiteException -> 0x01e4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x01ab A[Catch:{ SQLiteException -> 0x01e4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x01cd A[Catch:{ SQLiteException -> 0x01e4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x01e0  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x020a  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0211  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.internal.hy zzjb(java.lang.String r22) {
        /*
            r21 = this;
            r1 = r22
            com.google.android.gms.common.internal.ap.zzgm(r22)
            r21.zzve()
            r21.k()
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r21.b()     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r4 = "apps"
            r0 = 24
            java.lang.String[] r5 = new java.lang.String[r0]     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "app_instance_id"
            r11 = 0
            r5[r11] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "gmp_app_id"
            r12 = 1
            r5[r12] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "resettable_device_id_hash"
            r13 = 2
            r5[r13] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "last_bundle_index"
            r14 = 3
            r5[r14] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "last_bundle_start_timestamp"
            r15 = 4
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "last_bundle_end_timestamp"
            r10 = 5
            r5[r10] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "app_version"
            r9 = 6
            r5[r9] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "app_store"
            r8 = 7
            r5[r8] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "gmp_version"
            r7 = 8
            r5[r7] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "dev_cert_hash"
            r6 = 9
            r5[r6] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "measurement_enabled"
            r15 = 10
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 11
            java.lang.String r16 = "day"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 12
            java.lang.String r16 = "daily_public_events_count"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 13
            java.lang.String r16 = "daily_events_count"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 14
            java.lang.String r16 = "daily_conversions_count"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 15
            java.lang.String r16 = "config_fetched_time"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 16
            java.lang.String r16 = "failed_config_fetch_time"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "app_version_int"
            r15 = 17
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 18
            java.lang.String r17 = "firebase_instance_id"
            r5[r0] = r17     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 19
            java.lang.String r17 = "daily_error_events_count"
            r5[r0] = r17     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 20
            java.lang.String r17 = "daily_realtime_events_count"
            r5[r0] = r17     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r0 = 21
            java.lang.String r17 = "health_monitor_sample"
            r5[r0] = r17     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "android_id"
            r15 = 22
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "adid_reporting_enabled"
            r15 = 23
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            java.lang.String r0 = "app_id=?"
            java.lang.String[] r7 = new java.lang.String[r12]     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r7[r11] = r1     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            r18 = 0
            r19 = 0
            r20 = 0
            r15 = 9
            r6 = r0
            r0 = 8
            r15 = 7
            r8 = r18
            r0 = 6
            r9 = r19
            r15 = 5
            r10 = r20
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch:{ SQLiteException -> 0x01f3, all -> 0x01ee }
            boolean r4 = r3.moveToFirst()     // Catch:{ SQLiteException -> 0x01ea, all -> 0x01e6 }
            if (r4 != 0) goto L_0x00c8
            if (r3 == 0) goto L_0x00c7
            r3.close()
        L_0x00c7:
            return r2
        L_0x00c8:
            com.google.android.gms.internal.hy r4 = new com.google.android.gms.internal.hy     // Catch:{ SQLiteException -> 0x01ea, all -> 0x01e6 }
            r5 = r21
            com.google.android.gms.internal.jx r6 = r5.e     // Catch:{ SQLiteException -> 0x01e4 }
            r4.<init>(r6, r1)     // Catch:{ SQLiteException -> 0x01e4 }
            java.lang.String r6 = r3.getString(r11)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzir(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            java.lang.String r6 = r3.getString(r12)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzis(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            java.lang.String r6 = r3.getString(r13)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzit(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            long r6 = r3.getLong(r14)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzaq(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r6 = 4
            long r6 = r3.getLong(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzal(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            long r6 = r3.getLong(r15)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzam(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.setAppVersion(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 7
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zziv(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 8
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzao(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 9
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzap(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 10
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            if (r6 != 0) goto L_0x012e
            int r0 = r3.getInt(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            if (r0 == 0) goto L_0x012c
            goto L_0x012e
        L_0x012c:
            r0 = 0
            goto L_0x012f
        L_0x012e:
            r0 = 1
        L_0x012f:
            r4.setMeasurementEnabled(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 11
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzat(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 12
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzau(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 13
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzav(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 14
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzaw(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 15
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzar(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 16
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzas(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 17
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            if (r6 == 0) goto L_0x0174
            r6 = -2147483648(0xffffffff80000000, double:NaN)
            goto L_0x0179
        L_0x0174:
            int r0 = r3.getInt(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            long r6 = (long) r0     // Catch:{ SQLiteException -> 0x01e4 }
        L_0x0179:
            r4.zzan(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 18
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zziu(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 19
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzay(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 20
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzax(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 21
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zziw(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 22
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            if (r6 == 0) goto L_0x01ab
            r6 = 0
            goto L_0x01af
        L_0x01ab:
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x01e4 }
        L_0x01af:
            r4.zzaz(r6)     // Catch:{ SQLiteException -> 0x01e4 }
            r0 = 23
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            if (r6 != 0) goto L_0x01c0
            int r0 = r3.getInt(r0)     // Catch:{ SQLiteException -> 0x01e4 }
            if (r0 == 0) goto L_0x01c1
        L_0x01c0:
            r11 = 1
        L_0x01c1:
            r4.zzbl(r11)     // Catch:{ SQLiteException -> 0x01e4 }
            r4.zzaxb()     // Catch:{ SQLiteException -> 0x01e4 }
            boolean r0 = r3.moveToNext()     // Catch:{ SQLiteException -> 0x01e4 }
            if (r0 == 0) goto L_0x01de
            com.google.android.gms.internal.iz r0 = r21.zzawy()     // Catch:{ SQLiteException -> 0x01e4 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ SQLiteException -> 0x01e4 }
            java.lang.String r6 = "Got multiple records for app, expected one. appId"
            java.lang.Object r7 = com.google.android.gms.internal.iz.a((java.lang.String) r22)     // Catch:{ SQLiteException -> 0x01e4 }
            r0.zzj(r6, r7)     // Catch:{ SQLiteException -> 0x01e4 }
        L_0x01de:
            if (r3 == 0) goto L_0x01e3
            r3.close()
        L_0x01e3:
            return r4
        L_0x01e4:
            r0 = move-exception
            goto L_0x01f7
        L_0x01e6:
            r0 = move-exception
            r5 = r21
            goto L_0x020f
        L_0x01ea:
            r0 = move-exception
            r5 = r21
            goto L_0x01f7
        L_0x01ee:
            r0 = move-exception
            r5 = r21
            r3 = r2
            goto L_0x020f
        L_0x01f3:
            r0 = move-exception
            r5 = r21
            r3 = r2
        L_0x01f7:
            com.google.android.gms.internal.iz r4 = r21.zzawy()     // Catch:{ all -> 0x020e }
            com.google.android.gms.internal.jb r4 = r4.zzazd()     // Catch:{ all -> 0x020e }
            java.lang.String r6 = "Error querying app. appId"
            java.lang.Object r1 = com.google.android.gms.internal.iz.a((java.lang.String) r22)     // Catch:{ all -> 0x020e }
            r4.zze(r6, r1, r0)     // Catch:{ all -> 0x020e }
            if (r3 == 0) goto L_0x020d
            r3.close()
        L_0x020d:
            return r2
        L_0x020e:
            r0 = move-exception
        L_0x020f:
            if (r3 == 0) goto L_0x0214
            r3.close()
        L_0x0214:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzjb(java.lang.String):com.google.android.gms.internal.hy");
    }

    public final long zzjc(String str) {
        ap.zzgm(str);
        zzve();
        k();
        try {
            return (long) b().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zzaxa().zzb(str, ip.zzjas))))});
        } catch (SQLiteException e) {
            zzawy().zzazd().zze("Error deleting over the limit events. appId", iz.a(str), e);
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0079  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final byte[] zzjd(java.lang.String r12) {
        /*
            r11 = this;
            com.google.android.gms.common.internal.ap.zzgm(r12)
            r11.zzve()
            r11.k()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r11.b()     // Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
            java.lang.String r2 = "apps"
            r3 = 1
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
            java.lang.String r5 = "remote_config"
            r9 = 0
            r4[r9] = r5     // Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
            r6[r9] = r12     // Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
            r7 = 0
            r8 = 0
            r10 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r10
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
            boolean r2 = r1.moveToFirst()     // Catch:{ SQLiteException -> 0x0058 }
            if (r2 != 0) goto L_0x0037
            if (r1 == 0) goto L_0x0036
            r1.close()
        L_0x0036:
            return r0
        L_0x0037:
            byte[] r2 = r1.getBlob(r9)     // Catch:{ SQLiteException -> 0x0058 }
            boolean r3 = r1.moveToNext()     // Catch:{ SQLiteException -> 0x0058 }
            if (r3 == 0) goto L_0x0052
            com.google.android.gms.internal.iz r3 = r11.zzawy()     // Catch:{ SQLiteException -> 0x0058 }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ SQLiteException -> 0x0058 }
            java.lang.String r4 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r5 = com.google.android.gms.internal.iz.a((java.lang.String) r12)     // Catch:{ SQLiteException -> 0x0058 }
            r3.zzj(r4, r5)     // Catch:{ SQLiteException -> 0x0058 }
        L_0x0052:
            if (r1 == 0) goto L_0x0057
            r1.close()
        L_0x0057:
            return r2
        L_0x0058:
            r2 = move-exception
            goto L_0x005f
        L_0x005a:
            r12 = move-exception
            r1 = r0
            goto L_0x0077
        L_0x005d:
            r2 = move-exception
            r1 = r0
        L_0x005f:
            com.google.android.gms.internal.iz r3 = r11.zzawy()     // Catch:{ all -> 0x0076 }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ all -> 0x0076 }
            java.lang.String r4 = "Error querying remote config. appId"
            java.lang.Object r12 = com.google.android.gms.internal.iz.a((java.lang.String) r12)     // Catch:{ all -> 0x0076 }
            r3.zze(r4, r12, r2)     // Catch:{ all -> 0x0076 }
            if (r1 == 0) goto L_0x0075
            r1.close()
        L_0x0075:
            return r0
        L_0x0076:
            r12 = move-exception
        L_0x0077:
            if (r1 == 0) goto L_0x007c
            r1.close()
        L_0x007c:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzjd(java.lang.String):byte[]");
    }

    public final long zzjf(String str) {
        ap.zzgm(str);
        return a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b3 A[LOOP:0: B:18:0x0055->B:38:0x00b3, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00b5 A[EDGE_INSN: B:53:0x00b5->B:39:0x00b5 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<android.util.Pair<com.google.android.gms.internal.no, java.lang.Long>> zzl(java.lang.String r13, int r14, int r15) {
        /*
            r12 = this;
            r12.zzve()
            r12.k()
            r0 = 1
            r1 = 0
            if (r14 <= 0) goto L_0x000c
            r2 = 1
            goto L_0x000d
        L_0x000c:
            r2 = 0
        L_0x000d:
            com.google.android.gms.common.internal.ap.checkArgument(r2)
            if (r15 <= 0) goto L_0x0014
            r2 = 1
            goto L_0x0015
        L_0x0014:
            r2 = 0
        L_0x0015:
            com.google.android.gms.common.internal.ap.checkArgument(r2)
            com.google.android.gms.common.internal.ap.zzgm(r13)
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r12.b()     // Catch:{ SQLiteException -> 0x00bd }
            java.lang.String r4 = "queue"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch:{ SQLiteException -> 0x00bd }
            java.lang.String r6 = "rowid"
            r5[r1] = r6     // Catch:{ SQLiteException -> 0x00bd }
            java.lang.String r6 = "data"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x00bd }
            java.lang.String r6 = "app_id=?"
            java.lang.String[] r7 = new java.lang.String[r0]     // Catch:{ SQLiteException -> 0x00bd }
            r7[r1] = r13     // Catch:{ SQLiteException -> 0x00bd }
            r8 = 0
            r9 = 0
            java.lang.String r10 = "rowid"
            java.lang.String r11 = java.lang.String.valueOf(r14)     // Catch:{ SQLiteException -> 0x00bd }
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8, r9, r10, r11)     // Catch:{ SQLiteException -> 0x00bd }
            boolean r14 = r2.moveToFirst()     // Catch:{ SQLiteException -> 0x00bd }
            if (r14 != 0) goto L_0x004f
            java.util.List r13 = java.util.Collections.emptyList()     // Catch:{ SQLiteException -> 0x00bd }
            if (r2 == 0) goto L_0x004e
            r2.close()
        L_0x004e:
            return r13
        L_0x004f:
            java.util.ArrayList r14 = new java.util.ArrayList     // Catch:{ SQLiteException -> 0x00bd }
            r14.<init>()     // Catch:{ SQLiteException -> 0x00bd }
            r3 = 0
        L_0x0055:
            long r4 = r2.getLong(r1)     // Catch:{ SQLiteException -> 0x00bd }
            byte[] r6 = r2.getBlob(r0)     // Catch:{ IOException -> 0x009d }
            com.google.android.gms.internal.na r7 = r12.zzawu()     // Catch:{ IOException -> 0x009d }
            byte[] r6 = r7.zzr(r6)     // Catch:{ IOException -> 0x009d }
            boolean r7 = r14.isEmpty()     // Catch:{ SQLiteException -> 0x00bd }
            if (r7 != 0) goto L_0x006f
            int r7 = r6.length     // Catch:{ SQLiteException -> 0x00bd }
            int r7 = r7 + r3
            if (r7 > r15) goto L_0x00b5
        L_0x006f:
            int r7 = r6.length     // Catch:{ SQLiteException -> 0x00bd }
            com.google.android.gms.internal.so r7 = com.google.android.gms.internal.so.zzn(r6, r1, r7)     // Catch:{ SQLiteException -> 0x00bd }
            com.google.android.gms.internal.no r8 = new com.google.android.gms.internal.no     // Catch:{ SQLiteException -> 0x00bd }
            r8.<init>()     // Catch:{ SQLiteException -> 0x00bd }
            r8.zza((com.google.android.gms.internal.so) r7)     // Catch:{ IOException -> 0x008a }
            int r6 = r6.length     // Catch:{ SQLiteException -> 0x00bd }
            int r3 = r3 + r6
            java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch:{ SQLiteException -> 0x00bd }
            android.util.Pair r4 = android.util.Pair.create(r8, r4)     // Catch:{ SQLiteException -> 0x00bd }
            r14.add(r4)     // Catch:{ SQLiteException -> 0x00bd }
            goto L_0x00ad
        L_0x008a:
            r4 = move-exception
            com.google.android.gms.internal.iz r5 = r12.zzawy()     // Catch:{ SQLiteException -> 0x00bd }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ SQLiteException -> 0x00bd }
            java.lang.String r6 = "Failed to merge queued bundle. appId"
            java.lang.Object r7 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ SQLiteException -> 0x00bd }
        L_0x0099:
            r5.zze(r6, r7, r4)     // Catch:{ SQLiteException -> 0x00bd }
            goto L_0x00ad
        L_0x009d:
            r4 = move-exception
            com.google.android.gms.internal.iz r5 = r12.zzawy()     // Catch:{ SQLiteException -> 0x00bd }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ SQLiteException -> 0x00bd }
            java.lang.String r6 = "Failed to unzip queued bundle. appId"
            java.lang.Object r7 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ SQLiteException -> 0x00bd }
            goto L_0x0099
        L_0x00ad:
            boolean r4 = r2.moveToNext()     // Catch:{ SQLiteException -> 0x00bd }
            if (r4 == 0) goto L_0x00b5
            if (r3 <= r15) goto L_0x0055
        L_0x00b5:
            if (r2 == 0) goto L_0x00ba
            r2.close()
        L_0x00ba:
            return r14
        L_0x00bb:
            r13 = move-exception
            goto L_0x00d9
        L_0x00bd:
            r14 = move-exception
            com.google.android.gms.internal.iz r15 = r12.zzawy()     // Catch:{ all -> 0x00bb }
            com.google.android.gms.internal.jb r15 = r15.zzazd()     // Catch:{ all -> 0x00bb }
            java.lang.String r0 = "Error querying bundles. appId"
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ all -> 0x00bb }
            r15.zze(r0, r13, r14)     // Catch:{ all -> 0x00bb }
            java.util.List r13 = java.util.Collections.emptyList()     // Catch:{ all -> 0x00bb }
            if (r2 == 0) goto L_0x00d8
            r2.close()
        L_0x00d8:
            return r13
        L_0x00d9:
            if (r2 == 0) goto L_0x00de
            r2.close()
        L_0x00de:
            goto L_0x00e0
        L_0x00df:
            throw r13
        L_0x00e0:
            goto L_0x00df
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.id.zzl(java.lang.String, int, int):java.util.List");
    }
}
