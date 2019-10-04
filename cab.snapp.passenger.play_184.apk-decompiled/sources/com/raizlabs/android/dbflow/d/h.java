package com.raizlabs.android.dbflow.d;

public interface h {
    boolean isSubscribed();

    <T> void register(Class<T> cls);

    void setListener(g gVar);

    <T> void unregister(Class<T> cls);

    void unregisterAll();
}
