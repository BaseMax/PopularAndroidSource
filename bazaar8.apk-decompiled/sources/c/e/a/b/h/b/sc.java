package c.e.a.b.h.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import c.e.a.b.d.d.r;
import c.e.a.b.g.f.C0803ba;
import c.e.a.b.g.f.C0811da;
import c.e.a.b.g.f.K;
import c.e.a.b.g.f.S;
import c.e.a.b.g.f.T;
import c.e.a.b.g.f.Wc;
import c.e.a.b.g.f.X;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.google.android.gms.measurement.internal.zzr;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class sc extends Sb {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f11037d = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"};

    /* renamed from: e  reason: collision with root package name */
    public static final String[] f11038e = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: f  reason: collision with root package name */
    public static final String[] f11039f = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"};

    /* renamed from: g  reason: collision with root package name */
    public static final String[] f11040g = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: h  reason: collision with root package name */
    public static final String[] f11041h = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: i  reason: collision with root package name */
    public static final String[] f11042i = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: j  reason: collision with root package name */
    public final vc f11043j = new vc(this, b(), "google_app_measurement.db");

    /* renamed from: k  reason: collision with root package name */
    public final Ob f11044k = new Ob(c());

    public sc(Tb tb) {
        super(tb);
    }

    public final boolean A() {
        return a("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    public final void B() {
        l();
        s();
        if (H()) {
            long a2 = h().f10616i.a();
            long a3 = c().a();
            if (Math.abs(a3 - a2) > C0931k.M.a(null).longValue()) {
                h().f10616i.a(a3);
                l();
                s();
                if (H()) {
                    int delete = x().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(c().c()), String.valueOf(pc.s())});
                    if (delete > 0) {
                        e().B().a("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    public final long C() {
        return a("select max(bundle_end_timestamp) from queue", (String[]) null, 0);
    }

    public final long D() {
        return a("select max(timestamp) from raw_events", (String[]) null, 0);
    }

    public final boolean E() {
        return a("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean F() {
        return a("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final long G() {
        Cursor cursor = null;
        try {
            cursor = x().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
            if (!cursor.moveToFirst()) {
                if (cursor != null) {
                    cursor.close();
                }
                return -1;
            }
            long j2 = cursor.getLong(0);
            if (cursor != null) {
                cursor.close();
            }
            return j2;
        } catch (SQLiteException e2) {
            e().t().a("Error querying raw events", e2);
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

    public final boolean H() {
        return b().getDatabasePath("google_app_measurement.db").exists();
    }

    public final long a(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            cursor = x().rawQuery(str, strArr);
            if (cursor.moveToFirst()) {
                long j2 = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j2;
            }
            throw new SQLiteException("Database returned empty set");
        } catch (SQLiteException e2) {
            e().t().a("Database error", str, e2);
            throw e2;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:55:0x012d  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0134  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.b.h.b.C0919g b(java.lang.String r23, java.lang.String r24) {
        /*
            r22 = this;
            r15 = r24
            c.e.a.b.d.d.r.b((java.lang.String) r23)
            c.e.a.b.d.d.r.b((java.lang.String) r24)
            r22.l()
            r22.s()
            r16 = 0
            android.database.sqlite.SQLiteDatabase r1 = r22.x()     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r2 = "events"
            r0 = 8
            java.lang.String[] r3 = new java.lang.String[r0]     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r0 = "lifetime_count"
            r9 = 0
            r3[r9] = r0     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r0 = "current_bundle_count"
            r10 = 1
            r3[r10] = r0     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r0 = "last_fire_timestamp"
            r11 = 2
            r3[r11] = r0     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r0 = "last_bundled_timestamp"
            r12 = 3
            r3[r12] = r0     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r0 = "last_bundled_day"
            r13 = 4
            r3[r13] = r0     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r0 = "last_sampled_complex_event_id"
            r14 = 5
            r3[r14] = r0     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r0 = "last_sampling_rate"
            r8 = 6
            r3[r8] = r0     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r0 = "last_exempt_from_sampling"
            r7 = 7
            r3[r7] = r0     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            java.lang.String r4 = "app_id=? and name=?"
            java.lang.String[] r5 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            r5[r9] = r23     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            r5[r10] = r15     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            r6 = 0
            r0 = 0
            r17 = 0
            r7 = r0
            r0 = 6
            r8 = r17
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x010d, all -> 0x0109 }
            boolean r1 = r8.moveToFirst()     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            if (r1 != 0) goto L_0x0062
            if (r8 == 0) goto L_0x0061
            r8.close()
        L_0x0061:
            return r16
        L_0x0062:
            long r4 = r8.getLong(r9)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            long r6 = r8.getLong(r10)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            long r19 = r8.getLong(r11)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            boolean r1 = r8.isNull(r12)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            if (r1 == 0) goto L_0x0077
            r1 = 0
            goto L_0x007b
        L_0x0077:
            long r1 = r8.getLong(r12)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
        L_0x007b:
            r11 = r1
            boolean r1 = r8.isNull(r13)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            if (r1 == 0) goto L_0x0085
            r13 = r16
            goto L_0x008e
        L_0x0085:
            long r1 = r8.getLong(r13)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            r13 = r1
        L_0x008e:
            boolean r1 = r8.isNull(r14)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            if (r1 == 0) goto L_0x0097
            r14 = r16
            goto L_0x00a0
        L_0x0097:
            long r1 = r8.getLong(r14)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            r14 = r1
        L_0x00a0:
            boolean r1 = r8.isNull(r0)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            if (r1 == 0) goto L_0x00aa
            r0 = r16
        L_0x00a8:
            r1 = 7
            goto L_0x00b3
        L_0x00aa:
            long r0 = r8.getLong(r0)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            goto L_0x00a8
        L_0x00b3:
            boolean r2 = r8.isNull(r1)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            if (r2 != 0) goto L_0x00cb
            long r1 = r8.getLong(r1)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            r17 = 1
            int r3 = (r1 > r17 ? 1 : (r1 == r17 ? 0 : -1))
            if (r3 != 0) goto L_0x00c4
            r9 = 1
        L_0x00c4:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r9)     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            r17 = r1
            goto L_0x00cd
        L_0x00cb:
            r17 = r16
        L_0x00cd:
            c.e.a.b.h.b.g r18 = new c.e.a.b.h.b.g     // Catch:{ SQLiteException -> 0x0105, all -> 0x0101 }
            r1 = r18
            r2 = r23
            r3 = r24
            r21 = r8
            r8 = r19
            r10 = r11
            r12 = r13
            r13 = r14
            r14 = r0
            r15 = r17
            r1.<init>(r2, r3, r4, r6, r8, r10, r12, r13, r14, r15)     // Catch:{ SQLiteException -> 0x00ff }
            boolean r0 = r21.moveToNext()     // Catch:{ SQLiteException -> 0x00ff }
            if (r0 == 0) goto L_0x00f9
            c.e.a.b.h.b.t r0 = r22.e()     // Catch:{ SQLiteException -> 0x00ff }
            c.e.a.b.h.b.v r0 = r0.t()     // Catch:{ SQLiteException -> 0x00ff }
            java.lang.String r1 = "Got multiple records for event aggregates, expected one. appId"
            java.lang.Object r2 = c.e.a.b.h.b.C0957t.a((java.lang.String) r23)     // Catch:{ SQLiteException -> 0x00ff }
            r0.a(r1, r2)     // Catch:{ SQLiteException -> 0x00ff }
        L_0x00f9:
            if (r21 == 0) goto L_0x00fe
            r21.close()
        L_0x00fe:
            return r18
        L_0x00ff:
            r0 = move-exception
            goto L_0x0110
        L_0x0101:
            r0 = move-exception
            r21 = r8
            goto L_0x0132
        L_0x0105:
            r0 = move-exception
            r21 = r8
            goto L_0x0110
        L_0x0109:
            r0 = move-exception
            r21 = r16
            goto L_0x0132
        L_0x010d:
            r0 = move-exception
            r21 = r16
        L_0x0110:
            c.e.a.b.h.b.t r1 = r22.e()     // Catch:{ all -> 0x0131 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x0131 }
            java.lang.String r2 = "Error querying events. appId"
            java.lang.Object r3 = c.e.a.b.h.b.C0957t.a((java.lang.String) r23)     // Catch:{ all -> 0x0131 }
            c.e.a.b.h.b.r r4 = r22.f()     // Catch:{ all -> 0x0131 }
            r5 = r24
            java.lang.String r4 = r4.a((java.lang.String) r5)     // Catch:{ all -> 0x0131 }
            r1.a(r2, r3, r4, r0)     // Catch:{ all -> 0x0131 }
            if (r21 == 0) goto L_0x0130
            r21.close()
        L_0x0130:
            return r16
        L_0x0131:
            r0 = move-exception
        L_0x0132:
            if (r21 == 0) goto L_0x0137
            r21.close()
        L_0x0137:
            goto L_0x0139
        L_0x0138:
            throw r0
        L_0x0139:
            goto L_0x0138
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.b(java.lang.String, java.lang.String):c.e.a.b.h.b.g");
    }

    public final void c(String str, String str2) {
        r.b(str);
        r.b(str2);
        l();
        s();
        try {
            e().B().a("Deleted user attribute rows", Integer.valueOf(x().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e2) {
            e().t().a("Error deleting user attribute. appId", C0957t.a(str), f().c(str2), e2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00ae  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.b.h.b.bc d(java.lang.String r19, java.lang.String r20) {
        /*
            r18 = this;
            r8 = r20
            c.e.a.b.d.d.r.b((java.lang.String) r19)
            c.e.a.b.d.d.r.b((java.lang.String) r20)
            r18.l()
            r18.s()
            r9 = 0
            android.database.sqlite.SQLiteDatabase r10 = r18.x()     // Catch:{ SQLiteException -> 0x0088, all -> 0x0083 }
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
            c.e.a.b.h.b.bc r0 = new c.e.a.b.h.b.bc     // Catch:{ SQLiteException -> 0x0079 }
            r1 = r0
            r2 = r19
            r4 = r20
            r1.<init>(r2, r3, r4, r5, r7)     // Catch:{ SQLiteException -> 0x0079 }
            boolean r1 = r10.moveToNext()     // Catch:{ SQLiteException -> 0x0079 }
            if (r1 == 0) goto L_0x0073
            c.e.a.b.h.b.t r1 = r18.e()     // Catch:{ SQLiteException -> 0x0079 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ SQLiteException -> 0x0079 }
            java.lang.String r2 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r3 = c.e.a.b.h.b.C0957t.a((java.lang.String) r19)     // Catch:{ SQLiteException -> 0x0079 }
            r1.a(r2, r3)     // Catch:{ SQLiteException -> 0x0079 }
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
            c.e.a.b.h.b.t r1 = r18.e()     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x00ab }
            java.lang.String r2 = "Error querying user property. appId"
            java.lang.Object r3 = c.e.a.b.h.b.C0957t.a((java.lang.String) r19)     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.r r4 = r18.f()     // Catch:{ all -> 0x00ab }
            java.lang.String r4 = r4.c(r8)     // Catch:{ all -> 0x00ab }
            r1.a(r2, r3, r4, r0)     // Catch:{ all -> 0x00ab }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.d(java.lang.String, java.lang.String):c.e.a.b.h.b.bc");
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0155  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.measurement.internal.zzr e(java.lang.String r33, java.lang.String r34) {
        /*
            r32 = this;
            r7 = r34
            c.e.a.b.d.d.r.b((java.lang.String) r33)
            c.e.a.b.d.d.r.b((java.lang.String) r34)
            r32.l()
            r32.s()
            r8 = 0
            android.database.sqlite.SQLiteDatabase r9 = r32.x()     // Catch:{ SQLiteException -> 0x012f, all -> 0x012a }
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
            c.e.a.b.h.b.Zb r1 = r32.n()     // Catch:{ SQLiteException -> 0x0120 }
            r2 = 5
            byte[] r2 = r9.getBlob(r2)     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable$Creator<com.google.android.gms.measurement.internal.zzaj> r3 = com.google.android.gms.measurement.internal.zzaj.CREATOR     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable r1 = r1.a((byte[]) r2, r3)     // Catch:{ SQLiteException -> 0x0120 }
            r25 = r1
            com.google.android.gms.measurement.internal.zzaj r25 = (com.google.android.gms.measurement.internal.zzaj) r25     // Catch:{ SQLiteException -> 0x0120 }
            long r12 = r9.getLong(r0)     // Catch:{ SQLiteException -> 0x0120 }
            c.e.a.b.h.b.Zb r0 = r32.n()     // Catch:{ SQLiteException -> 0x0120 }
            byte[] r1 = r9.getBlob(r6)     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable$Creator<com.google.android.gms.measurement.internal.zzaj> r2 = com.google.android.gms.measurement.internal.zzaj.CREATOR     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable r0 = r0.a((byte[]) r1, r2)     // Catch:{ SQLiteException -> 0x0120 }
            r28 = r0
            com.google.android.gms.measurement.internal.zzaj r28 = (com.google.android.gms.measurement.internal.zzaj) r28     // Catch:{ SQLiteException -> 0x0120 }
            r0 = 8
            long r3 = r9.getLong(r0)     // Catch:{ SQLiteException -> 0x0120 }
            r0 = 9
            long r29 = r9.getLong(r0)     // Catch:{ SQLiteException -> 0x0120 }
            c.e.a.b.h.b.Zb r0 = r32.n()     // Catch:{ SQLiteException -> 0x0120 }
            r1 = 10
            byte[] r1 = r9.getBlob(r1)     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable$Creator<com.google.android.gms.measurement.internal.zzaj> r2 = com.google.android.gms.measurement.internal.zzaj.CREATOR     // Catch:{ SQLiteException -> 0x0120 }
            android.os.Parcelable r0 = r0.a((byte[]) r1, r2)     // Catch:{ SQLiteException -> 0x0120 }
            r31 = r0
            com.google.android.gms.measurement.internal.zzaj r31 = (com.google.android.gms.measurement.internal.zzaj) r31     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.measurement.internal.zzga r20 = new com.google.android.gms.measurement.internal.zzga     // Catch:{ SQLiteException -> 0x0120 }
            r1 = r20
            r2 = r34
            r5 = r11
            r6 = r19
            r1.<init>(r2, r3, r5, r6)     // Catch:{ SQLiteException -> 0x0120 }
            com.google.android.gms.measurement.internal.zzr r0 = new com.google.android.gms.measurement.internal.zzr     // Catch:{ SQLiteException -> 0x0120 }
            r17 = r0
            r18 = r33
            r21 = r12
            r17.<init>(r18, r19, r20, r21, r23, r24, r25, r26, r28, r29, r31)     // Catch:{ SQLiteException -> 0x0120 }
            boolean r1 = r9.moveToNext()     // Catch:{ SQLiteException -> 0x0120 }
            if (r1 == 0) goto L_0x011a
            c.e.a.b.h.b.t r1 = r32.e()     // Catch:{ SQLiteException -> 0x0120 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ SQLiteException -> 0x0120 }
            java.lang.String r2 = "Got multiple records for conditional property, expected one"
            java.lang.Object r3 = c.e.a.b.h.b.C0957t.a((java.lang.String) r33)     // Catch:{ SQLiteException -> 0x0120 }
            c.e.a.b.h.b.r r4 = r32.f()     // Catch:{ SQLiteException -> 0x0120 }
            java.lang.String r4 = r4.c(r7)     // Catch:{ SQLiteException -> 0x0120 }
            r1.a(r2, r3, r4)     // Catch:{ SQLiteException -> 0x0120 }
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
            c.e.a.b.h.b.t r1 = r32.e()     // Catch:{ all -> 0x0152 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x0152 }
            java.lang.String r2 = "Error querying conditional property"
            java.lang.Object r3 = c.e.a.b.h.b.C0957t.a((java.lang.String) r33)     // Catch:{ all -> 0x0152 }
            c.e.a.b.h.b.r r4 = r32.f()     // Catch:{ all -> 0x0152 }
            java.lang.String r4 = r4.c(r7)     // Catch:{ all -> 0x0152 }
            r1.a(r2, r3, r4, r0)     // Catch:{ all -> 0x0152 }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.e(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzr");
    }

    public final int f(String str, String str2) {
        r.b(str);
        r.b(str2);
        l();
        s();
        try {
            return x().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e2) {
            e().t().a("Error deleting conditional property", C0957t.a(str), f().c(str2), e2);
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Map<java.lang.Integer, java.util.List<c.e.a.b.g.f.T>> g(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.s()
            r12.l()
            c.e.a.b.d.d.r.b((java.lang.String) r13)
            c.e.a.b.d.d.r.b((java.lang.String) r14)
            b.f.b r0 = new b.f.b
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.x()
            r9 = 0
            java.lang.String r2 = "event_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            java.lang.String r5 = "app_id=? AND event_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            r6[r10] = r13     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            r6[r11] = r14     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            boolean r1 = r14.moveToFirst()     // Catch:{ SQLiteException -> 0x0094 }
            if (r1 != 0) goto L_0x0048
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch:{ SQLiteException -> 0x0094 }
            if (r14 == 0) goto L_0x0047
            r14.close()
        L_0x0047:
            return r13
        L_0x0048:
            byte[] r1 = r14.getBlob(r11)     // Catch:{ SQLiteException -> 0x0094 }
            c.e.a.b.g.f.T r2 = new c.e.a.b.g.f.T     // Catch:{ IOException -> 0x0076 }
            r2.<init>()     // Catch:{ IOException -> 0x0076 }
            c.e.a.b.g.f.Wc.a(r2, r1)     // Catch:{ IOException -> 0x0076 }
            c.e.a.b.g.f.T r2 = (c.e.a.b.g.f.T) r2     // Catch:{ IOException -> 0x0076 }
            int r1 = r14.getInt(r10)     // Catch:{ SQLiteException -> 0x0094 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLiteException -> 0x0094 }
            java.lang.Object r3 = r0.get(r3)     // Catch:{ SQLiteException -> 0x0094 }
            java.util.List r3 = (java.util.List) r3     // Catch:{ SQLiteException -> 0x0094 }
            if (r3 != 0) goto L_0x0072
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ SQLiteException -> 0x0094 }
            r3.<init>()     // Catch:{ SQLiteException -> 0x0094 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLiteException -> 0x0094 }
            r0.put(r1, r3)     // Catch:{ SQLiteException -> 0x0094 }
        L_0x0072:
            r3.add(r2)     // Catch:{ SQLiteException -> 0x0094 }
            goto L_0x0088
        L_0x0076:
            r1 = move-exception
            c.e.a.b.h.b.t r2 = r12.e()     // Catch:{ SQLiteException -> 0x0094 }
            c.e.a.b.h.b.v r2 = r2.t()     // Catch:{ SQLiteException -> 0x0094 }
            java.lang.String r3 = "Failed to merge filter. appId"
            java.lang.Object r4 = c.e.a.b.h.b.C0957t.a((java.lang.String) r13)     // Catch:{ SQLiteException -> 0x0094 }
            r2.a(r3, r4, r1)     // Catch:{ SQLiteException -> 0x0094 }
        L_0x0088:
            boolean r1 = r14.moveToNext()     // Catch:{ SQLiteException -> 0x0094 }
            if (r1 != 0) goto L_0x0048
            if (r14 == 0) goto L_0x0093
            r14.close()
        L_0x0093:
            return r0
        L_0x0094:
            r0 = move-exception
            goto L_0x009b
        L_0x0096:
            r13 = move-exception
            r14 = r9
            goto L_0x00b3
        L_0x0099:
            r0 = move-exception
            r14 = r9
        L_0x009b:
            c.e.a.b.h.b.t r1 = r12.e()     // Catch:{ all -> 0x00b2 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x00b2 }
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = c.e.a.b.h.b.C0957t.a((java.lang.String) r13)     // Catch:{ all -> 0x00b2 }
            r1.a(r2, r13, r0)     // Catch:{ all -> 0x00b2 }
            if (r14 == 0) goto L_0x00b1
            r14.close()
        L_0x00b1:
            return r9
        L_0x00b2:
            r13 = move-exception
        L_0x00b3:
            if (r14 == 0) goto L_0x00b8
            r14.close()
        L_0x00b8:
            goto L_0x00ba
        L_0x00b9:
            throw r13
        L_0x00ba:
            goto L_0x00b9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.g(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00b5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Map<java.lang.Integer, java.util.List<c.e.a.b.g.f.X>> h(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.s()
            r12.l()
            c.e.a.b.d.d.r.b((java.lang.String) r13)
            c.e.a.b.d.d.r.b((java.lang.String) r14)
            b.f.b r0 = new b.f.b
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.x()
            r9 = 0
            java.lang.String r2 = "property_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            java.lang.String r5 = "app_id=? AND property_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            r6[r10] = r13     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            r6[r11] = r14     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x0099, all -> 0x0096 }
            boolean r1 = r14.moveToFirst()     // Catch:{ SQLiteException -> 0x0094 }
            if (r1 != 0) goto L_0x0048
            java.util.Map r13 = java.util.Collections.emptyMap()     // Catch:{ SQLiteException -> 0x0094 }
            if (r14 == 0) goto L_0x0047
            r14.close()
        L_0x0047:
            return r13
        L_0x0048:
            byte[] r1 = r14.getBlob(r11)     // Catch:{ SQLiteException -> 0x0094 }
            c.e.a.b.g.f.X r2 = new c.e.a.b.g.f.X     // Catch:{ IOException -> 0x0076 }
            r2.<init>()     // Catch:{ IOException -> 0x0076 }
            c.e.a.b.g.f.Wc.a(r2, r1)     // Catch:{ IOException -> 0x0076 }
            c.e.a.b.g.f.X r2 = (c.e.a.b.g.f.X) r2     // Catch:{ IOException -> 0x0076 }
            int r1 = r14.getInt(r10)     // Catch:{ SQLiteException -> 0x0094 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLiteException -> 0x0094 }
            java.lang.Object r3 = r0.get(r3)     // Catch:{ SQLiteException -> 0x0094 }
            java.util.List r3 = (java.util.List) r3     // Catch:{ SQLiteException -> 0x0094 }
            if (r3 != 0) goto L_0x0072
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ SQLiteException -> 0x0094 }
            r3.<init>()     // Catch:{ SQLiteException -> 0x0094 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLiteException -> 0x0094 }
            r0.put(r1, r3)     // Catch:{ SQLiteException -> 0x0094 }
        L_0x0072:
            r3.add(r2)     // Catch:{ SQLiteException -> 0x0094 }
            goto L_0x0088
        L_0x0076:
            r1 = move-exception
            c.e.a.b.h.b.t r2 = r12.e()     // Catch:{ SQLiteException -> 0x0094 }
            c.e.a.b.h.b.v r2 = r2.t()     // Catch:{ SQLiteException -> 0x0094 }
            java.lang.String r3 = "Failed to merge filter"
            java.lang.Object r4 = c.e.a.b.h.b.C0957t.a((java.lang.String) r13)     // Catch:{ SQLiteException -> 0x0094 }
            r2.a(r3, r4, r1)     // Catch:{ SQLiteException -> 0x0094 }
        L_0x0088:
            boolean r1 = r14.moveToNext()     // Catch:{ SQLiteException -> 0x0094 }
            if (r1 != 0) goto L_0x0048
            if (r14 == 0) goto L_0x0093
            r14.close()
        L_0x0093:
            return r0
        L_0x0094:
            r0 = move-exception
            goto L_0x009b
        L_0x0096:
            r13 = move-exception
            r14 = r9
            goto L_0x00b3
        L_0x0099:
            r0 = move-exception
            r14 = r9
        L_0x009b:
            c.e.a.b.h.b.t r1 = r12.e()     // Catch:{ all -> 0x00b2 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x00b2 }
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = c.e.a.b.h.b.C0957t.a((java.lang.String) r13)     // Catch:{ all -> 0x00b2 }
            r1.a(r2, r13, r0)     // Catch:{ all -> 0x00b2 }
            if (r14 == 0) goto L_0x00b1
            r14.close()
        L_0x00b1:
            return r9
        L_0x00b2:
            r13 = move-exception
        L_0x00b3:
            if (r14 == 0) goto L_0x00b8
            r14.close()
        L_0x00b8:
            goto L_0x00ba
        L_0x00b9:
            throw r13
        L_0x00ba:
            goto L_0x00b9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.h(java.lang.String, java.lang.String):java.util.Map");
    }

    public final long i(String str, String str2) {
        long j2;
        String str3 = str;
        String str4 = str2;
        r.b(str);
        r.b(str2);
        l();
        s();
        SQLiteDatabase x = x();
        x.beginTransaction();
        try {
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 32);
            sb.append("select ");
            sb.append(str4);
            sb.append(" from app2 where app_id=?");
            try {
                j2 = a(sb.toString(), new String[]{str3}, -1);
                if (j2 == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str3);
                    contentValues.put("first_open_count", 0);
                    contentValues.put("previous_install_count", 0);
                    if (x.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        e().t().a("Failed to insert column (got -1). appId", C0957t.a(str), str4);
                        x.endTransaction();
                        return -1;
                    }
                    j2 = 0;
                }
            } catch (SQLiteException e2) {
                e = e2;
                j2 = 0;
                try {
                    e().t().a("Error inserting column. appId", C0957t.a(str), str4, e);
                    x.endTransaction();
                    return j2;
                } catch (Throwable th) {
                    th = th;
                    x.endTransaction();
                    throw th;
                }
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str3);
                contentValues2.put(str4, Long.valueOf(1 + j2));
                if (((long) x.update("app2", contentValues2, "app_id = ?", new String[]{str3})) == 0) {
                    e().t().a("Failed to update column (got 0). appId", C0957t.a(str), str4);
                    x.endTransaction();
                    return -1;
                }
                x.setTransactionSuccessful();
                x.endTransaction();
                return j2;
            } catch (SQLiteException e3) {
                e = e3;
                e().t().a("Error inserting column. appId", C0957t.a(str), str4, e);
                x.endTransaction();
                return j2;
            }
        } catch (SQLiteException e4) {
            e = e4;
            j2 = 0;
            e().t().a("Error inserting column. appId", C0957t.a(str), str4, e);
            x.endTransaction();
            return j2;
        } catch (Throwable th2) {
            th = th2;
            x.endTransaction();
            throw th;
        }
    }

    public final boolean u() {
        return false;
    }

    public final void v() {
        s();
        x().beginTransaction();
    }

    public final void w() {
        s();
        x().endTransaction();
    }

    public final SQLiteDatabase x() {
        l();
        try {
            return this.f11043j.getWritableDatabase();
        } catch (SQLiteException e2) {
            e().w().a("Error opening database", e2);
            throw e2;
        }
    }

    public final void y() {
        s();
        x().setTransactionSuccessful();
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0041  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String z() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.x()
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
            c.e.a.b.h.b.t r3 = r6.e()     // Catch:{ all -> 0x003e }
            c.e.a.b.h.b.v r3 = r3.t()     // Catch:{ all -> 0x003e }
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.a(r4, r2)     // Catch:{ all -> 0x003e }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.z():java.lang.String");
    }

    public final long a(String str, String[] strArr, long j2) {
        Cursor cursor = null;
        try {
            Cursor rawQuery = x().rawQuery(str, strArr);
            if (rawQuery.moveToFirst()) {
                long j3 = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j3;
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return j2;
        } catch (SQLiteException e2) {
            e().t().a("Database error", str, e2);
            throw e2;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long f(String str) {
        r.b(str);
        return a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0);
    }

    public final long c(String str) {
        r.b(str);
        l();
        s();
        try {
            return (long) x().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, i().b(str, C0931k.D))))});
        } catch (SQLiteException e2) {
            e().t().a("Error deleting over the limit events. appId", C0957t.a(str), e2);
            return 0;
        }
    }

    public final void a(C0919g gVar) {
        r.a(gVar);
        l();
        s();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", gVar.f10888a);
        contentValues.put(DefaultAppMeasurementEventListenerRegistrar.NAME, gVar.f10889b);
        contentValues.put("lifetime_count", Long.valueOf(gVar.f10890c));
        contentValues.put("current_bundle_count", Long.valueOf(gVar.f10891d));
        contentValues.put("last_fire_timestamp", Long.valueOf(gVar.f10892e));
        contentValues.put("last_bundled_timestamp", Long.valueOf(gVar.f10893f));
        contentValues.put("last_bundled_day", gVar.f10894g);
        contentValues.put("last_sampled_complex_event_id", gVar.f10895h);
        contentValues.put("last_sampling_rate", gVar.f10896i);
        Boolean bool = gVar.f10897j;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (x().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                e().t().a("Failed to insert/update event aggregates (got -1). appId", C0957t.a(gVar.f10888a));
            }
        } catch (SQLiteException e2) {
            e().t().a("Error storing event aggregates. appId", C0957t.a(gVar.f10888a), e2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0079  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final byte[] d(java.lang.String r12) {
        /*
            r11 = this;
            c.e.a.b.d.d.r.b((java.lang.String) r12)
            r11.l()
            r11.s()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r11.x()     // Catch:{ SQLiteException -> 0x005d, all -> 0x005a }
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
            c.e.a.b.h.b.t r3 = r11.e()     // Catch:{ SQLiteException -> 0x0058 }
            c.e.a.b.h.b.v r3 = r3.t()     // Catch:{ SQLiteException -> 0x0058 }
            java.lang.String r4 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r5 = c.e.a.b.h.b.C0957t.a((java.lang.String) r12)     // Catch:{ SQLiteException -> 0x0058 }
            r3.a(r4, r5)     // Catch:{ SQLiteException -> 0x0058 }
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
            c.e.a.b.h.b.t r3 = r11.e()     // Catch:{ all -> 0x0076 }
            c.e.a.b.h.b.v r3 = r3.t()     // Catch:{ all -> 0x0076 }
            java.lang.String r4 = "Error querying remote config. appId"
            java.lang.Object r12 = c.e.a.b.h.b.C0957t.a((java.lang.String) r12)     // Catch:{ all -> 0x0076 }
            r3.a(r4, r12, r2)     // Catch:{ all -> 0x0076 }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.d(java.lang.String):byte[]");
    }

    public final List<zzr> b(String str, String str2, String str3) {
        r.b(str);
        l();
        s();
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
        return b(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0096  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Map<java.lang.Integer, c.e.a.b.g.f.L> e(java.lang.String r12) {
        /*
            r11 = this;
            r11.s()
            r11.l()
            c.e.a.b.d.d.r.b((java.lang.String) r12)
            android.database.sqlite.SQLiteDatabase r0 = r11.x()
            r8 = 0
            java.lang.String r1 = "audience_filter_values"
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x007a, all -> 0x0077 }
            java.lang.String r3 = "audience_id"
            r9 = 0
            r2[r9] = r3     // Catch:{ SQLiteException -> 0x007a, all -> 0x0077 }
            java.lang.String r3 = "current_results"
            r10 = 1
            r2[r10] = r3     // Catch:{ SQLiteException -> 0x007a, all -> 0x0077 }
            java.lang.String r3 = "app_id=?"
            java.lang.String[] r4 = new java.lang.String[r10]     // Catch:{ SQLiteException -> 0x007a, all -> 0x0077 }
            r4[r9] = r12     // Catch:{ SQLiteException -> 0x007a, all -> 0x0077 }
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ SQLiteException -> 0x007a, all -> 0x0077 }
            boolean r1 = r0.moveToFirst()     // Catch:{ SQLiteException -> 0x0075 }
            if (r1 != 0) goto L_0x0036
            if (r0 == 0) goto L_0x0035
            r0.close()
        L_0x0035:
            return r8
        L_0x0036:
            b.f.b r1 = new b.f.b     // Catch:{ SQLiteException -> 0x0075 }
            r1.<init>()     // Catch:{ SQLiteException -> 0x0075 }
        L_0x003b:
            int r2 = r0.getInt(r9)     // Catch:{ SQLiteException -> 0x0075 }
            byte[] r3 = r0.getBlob(r10)     // Catch:{ SQLiteException -> 0x0075 }
            c.e.a.b.g.f.cb r4 = c.e.a.b.g.f.C0808cb.d()     // Catch:{ IOException -> 0x0053 }
            c.e.a.b.g.f.L r3 = c.e.a.b.g.f.L.a((byte[]) r3, (c.e.a.b.g.f.C0808cb) r4)     // Catch:{ IOException -> 0x0053 }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ SQLiteException -> 0x0075 }
            r1.put(r2, r3)     // Catch:{ SQLiteException -> 0x0075 }
            goto L_0x0069
        L_0x0053:
            r3 = move-exception
            c.e.a.b.h.b.t r4 = r11.e()     // Catch:{ SQLiteException -> 0x0075 }
            c.e.a.b.h.b.v r4 = r4.t()     // Catch:{ SQLiteException -> 0x0075 }
            java.lang.String r5 = "Failed to merge filter results. appId, audienceId, error"
            java.lang.Object r6 = c.e.a.b.h.b.C0957t.a((java.lang.String) r12)     // Catch:{ SQLiteException -> 0x0075 }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ SQLiteException -> 0x0075 }
            r4.a(r5, r6, r2, r3)     // Catch:{ SQLiteException -> 0x0075 }
        L_0x0069:
            boolean r2 = r0.moveToNext()     // Catch:{ SQLiteException -> 0x0075 }
            if (r2 != 0) goto L_0x003b
            if (r0 == 0) goto L_0x0074
            r0.close()
        L_0x0074:
            return r1
        L_0x0075:
            r1 = move-exception
            goto L_0x007c
        L_0x0077:
            r12 = move-exception
            r0 = r8
            goto L_0x0094
        L_0x007a:
            r1 = move-exception
            r0 = r8
        L_0x007c:
            c.e.a.b.h.b.t r2 = r11.e()     // Catch:{ all -> 0x0093 }
            c.e.a.b.h.b.v r2 = r2.t()     // Catch:{ all -> 0x0093 }
            java.lang.String r3 = "Database error querying filter results. appId"
            java.lang.Object r12 = c.e.a.b.h.b.C0957t.a((java.lang.String) r12)     // Catch:{ all -> 0x0093 }
            r2.a(r3, r12, r1)     // Catch:{ all -> 0x0093 }
            if (r0 == 0) goto L_0x0092
            r0.close()
        L_0x0092:
            return r8
        L_0x0093:
            r12 = move-exception
        L_0x0094:
            if (r0 == 0) goto L_0x0099
            r0.close()
        L_0x0099:
            goto L_0x009b
        L_0x009a:
            throw r12
        L_0x009b:
            goto L_0x009a
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.e(java.lang.String):java.util.Map");
    }

    public final boolean a(bc bcVar) {
        r.a(bcVar);
        l();
        s();
        if (d(bcVar.f10830a, bcVar.f10832c) == null) {
            if (cc.a(bcVar.f10832c)) {
                if (a("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{bcVar.f10830a}) >= 25) {
                    return false;
                }
            } else if (!i().e(bcVar.f10830a, C0931k.ya)) {
                if (a("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{bcVar.f10830a, bcVar.f10831b}) >= 25) {
                    return false;
                }
            } else if (!"_npa".equals(bcVar.f10832c)) {
                if (a("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{bcVar.f10830a, bcVar.f10831b}) >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", bcVar.f10830a);
        contentValues.put("origin", bcVar.f10831b);
        contentValues.put(DefaultAppMeasurementEventListenerRegistrar.NAME, bcVar.f10832c);
        contentValues.put("set_timestamp", Long.valueOf(bcVar.f10833d));
        a(contentValues, "value", bcVar.f10834e);
        try {
            if (x().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                e().t().a("Failed to insert/update user property (got -1). appId", C0957t.a(bcVar.f10830a));
            }
        } catch (SQLiteException e2) {
            e().t().a("Error storing user property. appId", C0957t.a(bcVar.f10830a), e2);
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x016d  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0175  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.measurement.internal.zzr> b(java.lang.String r40, java.lang.String[] r41) {
        /*
            r39 = this;
            r39.l()
            r39.s()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r2 = r39.x()     // Catch:{ SQLiteException -> 0x0158, all -> 0x0155 }
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
            c.e.a.b.h.b.t r1 = r39.e()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            java.lang.String r3 = "Read more than the max allowed conditional properties, ignoring extra"
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r1.a(r3, r4)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
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
            c.e.a.b.h.b.Zb r4 = r39.n()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r7 = 7
            byte[] r1 = r2.getBlob(r7)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable$Creator<com.google.android.gms.measurement.internal.zzaj> r6 = com.google.android.gms.measurement.internal.zzaj.CREATOR     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable r1 = r4.a((byte[]) r1, r6)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.measurement.internal.zzaj r1 = (com.google.android.gms.measurement.internal.zzaj) r1     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r6 = 8
            long r27 = r2.getLong(r6)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            c.e.a.b.h.b.Zb r4 = r39.n()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r11 = 9
            byte[] r6 = r2.getBlob(r11)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable$Creator<com.google.android.gms.measurement.internal.zzaj> r7 = com.google.android.gms.measurement.internal.zzaj.CREATOR     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable r4 = r4.a((byte[]) r6, r7)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r29 = r4
            com.google.android.gms.measurement.internal.zzaj r29 = (com.google.android.gms.measurement.internal.zzaj) r29     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r6 = 10
            long r16 = r2.getLong(r6)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r7 = 11
            long r31 = r2.getLong(r7)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            c.e.a.b.h.b.Zb r4 = r39.n()     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r11 = 12
            byte[] r6 = r2.getBlob(r11)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable$Creator<com.google.android.gms.measurement.internal.zzaj> r7 = com.google.android.gms.measurement.internal.zzaj.CREATOR     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            android.os.Parcelable r4 = r4.a((byte[]) r6, r7)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r30 = r4
            com.google.android.gms.measurement.internal.zzaj r30 = (com.google.android.gms.measurement.internal.zzaj) r30     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.measurement.internal.zzga r33 = new com.google.android.gms.measurement.internal.zzga     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            r4 = r33
            r34 = 11
            r35 = 10
            r36 = 8
            r37 = 7
            r38 = 6
            r6 = r16
            r9 = r10
            r4.<init>(r5, r6, r8, r9)     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
            com.google.android.gms.measurement.internal.zzr r4 = new com.google.android.gms.measurement.internal.zzr     // Catch:{ SQLiteException -> 0x0152, all -> 0x0150 }
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
            c.e.a.b.h.b.t r2 = r39.e()     // Catch:{ all -> 0x0171 }
            c.e.a.b.h.b.v r2 = r2.t()     // Catch:{ all -> 0x0171 }
            java.lang.String r3 = "Error querying conditional user property value"
            r2.a(r3, r0)     // Catch:{ all -> 0x0171 }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.b(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00b8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<c.e.a.b.h.b.bc> a(java.lang.String r23) {
        /*
            r22 = this;
            c.e.a.b.d.d.r.b((java.lang.String) r23)
            r22.l()
            r22.s()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r22.x()     // Catch:{ SQLiteException -> 0x009a, all -> 0x0095 }
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
            c.e.a.b.h.b.t r4 = r22.e()     // Catch:{ SQLiteException -> 0x008b }
            c.e.a.b.h.b.v r4 = r4.t()     // Catch:{ SQLiteException -> 0x008b }
            java.lang.String r5 = "Read invalid user property value, ignoring it. appId"
            java.lang.Object r6 = c.e.a.b.h.b.C0957t.a((java.lang.String) r23)     // Catch:{ SQLiteException -> 0x008b }
            r4.a(r5, r6)     // Catch:{ SQLiteException -> 0x008b }
            goto L_0x007f
        L_0x0074:
            c.e.a.b.h.b.bc r4 = new c.e.a.b.h.b.bc     // Catch:{ SQLiteException -> 0x008b }
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
            c.e.a.b.h.b.t r4 = r22.e()     // Catch:{ all -> 0x00b5 }
            c.e.a.b.h.b.v r4 = r4.t()     // Catch:{ all -> 0x00b5 }
            java.lang.String r5 = "Error querying user properties. appId"
            java.lang.Object r6 = c.e.a.b.h.b.C0957t.a((java.lang.String) r23)     // Catch:{ all -> 0x00b5 }
            r4.a(r5, r6, r0)     // Catch:{ all -> 0x00b5 }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.a(java.lang.String):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0186 A[Catch:{ SQLiteException -> 0x022a }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x018a A[Catch:{ SQLiteException -> 0x022a }] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x01be A[Catch:{ SQLiteException -> 0x022a }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x01c1 A[Catch:{ SQLiteException -> 0x022a }] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x01d0 A[Catch:{ SQLiteException -> 0x022a }] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0200 A[Catch:{ SQLiteException -> 0x022a }] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0203 A[Catch:{ SQLiteException -> 0x022a }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0213 A[Catch:{ SQLiteException -> 0x022a }] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0226  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0250  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0257  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.b.h.b._b b(java.lang.String r22) {
        /*
            r21 = this;
            r1 = r22
            c.e.a.b.d.d.r.b((java.lang.String) r22)
            r21.l()
            r21.s()
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r21.x()     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r4 = "apps"
            r0 = 27
            java.lang.String[] r5 = new java.lang.String[r0]     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "app_instance_id"
            r11 = 0
            r5[r11] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "gmp_app_id"
            r12 = 1
            r5[r12] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "resettable_device_id_hash"
            r13 = 2
            r5[r13] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "last_bundle_index"
            r14 = 3
            r5[r14] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "last_bundle_start_timestamp"
            r15 = 4
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "last_bundle_end_timestamp"
            r10 = 5
            r5[r10] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "app_version"
            r9 = 6
            r5[r9] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "app_store"
            r8 = 7
            r5[r8] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 8
            java.lang.String r6 = "gmp_version"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 9
            java.lang.String r6 = "dev_cert_hash"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "measurement_enabled"
            r7 = 10
            r5[r7] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 11
            java.lang.String r6 = "day"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 12
            java.lang.String r6 = "daily_public_events_count"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 13
            java.lang.String r6 = "daily_events_count"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 14
            java.lang.String r6 = "daily_conversions_count"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 15
            java.lang.String r6 = "config_fetched_time"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 16
            java.lang.String r6 = "failed_config_fetch_time"
            r5[r0] = r6     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "app_version_int"
            r6 = 17
            r5[r6] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 18
            java.lang.String r16 = "firebase_instance_id"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 19
            java.lang.String r16 = "daily_error_events_count"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 20
            java.lang.String r16 = "daily_realtime_events_count"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 21
            java.lang.String r16 = "health_monitor_sample"
            r5[r0] = r16     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "android_id"
            r15 = 22
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "adid_reporting_enabled"
            r15 = 23
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "ssaid_reporting_enabled"
            r15 = 24
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r0 = 25
            java.lang.String r17 = "admob_app_id"
            r5[r0] = r17     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "dynamite_version"
            r15 = 26
            r5[r15] = r0     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            java.lang.String r0 = "app_id=?"
            java.lang.String[] r7 = new java.lang.String[r12]     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r7[r11] = r1     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            r18 = 0
            r19 = 0
            r20 = 0
            r15 = 17
            r6 = r0
            r0 = 10
            r15 = 7
            r8 = r18
            r0 = 6
            r9 = r19
            r15 = 5
            r10 = r20
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch:{ SQLiteException -> 0x0239, all -> 0x0234 }
            boolean r4 = r3.moveToFirst()     // Catch:{ SQLiteException -> 0x0230, all -> 0x022c }
            if (r4 != 0) goto L_0x00da
            if (r3 == 0) goto L_0x00d9
            r3.close()
        L_0x00d9:
            return r2
        L_0x00da:
            c.e.a.b.h.b._b r4 = new c.e.a.b.h.b._b     // Catch:{ SQLiteException -> 0x0230, all -> 0x022c }
            r5 = r21
            c.e.a.b.h.b.Tb r6 = r5.f10729b     // Catch:{ SQLiteException -> 0x022a }
            c.e.a.b.h.b.Y r6 = r6.B()     // Catch:{ SQLiteException -> 0x022a }
            r4.<init>(r6, r1)     // Catch:{ SQLiteException -> 0x022a }
            java.lang.String r6 = r3.getString(r11)     // Catch:{ SQLiteException -> 0x022a }
            r4.a((java.lang.String) r6)     // Catch:{ SQLiteException -> 0x022a }
            java.lang.String r6 = r3.getString(r12)     // Catch:{ SQLiteException -> 0x022a }
            r4.b((java.lang.String) r6)     // Catch:{ SQLiteException -> 0x022a }
            java.lang.String r6 = r3.getString(r13)     // Catch:{ SQLiteException -> 0x022a }
            r4.d((java.lang.String) r6)     // Catch:{ SQLiteException -> 0x022a }
            long r6 = r3.getLong(r14)     // Catch:{ SQLiteException -> 0x022a }
            r4.g((long) r6)     // Catch:{ SQLiteException -> 0x022a }
            r6 = 4
            long r6 = r3.getLong(r6)     // Catch:{ SQLiteException -> 0x022a }
            r4.a((long) r6)     // Catch:{ SQLiteException -> 0x022a }
            long r6 = r3.getLong(r15)     // Catch:{ SQLiteException -> 0x022a }
            r4.b((long) r6)     // Catch:{ SQLiteException -> 0x022a }
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.f((java.lang.String) r0)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 7
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.g((java.lang.String) r0)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 8
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.d((long) r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 9
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.e((long) r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 10
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r6 != 0) goto L_0x0144
            int r0 = r3.getInt(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r0 == 0) goto L_0x0142
            goto L_0x0144
        L_0x0142:
            r0 = 0
            goto L_0x0145
        L_0x0144:
            r0 = 1
        L_0x0145:
            r4.a((boolean) r0)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 11
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.j(r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 12
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.k(r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 13
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.l(r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 14
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.m(r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 15
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.h((long) r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 16
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.i(r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 17
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r6 == 0) goto L_0x018a
            r6 = -2147483648(0xffffffff80000000, double:NaN)
            goto L_0x018f
        L_0x018a:
            int r0 = r3.getInt(r0)     // Catch:{ SQLiteException -> 0x022a }
            long r6 = (long) r0     // Catch:{ SQLiteException -> 0x022a }
        L_0x018f:
            r4.c((long) r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 18
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.e((java.lang.String) r0)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 19
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.o(r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 20
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.n(r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 21
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.h((java.lang.String) r0)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 22
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r6 == 0) goto L_0x01c1
            r6 = 0
            goto L_0x01c5
        L_0x01c1:
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
        L_0x01c5:
            r4.p(r6)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 23
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r6 != 0) goto L_0x01d9
            int r0 = r3.getInt(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r0 == 0) goto L_0x01d7
            goto L_0x01d9
        L_0x01d7:
            r0 = 0
            goto L_0x01da
        L_0x01d9:
            r0 = 1
        L_0x01da:
            r4.b((boolean) r0)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 24
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r6 != 0) goto L_0x01eb
            int r0 = r3.getInt(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r0 == 0) goto L_0x01ec
        L_0x01eb:
            r11 = 1
        L_0x01ec:
            r4.c((boolean) r11)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 25
            java.lang.String r0 = r3.getString(r0)     // Catch:{ SQLiteException -> 0x022a }
            r4.c((java.lang.String) r0)     // Catch:{ SQLiteException -> 0x022a }
            r0 = 26
            boolean r6 = r3.isNull(r0)     // Catch:{ SQLiteException -> 0x022a }
            if (r6 == 0) goto L_0x0203
            r6 = 0
            goto L_0x0207
        L_0x0203:
            long r6 = r3.getLong(r0)     // Catch:{ SQLiteException -> 0x022a }
        L_0x0207:
            r4.f((long) r6)     // Catch:{ SQLiteException -> 0x022a }
            r4.e()     // Catch:{ SQLiteException -> 0x022a }
            boolean r0 = r3.moveToNext()     // Catch:{ SQLiteException -> 0x022a }
            if (r0 == 0) goto L_0x0224
            c.e.a.b.h.b.t r0 = r21.e()     // Catch:{ SQLiteException -> 0x022a }
            c.e.a.b.h.b.v r0 = r0.t()     // Catch:{ SQLiteException -> 0x022a }
            java.lang.String r6 = "Got multiple records for app, expected one. appId"
            java.lang.Object r7 = c.e.a.b.h.b.C0957t.a((java.lang.String) r22)     // Catch:{ SQLiteException -> 0x022a }
            r0.a(r6, r7)     // Catch:{ SQLiteException -> 0x022a }
        L_0x0224:
            if (r3 == 0) goto L_0x0229
            r3.close()
        L_0x0229:
            return r4
        L_0x022a:
            r0 = move-exception
            goto L_0x023d
        L_0x022c:
            r0 = move-exception
            r5 = r21
            goto L_0x0255
        L_0x0230:
            r0 = move-exception
            r5 = r21
            goto L_0x023d
        L_0x0234:
            r0 = move-exception
            r5 = r21
            r3 = r2
            goto L_0x0255
        L_0x0239:
            r0 = move-exception
            r5 = r21
            r3 = r2
        L_0x023d:
            c.e.a.b.h.b.t r4 = r21.e()     // Catch:{ all -> 0x0254 }
            c.e.a.b.h.b.v r4 = r4.t()     // Catch:{ all -> 0x0254 }
            java.lang.String r6 = "Error querying app. appId"
            java.lang.Object r1 = c.e.a.b.h.b.C0957t.a((java.lang.String) r22)     // Catch:{ all -> 0x0254 }
            r4.a(r6, r1, r0)     // Catch:{ all -> 0x0254 }
            if (r3 == 0) goto L_0x0253
            r3.close()
        L_0x0253:
            return r2
        L_0x0254:
            r0 = move-exception
        L_0x0255:
            if (r3 == 0) goto L_0x025a
            r3.close()
        L_0x025a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.b(java.lang.String):c.e.a.b.h.b._b");
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
    public final java.util.List<c.e.a.b.h.b.bc> a(java.lang.String r22, java.lang.String r23, java.lang.String r24) {
        /*
            r21 = this;
            c.e.a.b.d.d.r.b((java.lang.String) r22)
            r21.l()
            r21.s()
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
            android.database.sqlite.SQLiteDatabase r12 = r21.x()     // Catch:{ SQLiteException -> 0x011a, all -> 0x0122 }
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
            c.e.a.b.h.b.t r3 = r21.e()     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            c.e.a.b.h.b.v r3 = r3.t()     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            java.lang.String r4 = "Read more than the max allowed user properties, ignoring excess"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            r3.a(r4, r6)     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            r14 = r21
            goto L_0x00fb
        L_0x00ae:
            java.lang.String r7 = r2.getString(r10)     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            long r12 = r2.getLong(r8)     // Catch:{ SQLiteException -> 0x0116, all -> 0x0112 }
            r14 = r21
            java.lang.Object r15 = r14.a((android.database.Cursor) r2, (int) r9)     // Catch:{ SQLiteException -> 0x0110 }
            java.lang.String r6 = r2.getString(r3)     // Catch:{ SQLiteException -> 0x0110 }
            if (r15 != 0) goto L_0x00e0
            c.e.a.b.h.b.t r4 = r21.e()     // Catch:{ SQLiteException -> 0x00dd }
            c.e.a.b.h.b.v r4 = r4.t()     // Catch:{ SQLiteException -> 0x00dd }
            java.lang.String r5 = "(2)Read invalid user property value, ignoring it"
            java.lang.Object r7 = c.e.a.b.h.b.C0957t.a((java.lang.String) r22)     // Catch:{ SQLiteException -> 0x00dd }
            r12 = r24
            r4.a(r5, r7, r6, r12)     // Catch:{ SQLiteException -> 0x00dd }
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
            c.e.a.b.h.b.bc r5 = new c.e.a.b.h.b.bc     // Catch:{ SQLiteException -> 0x010a }
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
            c.e.a.b.h.b.t r3 = r21.e()     // Catch:{ all -> 0x0145 }
            c.e.a.b.h.b.v r3 = r3.t()     // Catch:{ all -> 0x0145 }
            java.lang.String r4 = "(2)Error querying user properties"
            java.lang.Object r6 = c.e.a.b.h.b.C0957t.a((java.lang.String) r22)     // Catch:{ all -> 0x0145 }
            r3.a(r4, r6, r5, r0)     // Catch:{ all -> 0x0145 }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final boolean a(zzr zzr) {
        r.a(zzr);
        l();
        s();
        if (d(zzr.f13256a, zzr.f13258c.f13237b) == null) {
            if (a("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzr.f13256a}) >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzr.f13256a);
        contentValues.put("origin", zzr.f13257b);
        contentValues.put(DefaultAppMeasurementEventListenerRegistrar.NAME, zzr.f13258c.f13237b);
        a(contentValues, "value", zzr.f13258c.x());
        contentValues.put("active", Boolean.valueOf(zzr.f13260e));
        contentValues.put("trigger_event_name", zzr.f13261f);
        contentValues.put("trigger_timeout", Long.valueOf(zzr.f13263h));
        g();
        contentValues.put("timed_out_event", cc.a((Parcelable) zzr.f13262g));
        contentValues.put("creation_timestamp", Long.valueOf(zzr.f13259d));
        g();
        contentValues.put("triggered_event", cc.a((Parcelable) zzr.f13264i));
        contentValues.put("triggered_timestamp", Long.valueOf(zzr.f13258c.f13238c));
        contentValues.put("time_to_live", Long.valueOf(zzr.f13265j));
        g();
        contentValues.put("expired_event", cc.a((Parcelable) zzr.f13266k));
        try {
            if (x().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                e().t().a("Failed to insert/update conditional user property (got -1)", C0957t.a(zzr.f13256a));
            }
        } catch (SQLiteException e2) {
            e().t().a("Error storing conditional user property", C0957t.a(zzr.f13256a), e2);
        }
        return true;
    }

    public final void a(_b _bVar) {
        r.a(_bVar);
        l();
        s();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", _bVar.f());
        contentValues.put("app_instance_id", _bVar.a());
        contentValues.put("gmp_app_id", _bVar.c());
        contentValues.put("resettable_device_id_hash", _bVar.h());
        contentValues.put("last_bundle_index", Long.valueOf(_bVar.q()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(_bVar.i()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(_bVar.j()));
        contentValues.put("app_version", _bVar.k());
        contentValues.put("app_store", _bVar.m());
        contentValues.put("gmp_version", Long.valueOf(_bVar.n()));
        contentValues.put("dev_cert_hash", Long.valueOf(_bVar.o()));
        contentValues.put("measurement_enabled", Boolean.valueOf(_bVar.d()));
        contentValues.put("day", Long.valueOf(_bVar.u()));
        contentValues.put("daily_public_events_count", Long.valueOf(_bVar.v()));
        contentValues.put("daily_events_count", Long.valueOf(_bVar.w()));
        contentValues.put("daily_conversions_count", Long.valueOf(_bVar.x()));
        contentValues.put("config_fetched_time", Long.valueOf(_bVar.r()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(_bVar.s()));
        contentValues.put("app_version_int", Long.valueOf(_bVar.l()));
        contentValues.put("firebase_instance_id", _bVar.b());
        contentValues.put("daily_error_events_count", Long.valueOf(_bVar.z()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(_bVar.y()));
        contentValues.put("health_monitor_sample", _bVar.A());
        contentValues.put("android_id", Long.valueOf(_bVar.C()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(_bVar.D()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(_bVar.E()));
        contentValues.put("admob_app_id", _bVar.g());
        contentValues.put("dynamite_version", Long.valueOf(_bVar.p()));
        try {
            SQLiteDatabase x = x();
            if (((long) x.update("apps", contentValues, "app_id = ?", new String[]{_bVar.f()})) == 0 && x.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                e().t().a("Failed to insert/update app (got -1). appId", C0957t.a(_bVar.f()));
            }
        } catch (SQLiteException e2) {
            e().t().a("Error storing app. appId", C0957t.a(_bVar.f()), e2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0123  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x012a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.b.h.b.tc a(long r22, java.lang.String r24, boolean r25, boolean r26, boolean r27, boolean r28, boolean r29) {
        /*
            r21 = this;
            java.lang.String r0 = "daily_realtime_events_count"
            java.lang.String r1 = "daily_error_events_count"
            java.lang.String r2 = "daily_conversions_count"
            java.lang.String r3 = "daily_public_events_count"
            java.lang.String r4 = "daily_events_count"
            java.lang.String r5 = "day"
            c.e.a.b.d.d.r.b((java.lang.String) r24)
            r21.l()
            r21.s()
            r6 = 1
            java.lang.String[] r7 = new java.lang.String[r6]
            r8 = 0
            r7[r8] = r24
            c.e.a.b.h.b.tc r9 = new c.e.a.b.h.b.tc
            r9.<init>()
            android.database.sqlite.SQLiteDatabase r15 = r21.x()     // Catch:{ SQLiteException -> 0x010e, all -> 0x010b }
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
            c.e.a.b.h.b.t r0 = r21.e()     // Catch:{ SQLiteException -> 0x0109 }
            c.e.a.b.h.b.v r0 = r0.w()     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.String r1 = "Not updating daily counts, app is not known. appId"
            java.lang.Object r2 = c.e.a.b.h.b.C0957t.a((java.lang.String) r24)     // Catch:{ SQLiteException -> 0x0109 }
            r0.a(r1, r2)     // Catch:{ SQLiteException -> 0x0109 }
            if (r10 == 0) goto L_0x0071
            r10.close()
        L_0x0071:
            return r9
        L_0x0072:
            long r11 = r10.getLong(r8)     // Catch:{ SQLiteException -> 0x0109 }
            int r8 = (r11 > r22 ? 1 : (r11 == r22 ? 0 : -1))
            if (r8 != 0) goto L_0x009c
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.f11067b = r11     // Catch:{ SQLiteException -> 0x0109 }
            r6 = 2
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.f11066a = r11     // Catch:{ SQLiteException -> 0x0109 }
            r6 = 3
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.f11068c = r11     // Catch:{ SQLiteException -> 0x0109 }
            r6 = 4
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.f11069d = r11     // Catch:{ SQLiteException -> 0x0109 }
            r6 = 5
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteException -> 0x0109 }
            r9.f11070e = r11     // Catch:{ SQLiteException -> 0x0109 }
        L_0x009c:
            r11 = 1
            if (r25 == 0) goto L_0x00a5
            long r13 = r9.f11067b     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.f11067b = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00a5:
            if (r26 == 0) goto L_0x00ac
            long r13 = r9.f11066a     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.f11066a = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00ac:
            if (r27 == 0) goto L_0x00b3
            long r13 = r9.f11068c     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.f11068c = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00b3:
            if (r28 == 0) goto L_0x00ba
            long r13 = r9.f11069d     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.f11069d = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00ba:
            if (r29 == 0) goto L_0x00c1
            long r13 = r9.f11070e     // Catch:{ SQLiteException -> 0x0109 }
            long r13 = r13 + r11
            r9.f11070e = r13     // Catch:{ SQLiteException -> 0x0109 }
        L_0x00c1:
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch:{ SQLiteException -> 0x0109 }
            r6.<init>()     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r8 = java.lang.Long.valueOf(r22)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r5, r8)     // Catch:{ SQLiteException -> 0x0109 }
            long r11 = r9.f11066a     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r5 = java.lang.Long.valueOf(r11)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r3, r5)     // Catch:{ SQLiteException -> 0x0109 }
            long r11 = r9.f11067b     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r3 = java.lang.Long.valueOf(r11)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r4, r3)     // Catch:{ SQLiteException -> 0x0109 }
            long r3 = r9.f11068c     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r2, r3)     // Catch:{ SQLiteException -> 0x0109 }
            long r2 = r9.f11069d     // Catch:{ SQLiteException -> 0x0109 }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ SQLiteException -> 0x0109 }
            r6.put(r1, r2)     // Catch:{ SQLiteException -> 0x0109 }
            long r1 = r9.f11070e     // Catch:{ SQLiteException -> 0x0109 }
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
            c.e.a.b.h.b.t r1 = r21.e()     // Catch:{ all -> 0x0127 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x0127 }
            java.lang.String r2 = "Error updating daily counts. appId"
            java.lang.Object r3 = c.e.a.b.h.b.C0957t.a((java.lang.String) r24)     // Catch:{ all -> 0x0127 }
            r1.a(r2, r3, r0)     // Catch:{ all -> 0x0127 }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.a(long, java.lang.String, boolean, boolean, boolean, boolean, boolean):c.e.a.b.h.b.tc");
    }

    public final boolean a(C0811da daVar, boolean z) {
        l();
        s();
        r.a(daVar);
        r.b(daVar.r);
        r.a(daVar.f10374i);
        B();
        long c2 = c().c();
        if (daVar.f10374i.longValue() < c2 - pc.s() || daVar.f10374i.longValue() > pc.s() + c2) {
            e().w().a("Storing bundle outside of the max uploading time span. appId, now, timestamp", C0957t.a(daVar.r), Long.valueOf(c2), daVar.f10374i);
        }
        try {
            byte[] c3 = n().c(Wc.a((Wc) daVar));
            e().B().a("Saving bundle, size", Integer.valueOf(c3.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", daVar.r);
            contentValues.put("bundle_end_timestamp", daVar.f10374i);
            contentValues.put("data", c3);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            Integer num = daVar.N;
            if (num != null) {
                contentValues.put("retry_count", num);
            }
            try {
                if (x().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                e().t().a("Failed to insert bundle (got -1). appId", C0957t.a(daVar.r));
                return false;
            } catch (SQLiteException e2) {
                e().t().a("Error storing bundle. appId", C0957t.a(daVar.r), e2);
                return false;
            }
        } catch (IOException e3) {
            e().t().a("Data loss. Failed to serialize bundle. appId", C0957t.a(daVar.r), e3);
            return false;
        }
    }

    public final List<Pair<C0811da, Long>> a(String str, int i2, int i3) {
        int i4 = i3;
        l();
        s();
        r.a(i2 > 0);
        r.a(i4 > 0);
        r.b(str);
        Cursor cursor = null;
        try {
            cursor = x().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i2));
            if (!cursor.moveToFirst()) {
                List<Pair<C0811da, Long>> emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
            ArrayList arrayList = new ArrayList();
            int i5 = 0;
            do {
                long j2 = cursor.getLong(0);
                try {
                    byte[] b2 = n().b(cursor.getBlob(1));
                    if (!arrayList.isEmpty() && b2.length + i5 > i4) {
                        break;
                    }
                    try {
                        C0811da a2 = C0811da.a(b2);
                        if (!cursor.isNull(2)) {
                            a2.N = Integer.valueOf(cursor.getInt(2));
                        }
                        i5 += b2.length;
                        arrayList.add(Pair.create(a2, Long.valueOf(j2)));
                    } catch (IOException e2) {
                        e().t().a("Failed to merge queued bundle. appId", C0957t.a(str), e2);
                    }
                    if (!cursor.moveToNext()) {
                        break;
                    }
                } catch (IOException e3) {
                    e().t().a("Failed to unzip queued bundle. appId", C0957t.a(str), e3);
                }
            } while (i5 <= i4);
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        } catch (SQLiteException e4) {
            e().t().a("Error querying bundles. appId", C0957t.a(str), e4);
            List<Pair<C0811da, Long>> emptyList2 = Collections.emptyList();
            if (cursor != null) {
                cursor.close();
            }
            return emptyList2;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void a(List<Long> list) {
        l();
        s();
        r.a(list);
        r.a(list.size());
        if (H()) {
            String join = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 80);
            sb3.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb3.append(sb2);
            sb3.append(" AND retry_count =  2147483647 LIMIT 1");
            if (a(sb3.toString(), (String[]) null) > 0) {
                e().w().a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase x = x();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                x.execSQL(sb4.toString());
            } catch (SQLiteException e2) {
                e().t().a("Error incrementing retry count. error", e2);
            }
        }
    }

    public final void a(String str, S[] sArr) {
        boolean z;
        String str2 = str;
        S[] sArr2 = sArr;
        s();
        l();
        r.b(str);
        r.a(sArr);
        SQLiteDatabase x = x();
        x.beginTransaction();
        try {
            s();
            l();
            r.b(str);
            SQLiteDatabase x2 = x();
            x2.delete("property_filters", "app_id=?", new String[]{str2});
            x2.delete("event_filters", "app_id=?", new String[]{str2});
            for (S s : sArr2) {
                s();
                l();
                r.b(str);
                r.a(s);
                r.a(s.f10217f);
                r.a(s.f10216e);
                if (s.f10215d == null) {
                    e().w().a("Audience with no ID. appId", C0957t.a(str));
                } else {
                    int intValue = s.f10215d.intValue();
                    T[] tArr = s.f10217f;
                    int length = tArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            X[] xArr = s.f10216e;
                            int length2 = xArr.length;
                            int i3 = 0;
                            while (true) {
                                if (i3 >= length2) {
                                    T[] tArr2 = s.f10217f;
                                    int length3 = tArr2.length;
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 >= length3) {
                                            z = true;
                                            break;
                                        } else if (!a(str2, intValue, tArr2[i4])) {
                                            z = false;
                                            break;
                                        } else {
                                            i4++;
                                        }
                                    }
                                    if (z) {
                                        X[] xArr2 = s.f10216e;
                                        int length4 = xArr2.length;
                                        int i5 = 0;
                                        while (true) {
                                            if (i5 >= length4) {
                                                break;
                                            } else if (!a(str2, intValue, xArr2[i5])) {
                                                z = false;
                                                break;
                                            } else {
                                                i5++;
                                            }
                                        }
                                    }
                                    if (!z) {
                                        s();
                                        l();
                                        r.b(str);
                                        SQLiteDatabase x3 = x();
                                        x3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str2, String.valueOf(intValue)});
                                        x3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str2, String.valueOf(intValue)});
                                    }
                                } else if (xArr[i3].f10277d == null) {
                                    e().w().a("Property filter with no ID. Audience definition ignored. appId, audienceId", C0957t.a(str), s.f10215d);
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                        } else if (tArr[i2].f10222d == null) {
                            e().w().a("Event filter with no ID. Audience definition ignored. appId, audienceId", C0957t.a(str), s.f10215d);
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (S s2 : sArr2) {
                arrayList.add(s2.f10215d);
            }
            a(str2, (List<Integer>) arrayList);
            x.setTransactionSuccessful();
        } finally {
            x.endTransaction();
        }
    }

    public final boolean a(String str, int i2, T t) {
        s();
        l();
        r.b(str);
        r.a(t);
        if (TextUtils.isEmpty(t.f10223e)) {
            e().w().a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", C0957t.a(str), Integer.valueOf(i2), String.valueOf(t.f10222d));
            return false;
        }
        byte[] a2 = Wc.a((Wc) t);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", t.f10222d);
        contentValues.put("event_name", t.f10223e);
        contentValues.put("data", a2);
        try {
            if (x().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                e().t().a("Failed to insert event filter (got -1). appId", C0957t.a(str));
            }
            return true;
        } catch (SQLiteException e2) {
            e().t().a("Error storing event filter. appId", C0957t.a(str), e2);
            return false;
        }
    }

    public final boolean a(String str, int i2, X x) {
        s();
        l();
        r.b(str);
        r.a(x);
        if (TextUtils.isEmpty(x.f10278e)) {
            e().w().a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", C0957t.a(str), Integer.valueOf(i2), String.valueOf(x.f10277d));
            return false;
        }
        byte[] a2 = Wc.a((Wc) x);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", x.f10277d);
        contentValues.put("property_name", x.f10278e);
        contentValues.put("data", a2);
        try {
            if (x().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            e().t().a("Failed to insert property filter (got -1). appId", C0957t.a(str));
            return false;
        } catch (SQLiteException e2) {
            e().t().a("Error storing property filter. appId", C0957t.a(str), e2);
            return false;
        }
    }

    public final boolean a(String str, List<Integer> list) {
        r.b(str);
        s();
        l();
        SQLiteDatabase x = x();
        try {
            long a2 = a("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, i().b(str, C0931k.T)));
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
            return x.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e2) {
            e().t().a("Database error querying filters. appId", C0957t.a(str), e2);
            return false;
        }
    }

    public static void a(ContentValues contentValues, String str, Object obj) {
        r.b(str);
        r.a(obj);
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

    public final Object a(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            e().t().a("Loaded invalid null value from database");
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
                e().t().a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            e().t().a("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    public final long a(C0811da daVar) {
        l();
        s();
        r.a(daVar);
        r.b(daVar.r);
        byte[] a2 = Wc.a((Wc) daVar);
        long a3 = n().a(a2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", daVar.r);
        contentValues.put("metadata_fingerprint", Long.valueOf(a3));
        contentValues.put("metadata", a2);
        try {
            x().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return a3;
        } catch (SQLiteException e2) {
            e().t().a("Error storing raw event metadata. appId", C0957t.a(daVar.r), e2);
            throw e2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x005b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(long r5) {
        /*
            r4 = this;
            r4.l()
            r4.s()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.x()     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            r6 = 0
            r3[r6] = r5     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch:{ SQLiteException -> 0x0043, all -> 0x0040 }
            boolean r1 = r5.moveToFirst()     // Catch:{ SQLiteException -> 0x003e }
            if (r1 != 0) goto L_0x0034
            c.e.a.b.h.b.t r6 = r4.e()     // Catch:{ SQLiteException -> 0x003e }
            c.e.a.b.h.b.v r6 = r6.B()     // Catch:{ SQLiteException -> 0x003e }
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.a(r1)     // Catch:{ SQLiteException -> 0x003e }
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
            c.e.a.b.h.b.t r1 = r4.e()     // Catch:{ all -> 0x0058 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x0058 }
            java.lang.String r2 = "Error selecting expired configs"
            r1.a(r2, r6)     // Catch:{ all -> 0x0058 }
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.a(long):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x007f  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0086  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.util.Pair<c.e.a.b.g.f.C0803ba, java.lang.Long> a(java.lang.String r8, java.lang.Long r9) {
        /*
            r7 = this;
            r7.l()
            r7.s()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.x()     // Catch:{ SQLiteException -> 0x006e, all -> 0x006b }
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x006e, all -> 0x006b }
            r4 = 0
            r3[r4] = r8     // Catch:{ SQLiteException -> 0x006e, all -> 0x006b }
            java.lang.String r5 = java.lang.String.valueOf(r9)     // Catch:{ SQLiteException -> 0x006e, all -> 0x006b }
            r6 = 1
            r3[r6] = r5     // Catch:{ SQLiteException -> 0x006e, all -> 0x006b }
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch:{ SQLiteException -> 0x006e, all -> 0x006b }
            boolean r2 = r1.moveToFirst()     // Catch:{ SQLiteException -> 0x0069 }
            if (r2 != 0) goto L_0x0037
            c.e.a.b.h.b.t r8 = r7.e()     // Catch:{ SQLiteException -> 0x0069 }
            c.e.a.b.h.b.v r8 = r8.B()     // Catch:{ SQLiteException -> 0x0069 }
            java.lang.String r9 = "Main event not found"
            r8.a(r9)     // Catch:{ SQLiteException -> 0x0069 }
            if (r1 == 0) goto L_0x0036
            r1.close()
        L_0x0036:
            return r0
        L_0x0037:
            byte[] r2 = r1.getBlob(r4)     // Catch:{ SQLiteException -> 0x0069 }
            long r3 = r1.getLong(r6)     // Catch:{ SQLiteException -> 0x0069 }
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch:{ SQLiteException -> 0x0069 }
            c.e.a.b.g.f.ba r8 = c.e.a.b.g.f.C0803ba.a((byte[]) r2)     // Catch:{ IOException -> 0x0051 }
            android.util.Pair r8 = android.util.Pair.create(r8, r3)     // Catch:{ SQLiteException -> 0x0069 }
            if (r1 == 0) goto L_0x0050
            r1.close()
        L_0x0050:
            return r8
        L_0x0051:
            r2 = move-exception
            c.e.a.b.h.b.t r3 = r7.e()     // Catch:{ SQLiteException -> 0x0069 }
            c.e.a.b.h.b.v r3 = r3.t()     // Catch:{ SQLiteException -> 0x0069 }
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r8 = c.e.a.b.h.b.C0957t.a((java.lang.String) r8)     // Catch:{ SQLiteException -> 0x0069 }
            r3.a(r4, r8, r9, r2)     // Catch:{ SQLiteException -> 0x0069 }
            if (r1 == 0) goto L_0x0068
            r1.close()
        L_0x0068:
            return r0
        L_0x0069:
            r8 = move-exception
            goto L_0x0070
        L_0x006b:
            r8 = move-exception
            r1 = r0
            goto L_0x0084
        L_0x006e:
            r8 = move-exception
            r1 = r0
        L_0x0070:
            c.e.a.b.h.b.t r9 = r7.e()     // Catch:{ all -> 0x0083 }
            c.e.a.b.h.b.v r9 = r9.t()     // Catch:{ all -> 0x0083 }
            java.lang.String r2 = "Error selecting main event"
            r9.a(r2, r8)     // Catch:{ all -> 0x0083 }
            if (r1 == 0) goto L_0x0082
            r1.close()
        L_0x0082:
            return r0
        L_0x0083:
            r8 = move-exception
        L_0x0084:
            if (r1 == 0) goto L_0x0089
            r1.close()
        L_0x0089:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.sc.a(java.lang.String, java.lang.Long):android.util.Pair");
    }

    public final boolean a(String str, Long l2, long j2, C0803ba baVar) {
        l();
        s();
        r.a(baVar);
        r.b(str);
        r.a(l2);
        byte[] a2 = Wc.a((Wc) baVar);
        e().B().a("Saving complex main event, appId, data size", f().a(str), Integer.valueOf(a2.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l2);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", a2);
        try {
            if (x().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            e().t().a("Failed to insert complex main event (got -1). appId", C0957t.a(str));
            return false;
        } catch (SQLiteException e2) {
            e().t().a("Error storing complex main event. appId", C0957t.a(str), e2);
            return false;
        }
    }

    public final boolean a(C0916f fVar, long j2, boolean z) {
        l();
        s();
        r.a(fVar);
        r.b(fVar.f10876a);
        C0803ba baVar = new C0803ba();
        baVar.f10347g = Long.valueOf(fVar.f10880e);
        baVar.f10344d = new K[fVar.f10881f.size()];
        Iterator<String> it = fVar.f10881f.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String next = it.next();
            K.a B = K.B();
            B.a(next);
            n().a(B, fVar.f10881f.e(next));
            baVar.f10344d[i2] = (K) B.o();
            i2++;
        }
        byte[] a2 = Wc.a((Wc) baVar);
        e().B().a("Saving event, name, data size", f().a(fVar.f10877b), Integer.valueOf(a2.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", fVar.f10876a);
        contentValues.put(DefaultAppMeasurementEventListenerRegistrar.NAME, fVar.f10877b);
        contentValues.put("timestamp", Long.valueOf(fVar.f10879d));
        contentValues.put("metadata_fingerprint", Long.valueOf(j2));
        contentValues.put("data", a2);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (x().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            e().t().a("Failed to insert raw event (got -1). appId", C0957t.a(fVar.f10876a));
            return false;
        } catch (SQLiteException e2) {
            e().t().a("Error storing raw event. appId", C0957t.a(fVar.f10876a), e2);
            return false;
        }
    }
}
