package org.eclipse.paho.a.a;

import java.util.Enumeration;

public interface m extends AutoCloseable {
    void clear() throws s;

    void close() throws s;

    boolean containsKey(String str) throws s;

    r get(String str) throws s;

    Enumeration keys() throws s;

    void open(String str, String str2) throws s;

    void put(String str, r rVar) throws s;

    void remove(String str) throws s;
}
