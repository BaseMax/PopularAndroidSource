package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.yandex.metrica.impl.bv;

public class nc {
    public static void a(Cursor cursor, ContentValues contentValues) {
        if (Build.VERSION.SDK_INT >= 11) {
            String[] columnNames = cursor.getColumnNames();
            int length = columnNames.length;
            for (int i = 0; i < length; i++) {
                int type = cursor.getType(i);
                if (type == 0) {
                    contentValues.put(columnNames[i], cursor.getString(i));
                } else if (type == 1) {
                    contentValues.put(columnNames[i], Long.valueOf(cursor.getLong(i)));
                } else if (type == 2) {
                    contentValues.put(columnNames[i], Double.valueOf(cursor.getDouble(i)));
                } else if (type == 3) {
                    contentValues.put(columnNames[i], cursor.getString(i));
                } else if (type != 4) {
                    contentValues.put(columnNames[i], cursor.getString(i));
                } else {
                    contentValues.put(columnNames[i], cursor.getBlob(i));
                }
            }
            return;
        }
        DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
    }

    public static String a(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("?,");
        }
        int length = sb.length();
        sb.replace(length - 1, length, "");
        return sb.toString();
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [java.lang.String[], android.database.Cursor] */
    public static long a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursor = 0;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT count() FROM ".concat(String.valueOf(str)), cursor);
            return cursor.moveToFirst() ? cursor.getLong(0) : 0;
        } finally {
            bv.a((Cursor) cursor);
        }
    }
}
