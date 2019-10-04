package com.raizlabs.android.dbflow.a;

import java.sql.Date;

public final class g extends h<Long, Date> {
    public final Long getDBValue(Date date) {
        if (date == null) {
            return null;
        }
        return Long.valueOf(date.getTime());
    }

    public final Date getModelValue(Long l) {
        if (l == null) {
            return null;
        }
        return new Date(l.longValue());
    }
}
