package com.b.a;

public interface r {
    boolean contains(String str);

    long count();

    boolean delete(String str);

    boolean deleteAll();

    <T> T get(String str);

    <T> boolean put(String str, T t);
}
