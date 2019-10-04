package com.raizlabs.android.dbflow.structure.b;

import android.content.Context;
import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.config.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public final class e extends c {
    public static final String TEMP_DB_NAME = "temp-";

    /* renamed from: a  reason: collision with root package name */
    private f f5229a;

    /* renamed from: b  reason: collision with root package name */
    private final l f5230b;

    public static String getTempDbFileName(c cVar) {
        return TEMP_DB_NAME + cVar.getDatabaseName() + ".db";
    }

    public e(f fVar, c cVar, l lVar) {
        super(cVar);
        this.f5229a = fVar;
        this.f5230b = lVar;
    }

    public final void performRestoreFromBackup() {
        movePrepackagedDB(getDatabaseDefinition().getDatabaseFileName(), getDatabaseDefinition().getDatabaseFileName());
        if (!getDatabaseDefinition().backupEnabled()) {
            return;
        }
        if (this.f5230b != null) {
            restoreDatabase(getTempDbFileName(getDatabaseDefinition()), getDatabaseDefinition().getDatabaseFileName());
            this.f5230b.getDatabase();
            return;
        }
        throw new IllegalStateException("the passed backup helper was null, even though backup is enabled. Ensure that its passed in.");
    }

    public final void setDatabaseHelperListener(f fVar) {
        this.f5229a = fVar;
    }

    public final void onCreate(i iVar) {
        f fVar = this.f5229a;
        if (fVar != null) {
            fVar.onCreate(iVar);
        }
        super.onCreate(iVar);
    }

    public final void onUpgrade(i iVar, int i, int i2) {
        f fVar = this.f5229a;
        if (fVar != null) {
            fVar.onUpgrade(iVar, i, i2);
        }
        super.onUpgrade(iVar, i, i2);
    }

    public final void onOpen(i iVar) {
        f fVar = this.f5229a;
        if (fVar != null) {
            fVar.onOpen(iVar);
        }
        super.onOpen(iVar);
    }

    public final void onDowngrade(i iVar, int i, int i2) {
        f fVar = this.f5229a;
        if (fVar != null) {
            fVar.onDowngrade(iVar, i, i2);
        }
        super.onDowngrade(iVar, i, i2);
    }

    public final void movePrepackagedDB(String str, String str2) {
        InputStream inputStream;
        File databasePath = FlowManager.getContext().getDatabasePath(str);
        if (!databasePath.exists() || (getDatabaseDefinition().areConsistencyChecksEnabled() && (!getDatabaseDefinition().areConsistencyChecksEnabled() || !isDatabaseIntegrityOk(getWritableDatabase())))) {
            databasePath.getParentFile().mkdirs();
            try {
                File databasePath2 = FlowManager.getContext().getDatabasePath(getTempDbFileName(getDatabaseDefinition()));
                if (!databasePath2.exists() || (getDatabaseDefinition().backupEnabled() && (!getDatabaseDefinition().backupEnabled() || this.f5230b == null || !isDatabaseIntegrityOk(this.f5230b.getDatabase())))) {
                    inputStream = FlowManager.getContext().getAssets().open(str2);
                } else {
                    inputStream = new FileInputStream(databasePath2);
                }
                b(databasePath, inputStream);
            } catch (IOException e) {
                FlowLog.log(FlowLog.Level.W, "Failed to open file", e);
            }
        }
    }

    public final boolean isDatabaseIntegrityOk() {
        return isDatabaseIntegrityOk(getWritableDatabase());
    }

    public final boolean isDatabaseIntegrityOk(i iVar) {
        boolean z;
        g gVar = null;
        try {
            gVar = iVar.compileStatement("PRAGMA quick_check(1)");
            String simpleQueryForString = gVar.simpleQueryForString();
            if (!simpleQueryForString.equalsIgnoreCase("ok")) {
                FlowLog.Level level = FlowLog.Level.E;
                FlowLog.log(level, "PRAGMA integrity_check on " + getDatabaseDefinition().getDatabaseName() + " returned: " + simpleQueryForString);
                z = false;
                if (getDatabaseDefinition().backupEnabled()) {
                    z = restoreBackUp();
                }
            } else {
                z = true;
            }
            return z;
        } finally {
            if (gVar != null) {
                gVar.close();
            }
        }
    }

    public final boolean restoreBackUp() {
        Context context = FlowManager.getContext();
        File databasePath = context.getDatabasePath(TEMP_DB_NAME + getDatabaseDefinition().getDatabaseName());
        File databasePath2 = FlowManager.getContext().getDatabasePath(getDatabaseDefinition().getDatabaseName());
        if (databasePath2.delete()) {
            try {
                b(databasePath2, new FileInputStream(databasePath));
            } catch (IOException e) {
                FlowLog.logError(e);
                return false;
            }
        } else {
            FlowLog.log(FlowLog.Level.E, "Failed to delete DB");
        }
        return true;
    }

    /* access modifiers changed from: private */
    public static void b(File file, InputStream inputStream) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                fileOutputStream.flush();
                fileOutputStream.close();
                inputStream.close();
                return;
            }
        }
    }

    public final void restoreDatabase(String str, String str2) {
        InputStream inputStream;
        File databasePath = FlowManager.getContext().getDatabasePath(str);
        if (!databasePath.exists()) {
            databasePath.getParentFile().mkdirs();
            try {
                File databasePath2 = FlowManager.getContext().getDatabasePath(getDatabaseDefinition().getDatabaseFileName());
                if (!databasePath2.exists() || !getDatabaseDefinition().backupEnabled() || this.f5230b == null || !isDatabaseIntegrityOk(this.f5230b.getDatabase())) {
                    inputStream = FlowManager.getContext().getAssets().open(str2);
                } else {
                    inputStream = new FileInputStream(databasePath2);
                }
                b(databasePath, inputStream);
            } catch (IOException e) {
                FlowLog.logError(e);
            }
        }
    }

    public final void backupDB() {
        if (!getDatabaseDefinition().backupEnabled() || !getDatabaseDefinition().areConsistencyChecksEnabled()) {
            throw new IllegalStateException("Backups are not enabled for : " + getDatabaseDefinition().getDatabaseName() + ". Please consider adding both backupEnabled and consistency checks enabled to the Database annotation");
        }
        getDatabaseDefinition().beginTransactionAsync(new com.raizlabs.android.dbflow.structure.b.a.c() {
            public final void execute(i iVar) {
                Context context = FlowManager.getContext();
                File databasePath = context.getDatabasePath(e.getTempDbFileName(e.this.getDatabaseDefinition()));
                File databasePath2 = context.getDatabasePath("temp--2-" + e.this.getDatabaseDefinition().getDatabaseFileName());
                if (databasePath2.exists()) {
                    databasePath2.delete();
                }
                databasePath.renameTo(databasePath2);
                if (databasePath.exists()) {
                    databasePath.delete();
                }
                File databasePath3 = context.getDatabasePath(e.this.getDatabaseDefinition().getDatabaseFileName());
                try {
                    databasePath.getParentFile().mkdirs();
                    e.b(databasePath, new FileInputStream(databasePath3));
                    databasePath2.delete();
                } catch (Exception e) {
                    FlowLog.logError(e);
                }
            }
        }).build().execute();
    }

    public final i getWritableDatabase() {
        return getDatabaseDefinition().getWritableDatabase();
    }
}
