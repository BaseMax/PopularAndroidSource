package f.a.a.a.c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AddressStorage */
public class a extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public static a f13935a;

    public a(Context context) {
        super(context, "address.db", null, 2);
    }

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (f13935a == null) {
                f13935a = new a(context);
            }
            aVar = f13935a;
        }
        return aVar;
    }

    public void b(f.a.a.g.a.a aVar) {
        synchronized (this) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.delete("address_storage", "id=" + aVar.c(), null);
            writableDatabase.close();
        }
    }

    public void c(f.a.a.g.a.a aVar) {
        synchronized (this) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", aVar.e());
            contentValues.put("address", aVar.b());
            writableDatabase.update("address_storage", contentValues, "id=" + aVar.c(), null);
            writableDatabase.close();
        }
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS address_storage ( id INTEGER PRIMARY KEY AUTOINCREMENT, title NVARCHAR(50), address NVARCHAR(300));");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    public void a(f.a.a.g.a.a aVar) {
        synchronized (this) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.execSQL("INSERT INTO address_storage (title, address, location) VALUES ('" + aVar.e() + "', '" + aVar.b() + "');");
            writableDatabase.close();
        }
    }

    public List<f.a.a.g.a.a> a() {
        ArrayList arrayList;
        synchronized (this) {
            SQLiteDatabase readableDatabase = getReadableDatabase();
            arrayList = new ArrayList();
            Cursor rawQuery = readableDatabase.rawQuery("SELECT * FROM address_storage;", null);
            if (rawQuery.moveToFirst()) {
                while (!rawQuery.isAfterLast()) {
                    arrayList.add(new f.a.a.g.a.a(rawQuery.getInt(rawQuery.getColumnIndex("id")), rawQuery.getString(rawQuery.getColumnIndex("title")), rawQuery.getString(rawQuery.getColumnIndex("address"))));
                    rawQuery.moveToNext();
                }
            }
            rawQuery.close();
            readableDatabase.close();
        }
        return arrayList;
    }
}
