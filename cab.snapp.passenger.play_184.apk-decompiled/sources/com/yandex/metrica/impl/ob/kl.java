package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.b;
import com.yandex.metrica.c;
import java.util.concurrent.Executor;

public class kl extends km<kt> implements b {
    public kl(Executor executor, Context context, String str) {
        super(executor, context, str, new kt());
    }

    public void a(final c cVar) {
        this.f6250b.execute(new Runnable() {
            public void run() {
                kl.this.b(cVar);
            }
        });
    }

    public void sendEventsBuffer() {
        ((kt) this.f6249a).sendEventsBuffer();
        this.f6250b.execute(new Runnable() {
            public void run() {
                kl.this.a().sendEventsBuffer();
            }
        });
    }

    public void a(final String str, final String str2) {
        ((kt) this.f6249a).a(str, str2);
        this.f6250b.execute(new Runnable() {
            public void run() {
                kl.this.a().a(str, str2);
            }
        });
    }
}
