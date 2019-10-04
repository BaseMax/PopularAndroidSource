package com.yandex.metrica.impl.ob;

public class kj extends ow<Void> {
    public kj(final kp kpVar) {
        super(new pa<Void>() {
            public /* bridge */ /* synthetic */ oy a(Object obj) {
                return a();
            }

            public oy a() {
                if (kp.this.c()) {
                    return oy.a(this);
                }
                return oy.a(this, "YandexMetrica isn't initialized. Use YandexMetrica#activate(android.content.Context, String) method to activate.");
            }
        });
    }

    public oy a() {
        return super.a(null);
    }
}
