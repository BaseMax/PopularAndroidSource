package com.raizlabs.android.dbflow.sql.language;

import com.raizlabs.android.dbflow.sql.c;

public interface w {
    void appendConditionToQuery(c cVar);

    String columnName();

    boolean hasSeparator();

    String operation();

    w separator(String str);

    String separator();

    Object value();
}
