package com.raizlabs.android.dbflow.structure.b;

public interface g {
    void bindBlob(int i, byte[] bArr);

    void bindBlobOrNull(int i, byte[] bArr);

    void bindDouble(int i, double d);

    void bindDoubleOrNull(int i, Double d);

    void bindFloatOrNull(int i, Float f);

    void bindLong(int i, long j);

    void bindNull(int i);

    void bindNumber(int i, Number number);

    void bindNumberOrNull(int i, Number number);

    void bindString(int i, String str);

    void bindStringOrNull(int i, String str);

    void close();

    void execute();

    long executeInsert();

    long executeUpdateDelete();

    long simpleQueryForLong();

    String simpleQueryForString();
}
