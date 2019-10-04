package b.C.a.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import b.C.a.e;

/* compiled from: FrameworkSQLiteDatabase */
class a implements SQLiteDatabase.CursorFactory {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f1053a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ b f1054b;

    public a(b bVar, e eVar) {
        this.f1054b = bVar;
        this.f1053a = eVar;
    }

    public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        this.f1053a.a(new f(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
