package com.b.a;

import java.lang.reflect.Type;

public interface o {
    <T> T fromJson(String str, Type type) throws Exception;

    String toJson(Object obj);
}
