package com.raizlabs.android.dbflow.a;

import java.util.Calendar;

public final class d extends h<Long, Calendar> {
    public final Long getDBValue(Calendar calendar) {
        if (calendar == null) {
            return null;
        }
        return Long.valueOf(calendar.getTimeInMillis());
    }

    public final Calendar getModelValue(Long l) {
        if (l == null) {
            return null;
        }
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(l.longValue());
        return instance;
    }
}
