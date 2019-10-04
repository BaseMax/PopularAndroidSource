package com.yandex.metrica.impl.ob;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.bv;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class fx implements fw {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, String[]> f6045a;

    public fx(HashMap<String, String[]> hashMap) {
        this.f6045a = hashMap;
    }

    public boolean a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        boolean z = true;
        try {
            for (Map.Entry next : this.f6045a.entrySet()) {
                cursor = null;
                cursor = sQLiteDatabase.query((String) next.getKey(), null, null, null, null, null, null);
                if (cursor == null) {
                    bv.a(cursor);
                    return false;
                }
                next.getKey();
                z &= a(cursor, (String[]) next.getValue());
                bv.a(cursor);
            }
            return z;
        } catch (Exception unused) {
            return false;
        } catch (Throwable th) {
            bv.a(cursor);
            throw th;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(Cursor cursor, String[] strArr) {
        String[] columnNames = cursor.getColumnNames();
        Arrays.sort(columnNames);
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        Arrays.sort(strArr2);
        return Arrays.equals(columnNames, strArr2);
    }
}
