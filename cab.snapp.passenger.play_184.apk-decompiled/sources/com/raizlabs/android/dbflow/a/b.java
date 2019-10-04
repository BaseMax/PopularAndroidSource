package com.raizlabs.android.dbflow.a;

import java.math.BigInteger;

public final class b extends h<String, BigInteger> {
    public final String getDBValue(BigInteger bigInteger) {
        if (bigInteger == null) {
            return null;
        }
        return bigInteger.toString();
    }

    public final BigInteger getModelValue(String str) {
        if (str == null) {
            return null;
        }
        return new BigInteger(str);
    }
}
