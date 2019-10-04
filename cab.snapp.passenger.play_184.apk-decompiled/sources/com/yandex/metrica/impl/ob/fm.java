package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.s;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class fm {

    /* renamed from: a  reason: collision with root package name */
    public static final Boolean f6016a = Boolean.FALSE;

    /* renamed from: b  reason: collision with root package name */
    public static final int f6017b = YandexMetrica.getLibraryApiLevel();
    static final SparseArray<q> c;
    static final SparseArray<q> d;
    static final HashMap<String, String[]> e;

    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f6018a = {"incremental_id", AppMeasurement.d.TIMESTAMP, "data"};

        /* renamed from: com.yandex.metrica.impl.ob.fm$a$a  reason: collision with other inner class name */
        public interface C0109a {

            /* renamed from: a  reason: collision with root package name */
            public static final String f6019a = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s (incremental_id INTEGER NOT NULL,timestamp INTEGER, data TEXT)", new Object[]{"lbs_dat"});

            /* renamed from: b  reason: collision with root package name */
            public static final String f6020b = String.format(Locale.US, "DROP TABLE IF EXISTS %s", new Object[]{"lbs_dat"});
        }

        public interface b {

            /* renamed from: a  reason: collision with root package name */
            public static final String f6021a = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s (incremental_id INTEGER NOT NULL,timestamp INTEGER, data TEXT)", new Object[]{"l_dat"});

            /* renamed from: b  reason: collision with root package name */
            public static final String f6022b = String.format(Locale.US, "DROP TABLE IF EXISTS %s", new Object[]{"l_dat"});
        }
    }

    static class aa extends q {
        private aa() {
        }

        /* synthetic */ aa(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            sQLiteDatabase.execSQL(String.format(Locale.US, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", new Object[]{"reports", "encrypting_mode", Integer.valueOf(oe.NONE.a())}));
            sQLiteDatabase.execSQL(String.format(Locale.US, "UPDATE %s SET %s = %d where %s=%d", new Object[]{"reports", "encrypting_mode", Integer.valueOf(oe.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER.a()), "type", Integer.valueOf(s.a.EVENT_TYPE_IDENTITY.a())}));
            sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN profile_id TEXT ");
        }
    }

    static class ab extends q {
        private ab() {
        }

        /* synthetic */ ab(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            sQLiteDatabase.execSQL(String.format(Locale.US, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", new Object[]{"reports", "first_occurrence_status", Integer.valueOf(com.yandex.metrica.impl.t.UNKNOWN.d)}));
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS binary_data (data_key TEXT PRIMARY KEY,value BLOB)");
        }
    }

    static class ac extends q {
        private ac() {
        }

        /* synthetic */ ac(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("ALTER TABLE sessions" + " ADD COLUMN report_request_parameters" + " TEXT DEFAULT ''");
        }
    }

    interface ad {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f6023a = {"key", FirebaseAnalytics.b.VALUE, "type"};
    }

    public static final class ae {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f6024a = {"name", "granted"};
    }

    public static final class af implements ad {
    }

    public static final class ag {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f6025a = {"id", "number", "name", FirebaseAnalytics.b.VALUE, "type", "time", "session_id", "wifi_network_info", "cell_info", "location_info", "error_environment", "user_info", "session_type", "app_environment", "app_environment_revision", "truncated", "connection_type", "cellular_connection_type", "custom_type", "wifi_access_point", "encrypting_mode", "profile_id", "first_occurrence_status"};

        /* renamed from: b  reason: collision with root package name */
        static final String f6026b = ("CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY,name TEXT,value TEXT,number INTEGER,type INTEGER,time INTEGER,session_id TEXT,wifi_network_info TEXT DEFAULT '',cell_info TEXT DEFAULT '',location_info TEXT DEFAULT '',error_environment TEXT,user_info TEXT,session_type INTEGER DEFAULT " + en.FOREGROUND.a() + ",app_environment TEXT DEFAULT '{}',app_environment_revision INTEGER DEFAULT 0,truncated INTEGER DEFAULT 0,connection_type INTEGER DEFAULT 2,cellular_connection_type TEXT,custom_type INTEGER DEFAULT 0, wifi_access_point TEXT, encrypting_mode INTEGER DEFAULT " + oe.NONE.a() + ", profile_id TEXT, first_occurrence_status INTEGER DEFAULT " + com.yandex.metrica.impl.t.UNKNOWN.d + " )");
    }

    public static final class ah {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f6027a = {"id", "start_time", "network_info", "report_request_parameters", "server_time_offset", "type", "obtained_before_first_sync"};

        /* renamed from: b  reason: collision with root package name */
        static final String f6028b = ("CREATE TABLE IF NOT EXISTS sessions (id INTEGER,start_time INTEGER,network_info TEXT,report_request_parameters TEXT,server_time_offset INTEGER,type INTEGER DEFAULT " + en.FOREGROUND.a() + ",obtained_before_first_sync INTEGER DEFAULT 0 )");
        public static final String c = String.format(Locale.US, "(select count(%s.%s) from %s where %s.%s = %s.%s) = 0 and %s NOT IN (%s)", new Object[]{"reports", "id", "reports", "reports", "session_id", "sessions", "id", "id", nc.a(2)});
    }

    public static final class ai implements ad {
    }

    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final String[] f6029a = {"data_key", FirebaseAnalytics.b.VALUE};
    }

    static class c extends q {
        private c() {
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
        }
    }

    static class d extends q {
        private d() {
        }

        /* synthetic */ d(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS preferences");
        }
    }

    static class e extends q {
        e() {
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL(ag.f6026b);
            sQLiteDatabase.execSQL(ah.f6028b);
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS binary_data (data_key TEXT PRIMARY KEY,value BLOB)");
        }
    }

    static class f extends q {
        f() {
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS reports");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS sessions");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS preferences");
        }
    }

    static class g extends q {
        g() {
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS startup (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
            sQLiteDatabase.execSQL(a.b.f6021a);
            sQLiteDatabase.execSQL(a.C0109a.f6019a);
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS permissions (name TEXT PRIMARY KEY,granted INTEGER)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS binary_data (data_key TEXT PRIMARY KEY,value BLOB)");
        }
    }

    static class h extends q {
        h() {
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS device_id_info");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS api_level_info");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS preferences");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS startup");
            sQLiteDatabase.execSQL(a.b.f6022b);
            sQLiteDatabase.execSQL(a.C0109a.f6020b);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS permissions");
        }
    }

    static class i extends q {
        private i() {
        }

        /* synthetic */ i(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS api_level_info (API_LEVEL INT )");
            ContentValues contentValues = new ContentValues();
            contentValues.put("API_LEVEL", Integer.valueOf(YandexMetrica.getLibraryApiLevel()));
            sQLiteDatabase.insert("api_level_info", "API_LEVEL", contentValues);
        }
    }

    static class j extends q {
        private j() {
        }

        /* synthetic */ j(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS api_level_info");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS device_id_info");
        }
    }

    static class k extends q {
        private k() {
        }

        /* synthetic */ k(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS startup (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
        }
    }

    static class l extends q {
        private l() {
        }

        /* synthetic */ l(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS GeoLocationInfo");
        }
    }

    static final class m extends q {
        private m() {
        }

        /* synthetic */ m(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public final void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS permissions (name TEXT PRIMARY KEY,granted INTEGER)");
        }
    }

    static class n extends q {
        private n() {
        }

        /* synthetic */ n(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            sQLiteDatabase.execSQL(a.b.f6021a);
        }
    }

    static class o extends q {
        private o() {
        }

        /* synthetic */ o(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            sQLiteDatabase.execSQL(a.C0109a.f6019a);
        }
    }

    static class p extends q {
        private p() {
        }

        /* synthetic */ p(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS binary_data (data_key TEXT PRIMARY KEY,value BLOB)");
        }
    }

    static abstract class q {
        /* access modifiers changed from: protected */
        public abstract void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b;

        q() {
        }
    }

    static class r extends q {
        private r() {
        }

        /* synthetic */ r(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            Cursor cursor;
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS sessions_BACKUP (" + "id INTEGER," + "start_time INTEGER," + "connection_type INTEGER," + "network_type TEXT," + "country_code INTEGER," + "operator_id INTEGER," + "lac INTEGER," + "report_request_parameters TEXT );");
            StringBuilder sb = new StringBuilder();
            sb.append("id,");
            sb.append("start_time,");
            sb.append("connection_type,");
            sb.append("network_type,");
            sb.append("country_code,");
            sb.append("operator_id,");
            sb.append("lac,");
            sb.append("report_request_parameters");
            sQLiteDatabase.execSQL("INSERT INTO sessions_BACKUP" + " SELECT " + sb + " FROM sessions;");
            sQLiteDatabase.execSQL("DROP TABLE sessions;");
            sQLiteDatabase.execSQL(ah.f6028b);
            try {
                cursor = sQLiteDatabase.rawQuery("SELECT * FROM sessions_BACKUP", null);
                while (cursor.moveToNext()) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
                        ArrayList<String> arrayList = new ArrayList<>();
                        arrayList.add("id");
                        arrayList.add("start_time");
                        arrayList.add("report_request_parameters");
                        ContentValues contentValues2 = new ContentValues(contentValues);
                        for (Map.Entry next : contentValues.valueSet()) {
                            if (!arrayList.contains(next.getKey())) {
                                contentValues2.remove((String) next.getKey());
                            }
                        }
                        for (String remove : arrayList) {
                            contentValues.remove(remove);
                        }
                        org.a.c cVar = new org.a.c();
                        cVar.put("conn_type", (Object) contentValues.getAsInteger("connection_type"));
                        cVar.putOpt("net_type", contentValues.get("network_type"));
                        cVar.putOpt("operator_id", contentValues.get("operator_id"));
                        cVar.putOpt("lac", contentValues.get("lac"));
                        cVar.putOpt("country_code", contentValues.get("country_code"));
                        contentValues2.put("network_info", cVar.toString());
                        sQLiteDatabase.insertOrThrow("sessions", null, contentValues2);
                    } catch (Throwable th) {
                        th = th;
                        bv.a(cursor);
                        throw th;
                    }
                }
                bv.a(cursor);
                sQLiteDatabase.execSQL("DROP TABLE sessions_BACKUP;");
                sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN wifi_network_info" + " TEXT DEFAULT ''");
                sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN cell_info" + " TEXT DEFAULT ''");
                sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN location_info" + " TEXT DEFAULT ''");
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
                bv.a(cursor);
                throw th;
            }
        }
    }

    static class s extends q {
        private s() {
        }

        /* synthetic */ s(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN environment" + " TEXT ");
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN user_info" + " TEXT ");
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN session_type" + " INTEGER DEFAULT " + en.FOREGROUND.a());
            sQLiteDatabase.execSQL("UPDATE reports" + " SET session_type = " + en.BACKGROUND.a() + " WHERE session_id" + " = -2");
            StringBuilder sb = new StringBuilder();
            sb.append("ALTER TABLE sessions");
            sb.append(" ADD COLUMN server_time_offset");
            sb.append(" INTEGER ");
            sQLiteDatabase.execSQL(sb.toString());
            sQLiteDatabase.execSQL("ALTER TABLE sessions" + " ADD COLUMN type" + " INTEGER DEFAULT " + en.FOREGROUND.a());
            sQLiteDatabase.execSQL("UPDATE sessions" + " SET type = " + en.BACKGROUND.a() + " WHERE id" + " = -2");
        }
    }

    static class t extends q {

        /* renamed from: a  reason: collision with root package name */
        private static final String f6030a = ("CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY,name TEXT,value TEXT,number INTEGER,type INTEGER,time INTEGER,session_id TEXT,wifi_network_info TEXT DEFAULT '',cell_info TEXT DEFAULT '',location_info TEXT DEFAULT '',error_environment TEXT,user_info TEXT,session_type INTEGER DEFAULT " + en.FOREGROUND.a() + ",app_environment TEXT DEFAULT '{}',app_environment_revision INTEGER DEFAULT 0 )");

        private t() {
        }

        /* synthetic */ t(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            Cursor cursor;
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN app_environment" + " TEXT DEFAULT '{}'");
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN app_environment_revision" + " INTEGER DEFAULT 0");
            sQLiteDatabase.execSQL("ALTER TABLE reports RENAME TO reports_backup");
            sQLiteDatabase.execSQL(f6030a);
            try {
                cursor = sQLiteDatabase.rawQuery("SELECT * FROM reports_backup", null);
                while (cursor.moveToNext()) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
                        String asString = contentValues.getAsString("environment");
                        contentValues.remove("environment");
                        contentValues.put("error_environment", asString);
                        sQLiteDatabase.insert("reports", null, contentValues);
                    } catch (Throwable th) {
                        th = th;
                        bv.a(cursor);
                        throw th;
                    }
                }
                bv.a(cursor);
                sQLiteDatabase.execSQL("DROP TABLE reports_backup");
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
                bv.a(cursor);
                throw th;
            }
        }
    }

    static class u extends q {
        private u() {
        }

        /* synthetic */ u(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN truncated" + " INTEGER DEFAULT 0");
        }
    }

    static class v extends q {
        private v() {
        }

        /* synthetic */ v(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN connection_type" + " INTEGER DEFAULT 2");
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN cellular_connection_type" + " TEXT ");
        }
    }

    static class w extends q {
        private w() {
        }

        /* synthetic */ w(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN custom_type" + " INTEGER DEFAULT 0");
        }
    }

    static class x extends q {
        private x() {
        }

        /* synthetic */ x(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
            sQLiteDatabase.execSQL("ALTER TABLE reports" + " ADD COLUMN wifi_access_point" + " TEXT ");
        }
    }

    static class y extends q {
        private y() {
        }

        /* synthetic */ y(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("ALTER TABLE sessions" + " ADD COLUMN wifi_network_info" + " TEXT DEFAULT ''");
        }
    }

    static class z extends q {
        private z() {
        }

        /* synthetic */ z(byte b2) {
            this();
        }

        /* access modifiers changed from: protected */
        public void a(SQLiteDatabase sQLiteDatabase) throws SQLException, org.a.b {
            sQLiteDatabase.execSQL("ALTER TABLE sessions" + " ADD COLUMN obtained_before_first_sync" + " INTEGER DEFAULT 0");
        }
    }

    static {
        SparseArray<q> sparseArray = new SparseArray<>();
        c = sparseArray;
        sparseArray.put(6, new y((byte) 0));
        c.put(7, new ac((byte) 0));
        c.put(14, new r((byte) 0));
        c.put(29, new s((byte) 0));
        c.put(37, new t((byte) 0));
        c.put(39, new u((byte) 0));
        c.put(45, new v((byte) 0));
        c.put(47, new w((byte) 0));
        c.put(50, new x((byte) 0));
        c.put(60, new z((byte) 0));
        c.put(66, new aa((byte) 0));
        c.put(67, new ab((byte) 0));
        SparseArray<q> sparseArray2 = new SparseArray<>();
        d = sparseArray2;
        sparseArray2.put(12, new i((byte) 0));
        d.put(29, new j((byte) 0));
        d.put(47, new k((byte) 0));
        d.put(50, new l((byte) 0));
        d.put(55, new m((byte) 0));
        d.put(60, new n((byte) 0));
        d.put(63, new o((byte) 0));
        d.put(67, new p((byte) 0));
        HashMap<String, String[]> hashMap = new HashMap<>();
        e = hashMap;
        hashMap.put("reports", ag.f6025a);
        e.put("sessions", ah.f6027a);
        e.put("preferences", af.f6023a);
        e.put("binary_data", b.f6029a);
    }

    public static fv a() {
        return new fv(new e(), new f(), c, new fx(e));
    }

    public static fv b() {
        HashMap hashMap = new HashMap();
        hashMap.put("preferences", af.f6023a);
        hashMap.put("binary_data", b.f6029a);
        hashMap.put("startup", ai.f6023a);
        hashMap.put("l_dat", a.f6018a);
        hashMap.put("lbs_dat", a.f6018a);
        hashMap.put("permissions", ae.f6024a);
        return new fv(new g(), new h(), d, new fx(hashMap));
    }

    public static fv c() {
        HashMap hashMap = new HashMap();
        hashMap.put("preferences", af.f6023a);
        return new fv(new c((byte) 0), new d((byte) 0), new SparseArray(), new fx(hashMap));
    }
}
