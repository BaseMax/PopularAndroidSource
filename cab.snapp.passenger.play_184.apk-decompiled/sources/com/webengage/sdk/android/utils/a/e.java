package com.webengage.sdk.android.utils.a;

import io.fabric.sdk.android.services.network.c;
import java.io.Serializable;

public enum e implements Serializable {
    GET("GET"),
    POST(c.METHOD_POST),
    PUT(c.METHOD_PUT),
    DELETE("DELETE");
    
    private String e;

    private e(String str) {
        this.e = str;
    }

    public final String toString() {
        return this.e;
    }
}
