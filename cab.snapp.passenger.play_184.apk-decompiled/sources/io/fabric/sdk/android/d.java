package io.fabric.sdk.android;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;

final class d extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private final String f6556a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6557b;

    public d(Context context, String str, String str2) {
        super(context);
        this.f6557b = str;
        this.f6556a = str2;
    }

    public final File getDatabasePath(String str) {
        File file = new File(super.getDatabasePath(str).getParentFile(), this.f6556a);
        file.mkdirs();
        return new File(file, str);
    }

    public final SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), cursorFactory);
    }

    public final SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str).getPath(), cursorFactory, databaseErrorHandler);
    }

    public final File getFilesDir() {
        return new File(super.getFilesDir(), this.f6556a);
    }

    public final File getExternalFilesDir(String str) {
        return new File(super.getExternalFilesDir(str), this.f6556a);
    }

    public final File getCacheDir() {
        return new File(super.getCacheDir(), this.f6556a);
    }

    public final File getExternalCacheDir() {
        return new File(super.getExternalCacheDir(), this.f6556a);
    }

    public final SharedPreferences getSharedPreferences(String str, int i) {
        return super.getSharedPreferences(this.f6557b + ":" + str, i);
    }
}
