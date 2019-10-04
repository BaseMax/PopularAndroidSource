package com.bumptech.glide.load.c;

import com.bumptech.glide.load.c.j;
import java.util.Collections;
import java.util.Map;

public interface h {
    public static final h DEFAULT = new j.a().build();
    @Deprecated
    public static final h NONE = new h() {
        public final Map<String, String> getHeaders() {
            return Collections.emptyMap();
        }
    };

    Map<String, String> getHeaders();
}
