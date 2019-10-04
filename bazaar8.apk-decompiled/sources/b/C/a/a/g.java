package b.C.a.a;

import android.database.sqlite.SQLiteStatement;
import b.C.a.f;

/* compiled from: FrameworkSQLiteStatement */
public class g extends f implements f {

    /* renamed from: b  reason: collision with root package name */
    public final SQLiteStatement f1065b;

    public g(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f1065b = sQLiteStatement;
    }

    public int l() {
        return this.f1065b.executeUpdateDelete();
    }

    public long m() {
        return this.f1065b.executeInsert();
    }
}
