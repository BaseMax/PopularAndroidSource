package e.a.a.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;

/* compiled from: FabricContext */
public class g extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    public final String f13895a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13896b;

    public g(Context context, String str, String str2) {
        super(context);
        this.f13896b = str;
        this.f13895a = str2;
    }

    public File getCacheDir() {
        return new File(super.getCacheDir(), this.f13895a);
    }

    public File getDatabasePath(String str) {
        File file = new File(super.getDatabasePath(str).getParentFile(), this.f13895a);
        file.mkdirs();
        return new File(file, str);
    }

    @TargetApi(8)
    public File getExternalCacheDir() {
        return new File(super.getExternalCacheDir(), this.f13895a);
    }

    @TargetApi(8)
    public File getExternalFilesDir(String str) {
        return new File(super.getExternalFilesDir(str), this.f13895a);
    }

    public File getFilesDir() {
        return new File(super.getFilesDir(), this.f13895a);
    }

    public SharedPreferences getSharedPreferences(String str, int i2) {
        return super.getSharedPreferences(this.f13896b + ":" + str, i2);
    }

    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), cursorFactory);
    }

    @TargetApi(11)
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str).getPath(), cursorFactory, databaseErrorHandler);
    }
}
