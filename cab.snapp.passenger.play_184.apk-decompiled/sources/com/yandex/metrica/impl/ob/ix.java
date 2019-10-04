package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

public abstract class ix {
    private static final je c = new je("UNDEFINED_");

    /* renamed from: a  reason: collision with root package name */
    protected final String f6172a;

    /* renamed from: b  reason: collision with root package name */
    protected final SharedPreferences f6173b;
    private final Map<String, Object> d = new HashMap();
    private boolean e = false;

    /* access modifiers changed from: protected */
    public abstract String f();

    public ix(Context context, String str) {
        this.f6172a = str;
        this.f6173b = jf.a(context, f());
        new je(c.a(), this.f6172a);
    }

    /* access modifiers changed from: protected */
    public <T extends ix> T a(String str, Object obj) {
        synchronized (this) {
            if (obj != null) {
                this.d.put(str, obj);
            }
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public <T extends ix> T h(String str) {
        synchronized (this) {
            this.d.put(str, this);
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public <T extends ix> T h() {
        synchronized (this) {
            this.e = true;
            this.d.clear();
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public String i() {
        return this.f6172a;
    }

    public void j() {
        synchronized (this) {
            SharedPreferences.Editor edit = this.f6173b.edit();
            if (this.e) {
                edit.clear();
            } else {
                for (Map.Entry next : this.d.entrySet()) {
                    String str = (String) next.getKey();
                    Object value = next.getValue();
                    if (value == this) {
                        edit.remove(str);
                    } else if (value instanceof String) {
                        edit.putString(str, (String) value);
                    } else if (value instanceof Long) {
                        edit.putLong(str, ((Long) value).longValue());
                    } else if (value instanceof Integer) {
                        edit.putInt(str, ((Integer) value).intValue());
                    } else if (value instanceof Boolean) {
                        edit.putBoolean(str, ((Boolean) value).booleanValue());
                    } else if (value != null) {
                        throw new UnsupportedOperationException();
                    }
                }
            }
            edit.apply();
            this.d.clear();
            this.e = false;
        }
    }
}
