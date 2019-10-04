package com.yandex.metrica.impl.ob;

import java.util.concurrent.Executor;

public class ik implements Executor {
    public void execute(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }
}
