package com.google.android.gms.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.util.d;

public final class iv extends kw {

    /* renamed from: a  reason: collision with root package name */
    private final iw f3223a = new iw(this, getContext(), "google_app_measurement_local.db");

    /* renamed from: b  reason: collision with root package name */
    private boolean f3224b;

    iv(jx jxVar) {
        super(jxVar);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v2, resolved type: android.database.sqlite.SQLiteDatabase} */
    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARNING: type inference failed for: r8v0 */
    /* JADX WARNING: type inference failed for: r3v2 */
    /* JADX WARNING: type inference failed for: r8v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r8v3 */
    /* JADX WARNING: type inference failed for: r8v7 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00d7 A[Catch:{ all -> 0x0106 }] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00fd  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0102  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x011c  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x012e  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x0124 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0124 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean a(int r18, byte[] r19) {
        /*
            r17 = this;
            r1 = r17
            java.lang.String r2 = "Error writing entry to local database"
            r17.zzve()
            boolean r0 = r1.f3224b
            r3 = 0
            if (r0 == 0) goto L_0x000d
            return r3
        L_0x000d:
            android.content.ContentValues r4 = new android.content.ContentValues
            r4.<init>()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r18)
            java.lang.String r5 = "type"
            r4.put(r5, r0)
            java.lang.String r0 = "entry"
            r5 = r19
            r4.put(r0, r5)
            r5 = 5
            r6 = 0
            r7 = 5
        L_0x0025:
            if (r6 >= r5) goto L_0x0137
            r8 = 0
            r9 = 1
            android.database.sqlite.SQLiteDatabase r10 = r17.c()     // Catch:{ SQLiteFullException -> 0x0109, SQLiteException -> 0x00ce, all -> 0x00c9 }
            if (r10 != 0) goto L_0x003e
            r1.f3224b = r9     // Catch:{ SQLiteFullException -> 0x003b, SQLiteException -> 0x0037 }
            if (r10 == 0) goto L_0x0036
            r10.close()
        L_0x0036:
            return r3
        L_0x0037:
            r0 = move-exception
            r13 = r8
            goto L_0x00c4
        L_0x003b:
            r0 = move-exception
            goto L_0x010c
        L_0x003e:
            r10.beginTransaction()     // Catch:{ SQLiteFullException -> 0x00c6, SQLiteException -> 0x00c1, all -> 0x00bc }
            r11 = 0
            java.lang.String r0 = "select count(1) from messages"
            android.database.Cursor r13 = r10.rawQuery(r0, r8)     // Catch:{ SQLiteFullException -> 0x00c6, SQLiteException -> 0x00c1, all -> 0x00bc }
            if (r13 == 0) goto L_0x005f
            boolean r0 = r13.moveToFirst()     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            if (r0 == 0) goto L_0x005f
            long r11 = r13.getLong(r3)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            goto L_0x005f
        L_0x0056:
            r0 = move-exception
            goto L_0x012c
        L_0x0059:
            r0 = move-exception
            goto L_0x00c4
        L_0x005b:
            r0 = move-exception
            r8 = r13
            goto L_0x010c
        L_0x005f:
            java.lang.String r0 = "messages"
            r14 = 100000(0x186a0, double:4.94066E-319)
            int r16 = (r11 > r14 ? 1 : (r11 == r14 ? 0 : -1))
            if (r16 < 0) goto L_0x00a6
            com.google.android.gms.internal.iz r16 = r17.zzawy()     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            com.google.android.gms.internal.jb r5 = r16.zzazd()     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            java.lang.String r8 = "Data loss, local db full"
            r5.log(r8)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            long r14 = r14 - r11
            r11 = 1
            long r14 = r14 + r11
            java.lang.String r5 = "rowid in (select rowid from messages order by rowid asc limit ?)"
            java.lang.String[] r8 = new java.lang.String[r9]     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            java.lang.String r11 = java.lang.Long.toString(r14)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            r8[r3] = r11     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            int r5 = r10.delete(r0, r5, r8)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            long r11 = (long) r5     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            int r5 = (r11 > r14 ? 1 : (r11 == r14 ? 0 : -1))
            if (r5 == 0) goto L_0x00a6
            com.google.android.gms.internal.iz r5 = r17.zzawy()     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            java.lang.String r8 = "Different delete count than expected in local db. expected, received, difference"
            java.lang.Long r3 = java.lang.Long.valueOf(r14)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            java.lang.Long r9 = java.lang.Long.valueOf(r11)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            long r14 = r14 - r11
            java.lang.Long r11 = java.lang.Long.valueOf(r14)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            r5.zzd(r8, r3, r9, r11)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
        L_0x00a6:
            r3 = 0
            r10.insertOrThrow(r0, r3, r4)     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            r10.setTransactionSuccessful()     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            r10.endTransaction()     // Catch:{ SQLiteFullException -> 0x005b, SQLiteException -> 0x0059, all -> 0x0056 }
            if (r13 == 0) goto L_0x00b5
            r13.close()
        L_0x00b5:
            if (r10 == 0) goto L_0x00ba
            r10.close()
        L_0x00ba:
            r2 = 1
            return r2
        L_0x00bc:
            r0 = move-exception
            r3 = r8
            r13 = r3
            goto L_0x012c
        L_0x00c1:
            r0 = move-exception
            r3 = r8
            r13 = r3
        L_0x00c4:
            r8 = r10
            goto L_0x00d1
        L_0x00c6:
            r0 = move-exception
            r3 = r8
            goto L_0x010c
        L_0x00c9:
            r0 = move-exception
            r3 = r8
            r10 = r3
            r13 = r10
            goto L_0x012c
        L_0x00ce:
            r0 = move-exception
            r3 = r8
            r13 = r8
        L_0x00d1:
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x0106 }
            r5 = 11
            if (r3 < r5) goto L_0x00e2
            boolean r3 = r0 instanceof android.database.sqlite.SQLiteDatabaseLockedException     // Catch:{ all -> 0x0106 }
            if (r3 == 0) goto L_0x00e2
            long r9 = (long) r7     // Catch:{ all -> 0x0106 }
            android.os.SystemClock.sleep(r9)     // Catch:{ all -> 0x0106 }
            int r7 = r7 + 20
            goto L_0x00fb
        L_0x00e2:
            if (r8 == 0) goto L_0x00ed
            boolean r3 = r8.inTransaction()     // Catch:{ all -> 0x0106 }
            if (r3 == 0) goto L_0x00ed
            r8.endTransaction()     // Catch:{ all -> 0x0106 }
        L_0x00ed:
            com.google.android.gms.internal.iz r3 = r17.zzawy()     // Catch:{ all -> 0x0106 }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ all -> 0x0106 }
            r3.zzj(r2, r0)     // Catch:{ all -> 0x0106 }
            r3 = 1
            r1.f3224b = r3     // Catch:{ all -> 0x0106 }
        L_0x00fb:
            if (r13 == 0) goto L_0x0100
            r13.close()
        L_0x0100:
            if (r8 == 0) goto L_0x0124
            r8.close()
            goto L_0x0124
        L_0x0106:
            r0 = move-exception
            r10 = r8
            goto L_0x012c
        L_0x0109:
            r0 = move-exception
            r3 = r8
            r10 = r8
        L_0x010c:
            com.google.android.gms.internal.iz r3 = r17.zzawy()     // Catch:{ all -> 0x012a }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ all -> 0x012a }
            r3.zzj(r2, r0)     // Catch:{ all -> 0x012a }
            r3 = 1
            r1.f3224b = r3     // Catch:{ all -> 0x012a }
            if (r8 == 0) goto L_0x011f
            r8.close()
        L_0x011f:
            if (r10 == 0) goto L_0x0124
            r10.close()
        L_0x0124:
            int r6 = r6 + 1
            r3 = 0
            r5 = 5
            goto L_0x0025
        L_0x012a:
            r0 = move-exception
            r13 = r8
        L_0x012c:
            if (r13 == 0) goto L_0x0131
            r13.close()
        L_0x0131:
            if (r10 == 0) goto L_0x0136
            r10.close()
        L_0x0136:
            throw r0
        L_0x0137:
            com.google.android.gms.internal.iz r0 = r17.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazf()
            java.lang.String r2 = "Failed to write entry to local database"
            r0.log(r2)
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.iv.a(int, byte[]):boolean");
    }

    private final SQLiteDatabase c() {
        if (this.f3224b) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f3223a.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f3224b = true;
        return null;
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final void resetAnalyticsData() {
        zzve();
        try {
            int delete = c().delete("messages", null, null) + 0;
            if (delete > 0) {
                zzawy().zzazj().zzj("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zzawy().zzazd().zzj("Error resetting local analytics data. error", e);
        }
    }

    public final boolean zza(zzcha zzcha) {
        Parcel obtain = Parcel.obtain();
        zzcha.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return a(0, marshall);
        }
        zzawy().zzazf().log("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean zza(zzcln zzcln) {
        Parcel obtain = Parcel.obtain();
        zzcln.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return a(1, marshall);
        }
        zzawy().zzazf().log("User property too long for local database. Sending directly to service");
        return false;
    }

    public final /* bridge */ /* synthetic */ void zzawi() {
        super.zzawi();
    }

    public final /* bridge */ /* synthetic */ void zzawj() {
        super.zzawj();
    }

    public final /* bridge */ /* synthetic */ hu zzawk() {
        return super.zzawk();
    }

    public final /* bridge */ /* synthetic */ ia zzawl() {
        return super.zzawl();
    }

    public final /* bridge */ /* synthetic */ ky zzawm() {
        return super.zzawm();
    }

    public final /* bridge */ /* synthetic */ iu zzawn() {
        return super.zzawn();
    }

    public final /* bridge */ /* synthetic */ ij zzawo() {
        return super.zzawo();
    }

    public final /* bridge */ /* synthetic */ lr zzawp() {
        return super.zzawp();
    }

    public final /* bridge */ /* synthetic */ ln zzawq() {
        return super.zzawq();
    }

    public final /* bridge */ /* synthetic */ iv zzawr() {
        return super.zzawr();
    }

    public final /* bridge */ /* synthetic */ id zzaws() {
        return super.zzaws();
    }

    public final /* bridge */ /* synthetic */ ix zzawt() {
        return super.zzawt();
    }

    public final /* bridge */ /* synthetic */ na zzawu() {
        return super.zzawu();
    }

    public final /* bridge */ /* synthetic */ jr zzawv() {
        return super.zzawv();
    }

    public final /* bridge */ /* synthetic */ mq zzaww() {
        return super.zzaww();
    }

    public final /* bridge */ /* synthetic */ js zzawx() {
        return super.zzawx();
    }

    public final /* bridge */ /* synthetic */ iz zzawy() {
        return super.zzawy();
    }

    public final /* bridge */ /* synthetic */ jj zzawz() {
        return super.zzawz();
    }

    public final /* bridge */ /* synthetic */ ic zzaxa() {
        return super.zzaxa();
    }

    public final boolean zzc(zzcgl zzcgl) {
        zzawu();
        byte[] a2 = na.a((Parcelable) zzcgl);
        if (a2.length <= 131072) {
            return a(2, a2);
        }
        zzawy().zzazf().log("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v0, resolved type: java.util.List<com.google.android.gms.internal.zzbfm>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v1, resolved type: java.util.List<com.google.android.gms.internal.zzbfm>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v0, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v3, resolved type: java.util.List<com.google.android.gms.internal.zzbfm>} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v1, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v2, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v3, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v4, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v7, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v8, resolved type: android.database.Cursor} */
    /* JADX WARNING: type inference failed for: r3v4, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r3v6 */
    /* JADX WARNING: type inference failed for: r3v12 */
    /* JADX WARNING: type inference failed for: r3v17 */
    /* JADX WARNING: type inference failed for: r3v19 */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:54|55|56|57) */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:69|70|71|72) */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:39|40|41|42|151) */
    /* JADX WARNING: Code restructure failed: missing block: B:40:?, code lost:
        zzawy().zzazd().log("Failed to load event from local database");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:?, code lost:
        r14.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:?, code lost:
        zzawy().zzazd().log("Failed to load user property from local database");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:?, code lost:
        r15.recycle();
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:?, code lost:
        zzawy().zzazd().log("Failed to load user property from local database");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:?, code lost:
        r15.recycle();
        r0 = null;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x00a7 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:54:0x00d9 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:69:0x010a */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x0187 A[Catch:{ all -> 0x01b5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x01ac  */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x01b1  */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x01c9  */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x01ce  */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x01dc  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x01e1  */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x01d1 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x01d1 A[SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.zzbfm> zzeb(int r21) {
        /*
            r20 = this;
            r1 = r20
            java.lang.String r2 = "Error reading entries from local database"
            r20.zzve()
            boolean r0 = r1.f3224b
            r3 = 0
            if (r0 == 0) goto L_0x000d
            return r3
        L_0x000d:
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            android.content.Context r0 = r20.getContext()
            java.lang.String r5 = "google_app_measurement_local.db"
            java.io.File r0 = r0.getDatabasePath(r5)
            boolean r0 = r0.exists()
            if (r0 != 0) goto L_0x0023
            return r4
        L_0x0023:
            r5 = 5
            r6 = 0
            r7 = 0
            r8 = 5
        L_0x0027:
            if (r7 >= r5) goto L_0x01e5
            r9 = 1
            android.database.sqlite.SQLiteDatabase r15 = r20.c()     // Catch:{ SQLiteFullException -> 0x01b7, SQLiteException -> 0x017e, all -> 0x017a }
            if (r15 != 0) goto L_0x0040
            r1.f3224b = r9     // Catch:{ SQLiteFullException -> 0x003d, SQLiteException -> 0x0038 }
            if (r15 == 0) goto L_0x0037
            r15.close()
        L_0x0037:
            return r3
        L_0x0038:
            r0 = move-exception
            r10 = r3
            r3 = r15
            goto L_0x0181
        L_0x003d:
            r0 = move-exception
            goto L_0x01ba
        L_0x0040:
            r15.beginTransaction()     // Catch:{ SQLiteFullException -> 0x0176, SQLiteException -> 0x0173, all -> 0x0170 }
            java.lang.String r11 = "messages"
            r0 = 3
            java.lang.String[] r12 = new java.lang.String[r0]     // Catch:{ SQLiteFullException -> 0x0176, SQLiteException -> 0x0173, all -> 0x0170 }
            java.lang.String r0 = "rowid"
            r12[r6] = r0     // Catch:{ SQLiteFullException -> 0x0176, SQLiteException -> 0x0173, all -> 0x0170 }
            java.lang.String r0 = "type"
            r12[r9] = r0     // Catch:{ SQLiteFullException -> 0x0176, SQLiteException -> 0x0173, all -> 0x0170 }
            java.lang.String r0 = "entry"
            r14 = 2
            r12[r14] = r0     // Catch:{ SQLiteFullException -> 0x0176, SQLiteException -> 0x0173, all -> 0x0170 }
            r13 = 0
            r0 = 0
            r16 = 0
            r17 = 0
            java.lang.String r18 = "rowid asc"
            r10 = 100
            java.lang.String r19 = java.lang.Integer.toString(r10)     // Catch:{ SQLiteFullException -> 0x0176, SQLiteException -> 0x0173, all -> 0x0170 }
            r10 = r15
            r5 = 2
            r14 = r0
            r3 = r15
            r15 = r16
            r16 = r17
            r17 = r18
            r18 = r19
            android.database.Cursor r10 = r10.query(r11, r12, r13, r14, r15, r16, r17, r18)     // Catch:{ SQLiteFullException -> 0x016d, SQLiteException -> 0x016b, all -> 0x0169 }
            r11 = -1
        L_0x0075:
            boolean r0 = r10.moveToNext()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            if (r0 == 0) goto L_0x012f
            long r11 = r10.getLong(r6)     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            int r0 = r10.getInt(r9)     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            byte[] r13 = r10.getBlob(r5)     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            if (r0 != 0) goto L_0x00bc
            android.os.Parcel r14 = android.os.Parcel.obtain()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            int r0 = r13.length     // Catch:{ ek -> 0x00a7 }
            r14.unmarshall(r13, r6, r0)     // Catch:{ ek -> 0x00a7 }
            r14.setDataPosition(r6)     // Catch:{ ek -> 0x00a7 }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcha> r0 = com.google.android.gms.internal.zzcha.CREATOR     // Catch:{ ek -> 0x00a7 }
            java.lang.Object r0 = r0.createFromParcel(r14)     // Catch:{ ek -> 0x00a7 }
            com.google.android.gms.internal.zzcha r0 = (com.google.android.gms.internal.zzcha) r0     // Catch:{ ek -> 0x00a7 }
            r14.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            if (r0 == 0) goto L_0x0075
        L_0x00a1:
            r4.add(r0)     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            goto L_0x0075
        L_0x00a5:
            r0 = move-exception
            goto L_0x00b8
        L_0x00a7:
            com.google.android.gms.internal.iz r0 = r20.zzawy()     // Catch:{ all -> 0x00a5 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x00a5 }
            java.lang.String r13 = "Failed to load event from local database"
            r0.log(r13)     // Catch:{ all -> 0x00a5 }
            r14.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            goto L_0x0075
        L_0x00b8:
            r14.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            throw r0     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
        L_0x00bc:
            java.lang.String r14 = "Failed to load user property from local database"
            if (r0 != r9) goto L_0x00ef
            android.os.Parcel r15 = android.os.Parcel.obtain()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            int r0 = r13.length     // Catch:{ ek -> 0x00d9 }
            r15.unmarshall(r13, r6, r0)     // Catch:{ ek -> 0x00d9 }
            r15.setDataPosition(r6)     // Catch:{ ek -> 0x00d9 }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcln> r0 = com.google.android.gms.internal.zzcln.CREATOR     // Catch:{ ek -> 0x00d9 }
            java.lang.Object r0 = r0.createFromParcel(r15)     // Catch:{ ek -> 0x00d9 }
            com.google.android.gms.internal.zzcln r0 = (com.google.android.gms.internal.zzcln) r0     // Catch:{ ek -> 0x00d9 }
            r15.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            goto L_0x00e8
        L_0x00d7:
            r0 = move-exception
            goto L_0x00eb
        L_0x00d9:
            com.google.android.gms.internal.iz r0 = r20.zzawy()     // Catch:{ all -> 0x00d7 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x00d7 }
            r0.log(r14)     // Catch:{ all -> 0x00d7 }
            r15.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            r0 = 0
        L_0x00e8:
            if (r0 == 0) goto L_0x0075
            goto L_0x00a1
        L_0x00eb:
            r15.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            throw r0     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
        L_0x00ef:
            if (r0 != r5) goto L_0x0120
            android.os.Parcel r15 = android.os.Parcel.obtain()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            int r0 = r13.length     // Catch:{ ek -> 0x010a }
            r15.unmarshall(r13, r6, r0)     // Catch:{ ek -> 0x010a }
            r15.setDataPosition(r6)     // Catch:{ ek -> 0x010a }
            android.os.Parcelable$Creator<com.google.android.gms.internal.zzcgl> r0 = com.google.android.gms.internal.zzcgl.CREATOR     // Catch:{ ek -> 0x010a }
            java.lang.Object r0 = r0.createFromParcel(r15)     // Catch:{ ek -> 0x010a }
            com.google.android.gms.internal.zzcgl r0 = (com.google.android.gms.internal.zzcgl) r0     // Catch:{ ek -> 0x010a }
            r15.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            goto L_0x0119
        L_0x0108:
            r0 = move-exception
            goto L_0x011c
        L_0x010a:
            com.google.android.gms.internal.iz r0 = r20.zzawy()     // Catch:{ all -> 0x0108 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x0108 }
            r0.log(r14)     // Catch:{ all -> 0x0108 }
            r15.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            r0 = 0
        L_0x0119:
            if (r0 == 0) goto L_0x0075
            goto L_0x00a1
        L_0x011c:
            r15.recycle()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            throw r0     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
        L_0x0120:
            com.google.android.gms.internal.iz r0 = r20.zzawy()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            java.lang.String r13 = "Unknown record type in local database"
            r0.log(r13)     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            goto L_0x0075
        L_0x012f:
            java.lang.String r0 = "messages"
            java.lang.String r5 = "rowid <= ?"
            java.lang.String[] r13 = new java.lang.String[r9]     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            java.lang.String r11 = java.lang.Long.toString(r11)     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            r13[r6] = r11     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            int r0 = r3.delete(r0, r5, r13)     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            int r5 = r4.size()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            if (r0 >= r5) goto L_0x0152
            com.google.android.gms.internal.iz r0 = r20.zzawy()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            java.lang.String r5 = "Fewer entries removed from local database than expected"
            r0.log(r5)     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
        L_0x0152:
            r3.setTransactionSuccessful()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            r3.endTransaction()     // Catch:{ SQLiteFullException -> 0x0165, SQLiteException -> 0x0163 }
            if (r10 == 0) goto L_0x015d
            r10.close()
        L_0x015d:
            if (r3 == 0) goto L_0x0162
            r3.close()
        L_0x0162:
            return r4
        L_0x0163:
            r0 = move-exception
            goto L_0x0181
        L_0x0165:
            r0 = move-exception
            r15 = r3
            r3 = r10
            goto L_0x01ba
        L_0x0169:
            r0 = move-exception
            goto L_0x017c
        L_0x016b:
            r0 = move-exception
            goto L_0x0180
        L_0x016d:
            r0 = move-exception
            r15 = r3
            goto L_0x0178
        L_0x0170:
            r0 = move-exception
            r3 = r15
            goto L_0x017c
        L_0x0173:
            r0 = move-exception
            r3 = r15
            goto L_0x0180
        L_0x0176:
            r0 = move-exception
            r3 = r15
        L_0x0178:
            r3 = 0
            goto L_0x01ba
        L_0x017a:
            r0 = move-exception
            r3 = 0
        L_0x017c:
            r10 = 0
            goto L_0x01da
        L_0x017e:
            r0 = move-exception
            r3 = 0
        L_0x0180:
            r10 = 0
        L_0x0181:
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x01b5 }
            r11 = 11
            if (r5 < r11) goto L_0x0192
            boolean r5 = r0 instanceof android.database.sqlite.SQLiteDatabaseLockedException     // Catch:{ all -> 0x01b5 }
            if (r5 == 0) goto L_0x0192
            long r11 = (long) r8     // Catch:{ all -> 0x01b5 }
            android.os.SystemClock.sleep(r11)     // Catch:{ all -> 0x01b5 }
            int r8 = r8 + 20
            goto L_0x01aa
        L_0x0192:
            if (r3 == 0) goto L_0x019d
            boolean r5 = r3.inTransaction()     // Catch:{ all -> 0x01b5 }
            if (r5 == 0) goto L_0x019d
            r3.endTransaction()     // Catch:{ all -> 0x01b5 }
        L_0x019d:
            com.google.android.gms.internal.iz r5 = r20.zzawy()     // Catch:{ all -> 0x01b5 }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ all -> 0x01b5 }
            r5.zzj(r2, r0)     // Catch:{ all -> 0x01b5 }
            r1.f3224b = r9     // Catch:{ all -> 0x01b5 }
        L_0x01aa:
            if (r10 == 0) goto L_0x01af
            r10.close()
        L_0x01af:
            if (r3 == 0) goto L_0x01d1
            r3.close()
            goto L_0x01d1
        L_0x01b5:
            r0 = move-exception
            goto L_0x01da
        L_0x01b7:
            r0 = move-exception
            r3 = 0
            r15 = 0
        L_0x01ba:
            com.google.android.gms.internal.iz r5 = r20.zzawy()     // Catch:{ all -> 0x01d7 }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ all -> 0x01d7 }
            r5.zzj(r2, r0)     // Catch:{ all -> 0x01d7 }
            r1.f3224b = r9     // Catch:{ all -> 0x01d7 }
            if (r3 == 0) goto L_0x01cc
            r3.close()
        L_0x01cc:
            if (r15 == 0) goto L_0x01d1
            r15.close()
        L_0x01d1:
            int r7 = r7 + 1
            r3 = 0
            r5 = 5
            goto L_0x0027
        L_0x01d7:
            r0 = move-exception
            r10 = r3
            r3 = r15
        L_0x01da:
            if (r10 == 0) goto L_0x01df
            r10.close()
        L_0x01df:
            if (r3 == 0) goto L_0x01e4
            r3.close()
        L_0x01e4:
            throw r0
        L_0x01e5:
            com.google.android.gms.internal.iz r0 = r20.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazf()
            java.lang.String r2 = "Failed to read events from database in reasonable time"
            r0.log(r2)
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.iv.zzeb(int):java.util.List");
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }
}
