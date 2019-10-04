package com.raizlabs.android.dbflow.c;

import android.database.Cursor;
import java.io.Closeable;
import java.io.IOException;

public interface d<TModel> extends Closeable {
    void close() throws IOException;

    Cursor cursor();

    long getCount();

    TModel getItem(long j);

    a<TModel> iterator();

    a<TModel> iterator(int i, long j);
}
