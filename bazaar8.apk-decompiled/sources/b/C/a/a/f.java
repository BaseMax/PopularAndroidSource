package b.C.a.a;

import android.database.sqlite.SQLiteProgram;
import b.C.a.d;

/* compiled from: FrameworkSQLiteProgram */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    public final SQLiteProgram f1064a;

    public f(SQLiteProgram sQLiteProgram) {
        this.f1064a = sQLiteProgram;
    }

    public void a(int i2) {
        this.f1064a.bindNull(i2);
    }

    public void close() {
        this.f1064a.close();
    }

    public void a(int i2, long j2) {
        this.f1064a.bindLong(i2, j2);
    }

    public void a(int i2, double d2) {
        this.f1064a.bindDouble(i2, d2);
    }

    public void a(int i2, String str) {
        this.f1064a.bindString(i2, str);
    }

    public void a(int i2, byte[] bArr) {
        this.f1064a.bindBlob(i2, bArr);
    }
}
