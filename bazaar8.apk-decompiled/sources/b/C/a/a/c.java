package b.C.a.a;

import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import b.C.a.a.d;
import b.C.a.c;

/* compiled from: FrameworkSQLiteOpenHelper */
class c implements DatabaseErrorHandler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c.a f1058a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ b[] f1059b;

    public c(c.a aVar, b[] bVarArr) {
        this.f1058a = aVar;
        this.f1059b = bVarArr;
    }

    public void onCorruption(SQLiteDatabase sQLiteDatabase) {
        this.f1058a.b(d.a.a(this.f1059b, sQLiteDatabase));
    }
}
