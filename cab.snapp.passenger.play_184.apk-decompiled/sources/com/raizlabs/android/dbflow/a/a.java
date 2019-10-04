package com.raizlabs.android.dbflow.a;

import java.math.BigDecimal;

public final class a extends h<String, BigDecimal> {
    public final String getDBValue(BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            return null;
        }
        return bigDecimal.toString();
    }

    public final BigDecimal getModelValue(String str) {
        if (str == null) {
            return null;
        }
        return new BigDecimal(str);
    }
}
