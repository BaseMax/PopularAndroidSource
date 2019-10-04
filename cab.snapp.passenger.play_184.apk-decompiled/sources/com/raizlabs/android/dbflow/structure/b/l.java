package com.raizlabs.android.dbflow.structure.b;

public interface l {
    void backupDB();

    void closeDB();

    i getDatabase();

    e getDelegate();

    boolean isDatabaseIntegrityOk();

    void performRestoreFromBackup();

    void setDatabaseListener(f fVar);
}
