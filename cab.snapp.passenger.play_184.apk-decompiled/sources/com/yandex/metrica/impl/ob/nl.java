package com.yandex.metrica.impl.ob;

public abstract class nl implements Runnable {
    public abstract void a() throws Exception;

    public void run() {
        try {
            a();
        } catch (Exception unused) {
        }
    }
}
