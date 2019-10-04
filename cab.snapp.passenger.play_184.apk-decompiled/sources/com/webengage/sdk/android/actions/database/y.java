package com.webengage.sdk.android.actions.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.b;
import com.webengage.sdk.android.utils.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class y extends b implements n {

    /* renamed from: a  reason: collision with root package name */
    private static y f5382a;

    /* renamed from: com.webengage.sdk.android.actions.database.y$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5383a = new int[o.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                com.webengage.sdk.android.actions.database.o[] r0 = com.webengage.sdk.android.actions.database.o.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5383a = r0
                int[] r0 = f5383a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.actions.database.o r1 = com.webengage.sdk.android.actions.database.o.FORCE_UPDATE     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5383a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.actions.database.o r1 = com.webengage.sdk.android.actions.database.o.INCREMENT     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.y.AnonymousClass1.<clinit>():void");
        }
    }

    private y(Context context) {
        super(context, "user_data.db", 3);
    }

    public static y a(Context context) {
        if (f5382a == null) {
            synchronized (y.class) {
                if (f5382a == null) {
                    f5382a = new y(context);
                }
            }
        }
        return f5382a;
    }

    private void a(String str, String str2, f fVar) {
        a("user", "user_attribute_name = ? AND cuid = ? AND user_attribute_container = ?", new String[]{str2, str, fVar.toString()});
    }

    private void a(String str, String str2, Object obj, f fVar, o oVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("cuid", str);
        contentValues.put("user_attribute_name", str2);
        contentValues.put("user_attribute_value", k.a(obj));
        contentValues.put("operation", oVar.toString());
        DataType detect = DataType.detect(obj);
        if (detect != null) {
            contentValues.put("use_attribute_data_type", detect.toString());
            contentValues.put("user_attribute_container", fVar.toString());
            if (((long) a("user", contentValues, "user_attribute_name = ? AND cuid = ? AND user_attribute_container = ?", new String[]{str2, str, fVar.toString()})) <= 0) {
                a("user", contentValues);
            }
        }
    }

    public Map<String, Set<String>> a() {
        HashMap hashMap = new HashMap();
        Cursor a2 = a("SELECT  * FROM user WHERE user_attribute_container = \"" + f.EVENT_CRITERIA.toString() + "\"", (String[]) null);
        if (a2 != null) {
            if (a2.moveToFirst()) {
                do {
                    String string = a2.getString(a2.getColumnIndex("user_attribute_name"));
                    String string2 = a2.getString(a2.getColumnIndex("cuid"));
                    if (hashMap.get(string2) == null) {
                        hashMap.put(string2, new HashSet());
                    }
                    ((Set) hashMap.get(string2)).add(string);
                } while (a2.moveToNext());
            }
            if (!a2.isClosed()) {
                a2.close();
            }
        }
        return hashMap;
    }

    public Map<String, Object> a(String str) {
        HashMap hashMap = new HashMap();
        for (f fVar : f.values()) {
            if (fVar.b()) {
                hashMap.put(fVar.toString(), new HashMap());
            }
        }
        Cursor a2 = a("SELECT  * FROM user WHERE cuid = \"" + str + "\"", (String[]) null);
        if (a2 != null) {
            if (a2.moveToFirst()) {
                do {
                    String string = a2.getString(a2.getColumnIndex("user_attribute_name"));
                    String string2 = a2.getString(a2.getColumnIndex("user_attribute_container"));
                    Object a3 = k.a(a2.getBlob(a2.getColumnIndex("user_attribute_value")));
                    if (a3 != null) {
                        f a4 = f.a(string2);
                        if (!(a4 == null || hashMap.get(a4.toString()) == null)) {
                            ((Map) hashMap.get(a4.toString())).put(string, a3);
                        }
                    }
                } while (a2.moveToNext());
            }
            if (!a2.isClosed()) {
                a2.close();
            }
        }
        return hashMap;
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(String.format("CREATE TABLE %S (%s INTEGER PRIMARY KEY AUTOINCREMENT,%s TEXT, %s TEXT, %s BLOB,%s TEXT,%s TEXT,%s TEXT)", new Object[]{"user", "id", "cuid", "user_attribute_name", "user_attribute_value", "operation", "use_attribute_data_type", "user_attribute_container"}));
    }

    /* JADX WARNING: type inference failed for: r3v0, types: [java.lang.String[], android.database.Cursor] */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:13|14) */
    /* JADX WARNING: Code restructure failed: missing block: B:14:?, code lost:
        r8.execSQL(java.lang.String.format("DROP TABLE IF EXISTS %s", new java.lang.Object[]{"user"}));
        a(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003d, code lost:
        if (r4 == null) goto L_0x0040;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        r3 = r8.rawQuery("SELECT * FROM user WHERE user_attribute_container =\"" + com.webengage.sdk.android.actions.database.f.e.toString() + "\"", r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005d, code lost:
        if (r3 == null) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0063, code lost:
        if (r3.moveToFirst() == false) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0065, code lost:
        r10 = r3.getString(r3.getColumnIndex("user_attribute_name"));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006f, code lost:
        if (r10 == null) goto L_0x00b6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0077, code lost:
        if (r10.endsWith("_view") != false) goto L_0x0091;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x007f, code lost:
        if (r10.endsWith("_click") != false) goto L_0x0091;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0087, code lost:
        if (r10.endsWith("_view_session") != false) goto L_0x0091;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x008f, code lost:
        if (r10.endsWith("_close_session") == false) goto L_0x00b6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0091, code lost:
        r10 = new android.content.ContentValues();
        r10.put("user_attribute_container", com.webengage.sdk.android.actions.database.f.k.toString());
        r8.update("user", r10, "id = ?", new java.lang.String[]{java.lang.Integer.toString(r3.getInt(r3.getColumnIndex("id")))});
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00ba, code lost:
        if (r3.moveToNext() != false) goto L_0x0065;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00bf, code lost:
        if (r3 == null) goto L_0x00d1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00c1, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00c4, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00c5, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00c6, code lost:
        if (r3 != 0) goto L_0x00c8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00c8, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00cb, code lost:
        throw r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00cc, code lost:
        if (r3 != 0) goto L_0x00ce;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00ce, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00d1, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00d2, code lost:
        r8 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00d5, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0024, code lost:
        if (r4 != null) goto L_0x0026;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0026, code lost:
        r4.close();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x002f */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00d5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.database.sqlite.SQLiteDatabase r8, int r9, int r10) {
        /*
            r7 = this;
            java.lang.String r9 = "user_attribute_container"
            java.lang.String r10 = "DROP TABLE IF EXISTS %s"
            java.lang.String r0 = "user"
            r1 = 0
            r2 = 1
            r3 = 0
            java.lang.String r4 = "SELECT * FROM user LIMIT 0"
            android.database.Cursor r4 = r8.rawQuery(r4, r3)     // Catch:{ SQLException -> 0x002e, all -> 0x002a }
            int r5 = r4.getColumnIndex(r9)     // Catch:{ SQLException -> 0x002f }
            r6 = -1
            if (r5 != r6) goto L_0x0024
            java.lang.Object[] r5 = new java.lang.Object[r2]     // Catch:{ SQLException -> 0x002f }
            r5[r1] = r0     // Catch:{ SQLException -> 0x002f }
            java.lang.String r5 = java.lang.String.format(r10, r5)     // Catch:{ SQLException -> 0x002f }
            r8.execSQL(r5)     // Catch:{ SQLException -> 0x002f }
            r7.a((android.database.sqlite.SQLiteDatabase) r8)     // Catch:{ SQLException -> 0x002f }
        L_0x0024:
            if (r4 == 0) goto L_0x0040
        L_0x0026:
            r4.close()
            goto L_0x0040
        L_0x002a:
            r8 = move-exception
            r4 = r3
            goto L_0x00d3
        L_0x002e:
            r4 = r3
        L_0x002f:
            java.lang.Object[] r5 = new java.lang.Object[r2]     // Catch:{ all -> 0x00d2 }
            r5[r1] = r0     // Catch:{ all -> 0x00d2 }
            java.lang.String r10 = java.lang.String.format(r10, r5)     // Catch:{ all -> 0x00d2 }
            r8.execSQL(r10)     // Catch:{ all -> 0x00d2 }
            r7.a((android.database.sqlite.SQLiteDatabase) r8)     // Catch:{ all -> 0x00d2 }
            if (r4 == 0) goto L_0x0040
            goto L_0x0026
        L_0x0040:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r4 = "SELECT * FROM user WHERE user_attribute_container =\""
            r10.<init>(r4)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            com.webengage.sdk.android.actions.database.f r4 = com.webengage.sdk.android.actions.database.f.ANDROID     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            r10.append(r4)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r4 = "\""
            r10.append(r4)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r10 = r10.toString()     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            android.database.Cursor r3 = r8.rawQuery(r10, r3)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            if (r3 == 0) goto L_0x00bf
            boolean r10 = r3.moveToFirst()     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            if (r10 == 0) goto L_0x00bf
        L_0x0065:
            java.lang.String r10 = "user_attribute_name"
            int r10 = r3.getColumnIndex(r10)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r10 = r3.getString(r10)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            if (r10 == 0) goto L_0x00b6
            java.lang.String r4 = "_view"
            boolean r4 = r10.endsWith(r4)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            if (r4 != 0) goto L_0x0091
            java.lang.String r4 = "_click"
            boolean r4 = r10.endsWith(r4)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            if (r4 != 0) goto L_0x0091
            java.lang.String r4 = "_view_session"
            boolean r4 = r10.endsWith(r4)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            if (r4 != 0) goto L_0x0091
            java.lang.String r4 = "_close_session"
            boolean r10 = r10.endsWith(r4)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            if (r10 == 0) goto L_0x00b6
        L_0x0091:
            android.content.ContentValues r10 = new android.content.ContentValues     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            r10.<init>()     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            com.webengage.sdk.android.actions.database.f r4 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            r10.put(r9, r4)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r4 = "id = ?"
            java.lang.String[] r5 = new java.lang.String[r2]     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r6 = "id"
            int r6 = r3.getColumnIndex(r6)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            int r6 = r3.getInt(r6)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            java.lang.String r6 = java.lang.Integer.toString(r6)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            r5[r1] = r6     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            r8.update(r0, r10, r4, r5)     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
        L_0x00b6:
            boolean r10 = r3.moveToNext()     // Catch:{ Exception -> 0x00bd, all -> 0x00c5 }
            if (r10 != 0) goto L_0x0065
            goto L_0x00bf
        L_0x00bd:
            goto L_0x00cc
        L_0x00bf:
            if (r3 == 0) goto L_0x00d1
            r3.close()
            return
        L_0x00c5:
            r8 = move-exception
            if (r3 == 0) goto L_0x00cb
            r3.close()
        L_0x00cb:
            throw r8
        L_0x00cc:
            if (r3 == 0) goto L_0x00d1
            r3.close()
        L_0x00d1:
            return
        L_0x00d2:
            r8 = move-exception
        L_0x00d3:
            if (r4 == 0) goto L_0x00d8
            r4.close()
        L_0x00d8:
            goto L_0x00da
        L_0x00d9:
            throw r8
        L_0x00da:
            goto L_0x00d9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.y.a(android.database.sqlite.SQLiteDatabase, int, int):void");
    }

    /* access modifiers changed from: package-private */
    public void a(String str, String str2) {
        String str3 = str;
        String str4 = str2;
        ArrayList arrayList = new ArrayList();
        Cursor a2 = a("select * from user where cuid =\"" + str3 + "\" and user_attribute_name in(select user_attribute_name from user where cuid =\"" + str4 + "\")", (String[]) null);
        if (a2 != null) {
            if (a2.moveToFirst()) {
                do {
                    Cursor a3 = a("select * from user where cuid =\"" + str4 + "\" and user_attribute_name =\"" + a2.getString(a2.getColumnIndex("user_attribute_name")) + "\" and user_attribute_container =\"" + a2.getString(a2.getColumnIndex("user_attribute_container")) + "\"", (String[]) null);
                    if (a3 != null) {
                        if (a3.moveToFirst()) {
                            if (a3.getString(a3.getColumnIndex("operation")).equalsIgnoreCase(o.INCREMENT.toString())) {
                                Object a4 = k.a(a3.getBlob(a3.getColumnIndex("user_attribute_value")));
                                if (a4 != null && DataType.isNumber(DataType.valueByString(a2.getString(a2.getColumnIndex("use_attribute_data_type"))))) {
                                    Number number = (Number) a4;
                                    Object a5 = k.a(a2.getBlob(a2.getColumnIndex("user_attribute_value")));
                                    if (a5 != null) {
                                        number = Double.valueOf(number.doubleValue() + ((Number) a5).doubleValue());
                                    }
                                    ContentValues contentValues = new ContentValues();
                                    try {
                                        contentValues.put("user_attribute_value", k.a(DataType.convert(number, DataType.detect(a5), false)));
                                    } catch (Exception unused) {
                                        contentValues.put("user_attribute_value", k.a((Object) number));
                                    }
                                    a("user", contentValues, "id = ?", new String[]{Integer.toString(a3.getInt(a3.getColumnIndex("id")))});
                                }
                            }
                            arrayList.add(String.valueOf(a2.getInt(a2.getColumnIndex("id"))));
                        }
                        a3.close();
                    }
                } while (a2.moveToNext());
            }
            a2.close();
        }
        if (arrayList.size() > 0) {
            a("user", "id in (" + new String(new char[(arrayList.size() - 1)]).replaceAll("\u0000", "?,") + "?)", (String[]) arrayList.toArray(new String[arrayList.size()]));
        }
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("cuid", str3);
        a("user", contentValues2, "cuid = ?", new String[]{str4});
    }

    public void a(List<Object> list, Object obj, String str, o oVar) {
        if (list != null && list.size() > 1 && str != null && !str.isEmpty()) {
            f a2 = f.a(list.get(0).toString());
            if (a2 != null && a2.b()) {
                if (oVar == null) {
                    oVar = o.FORCE_UPDATE;
                }
                String obj2 = list.get(1).toString();
                int i = AnonymousClass1.f5383a[oVar.ordinal()];
                if (i != 1) {
                    if (i == 2 && obj != null) {
                        a(str, obj2, obj, a2, o.INCREMENT);
                    }
                } else if (obj != null) {
                    a(str, obj2, obj, a2, o.FORCE_UPDATE);
                } else {
                    a(str, obj2, a2);
                }
            }
        }
    }

    public Map<String, Set<String>> b() {
        HashMap hashMap = new HashMap();
        Cursor a2 = a("SELECT  * FROM user WHERE user_attribute_container = \"" + f.SCOPES.toString() + "\"", (String[]) null);
        if (a2 != null) {
            if (a2.moveToFirst()) {
                do {
                    String string = a2.getString(a2.getColumnIndex("user_attribute_name"));
                    String string2 = a2.getString(a2.getColumnIndex("cuid"));
                    if (hashMap.get(string2) == null) {
                        hashMap.put(string2, new HashSet());
                    }
                    ((Set) hashMap.get(string2)).add(string);
                } while (a2.moveToNext());
            }
            if (!a2.isClosed()) {
                a2.close();
            }
        }
        return hashMap;
    }

    public void b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s", new Object[]{"user"}));
        a(sQLiteDatabase);
    }
}
