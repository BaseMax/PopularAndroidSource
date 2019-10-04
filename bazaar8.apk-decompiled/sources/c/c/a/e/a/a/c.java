package c.c.a.e.a.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import h.f.b.f;
import h.f.b.j;

/* compiled from: LegacyDbHelper.kt */
public final class c extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4866a = new a(null);

    /* compiled from: LegacyDbHelper.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(Context context) {
        super(context, "videoDownload.db", null, 1);
        j.b(context, "context");
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        j.b(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS videoDownload (\n                _id TEXT PRIMARY KEY,\n                di TEXT,\n                s INTEGER,\n                ex INTEGER,\n                p TEXT,\n                n TEXT, \n                sl TEXT,\n                q TEXT,\n                t INTEGER, \n                c TEXT, \n                d TEXT\n                );");
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        j.b(sQLiteDatabase, "db");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        j.b(sQLiteDatabase, "db");
    }
}
