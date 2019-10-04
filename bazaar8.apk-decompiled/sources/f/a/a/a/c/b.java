package f.a.a.a.c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: InlineAppsStorage */
public class b extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public static b f13936a;

    public b(Context context) {
        super(context, "inline.db", null, 1);
    }

    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f13936a == null) {
                f13936a = new b(context);
            }
            bVar = f13936a;
        }
        return bVar;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS apps_usage ( packagename TEXT PRIMARY KEY, last_run DATETIME DEFAULT CURRENT_TIMESTAMP );");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    public void a(String str) {
        synchronized (this) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.execSQL("INSERT OR REPLACE INTO apps_usage (packagename, last_run) VALUES ('" + str + "', CURRENT_TIMESTAMP); ");
            writableDatabase.close();
        }
    }
}
