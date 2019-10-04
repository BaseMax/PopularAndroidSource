package b.C.a.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import b.C.a.b;
import b.C.a.c;

/* compiled from: FrameworkSQLiteOpenHelper */
public class d implements c {

    /* renamed from: a  reason: collision with root package name */
    public final a f1060a;

    /* compiled from: FrameworkSQLiteOpenHelper */
    static class a extends SQLiteOpenHelper {

        /* renamed from: a  reason: collision with root package name */
        public final b[] f1061a;

        /* renamed from: b  reason: collision with root package name */
        public final c.a f1062b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f1063c;

        public a(Context context, String str, b[] bVarArr, c.a aVar) {
            super(context, str, null, aVar.f1066a, new c(aVar, bVarArr));
            this.f1062b = aVar;
            this.f1061a = bVarArr;
        }

        public synchronized b a() {
            this.f1063c = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (this.f1063c) {
                close();
                return a();
            }
            return a(writableDatabase);
        }

        public synchronized void close() {
            super.close();
            this.f1061a[0] = null;
        }

        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f1062b.a((b) a(sQLiteDatabase));
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f1062b.c(a(sQLiteDatabase));
        }

        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            this.f1063c = true;
            this.f1062b.a(a(sQLiteDatabase), i2, i3);
        }

        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.f1063c) {
                this.f1062b.d(a(sQLiteDatabase));
            }
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            this.f1063c = true;
            this.f1062b.b(a(sQLiteDatabase), i2, i3);
        }

        public b a(SQLiteDatabase sQLiteDatabase) {
            return a(this.f1061a, sQLiteDatabase);
        }

        public static b a(b[] bVarArr, SQLiteDatabase sQLiteDatabase) {
            b bVar = bVarArr[0];
            if (bVar == null || !bVar.a(sQLiteDatabase)) {
                bVarArr[0] = new b(sQLiteDatabase);
            }
            return bVarArr[0];
        }
    }

    public d(Context context, String str, c.a aVar) {
        this.f1060a = a(context, str, aVar);
    }

    public final a a(Context context, String str, c.a aVar) {
        return new a(context, str, new b[1], aVar);
    }

    public void a(boolean z) {
        this.f1060a.setWriteAheadLoggingEnabled(z);
    }

    public b a() {
        return this.f1060a.a();
    }
}
