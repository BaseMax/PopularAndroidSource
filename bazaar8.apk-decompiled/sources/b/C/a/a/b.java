package b.C.a.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import b.C.a.a;
import b.C.a.e;
import b.C.a.f;
import java.util.List;

/* compiled from: FrameworkSQLiteDatabase */
public class b implements b.C.a.b {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f1055a = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f1056b = new String[0];

    /* renamed from: c  reason: collision with root package name */
    public final SQLiteDatabase f1057c;

    public b(SQLiteDatabase sQLiteDatabase) {
        this.f1057c = sQLiteDatabase;
    }

    public Cursor a(e eVar) {
        return this.f1057c.rawQueryWithFactory(new a(this, eVar), eVar.a(), f1056b, null);
    }

    public void b(String str) {
        this.f1057c.execSQL(str);
    }

    public f c(String str) {
        return new g(this.f1057c.compileStatement(str));
    }

    public void close() {
        this.f1057c.close();
    }

    public Cursor d(String str) {
        return a((e) new a(str));
    }

    public String getPath() {
        return this.f1057c.getPath();
    }

    public boolean isOpen() {
        return this.f1057c.isOpen();
    }

    public void n() {
        this.f1057c.beginTransaction();
    }

    public List<Pair<String, String>> o() {
        return this.f1057c.getAttachedDbs();
    }

    public void p() {
        this.f1057c.setTransactionSuccessful();
    }

    public void q() {
        this.f1057c.endTransaction();
    }

    public boolean r() {
        return this.f1057c.inTransaction();
    }

    public boolean a(SQLiteDatabase sQLiteDatabase) {
        return this.f1057c == sQLiteDatabase;
    }
}
