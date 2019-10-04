package com.b.a;

public interface p {
    c deserialize(String str);

    <T> String serialize(String str, T t);
}
