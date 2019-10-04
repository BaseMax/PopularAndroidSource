package com.raizlabs.android.dbflow.a;

public final class c extends h<Integer, Boolean> {
    public final Integer getDBValue(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return Integer.valueOf(bool.booleanValue() ? 1 : 0);
    }

    public final Boolean getModelValue(Integer num) {
        if (num == null) {
            return null;
        }
        boolean z = true;
        if (num.intValue() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
