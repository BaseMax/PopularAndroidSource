package com.yandex.metrica.impl.ob;

import java.util.Map;

public class pc implements pa<String> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, ?> f6495a;

    public pc(Map<String, ?> map) {
        this.f6495a = map;
    }

    public oy a(String str) {
        if (!this.f6495a.containsKey(str)) {
            return oy.a(this);
        }
        return oy.a(this, String.format("Failed to activate AppMetrica with provided apiKey ApiKey %s has already been used by another reporter.", new Object[]{str}));
    }
}
