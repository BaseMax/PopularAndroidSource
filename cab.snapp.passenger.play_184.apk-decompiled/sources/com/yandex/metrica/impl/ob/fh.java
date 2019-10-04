package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;

public class fh {

    /* renamed from: a  reason: collision with root package name */
    private Context f6011a;

    public fh(Context context) {
        this.f6011a = context;
    }

    public fh a(String str) {
        a().putString("client_configurations", str).commit();
        return this;
    }

    public String b(String str) {
        return this.f6011a.getSharedPreferences("com.yandex.metrica.configuration", 0).getString("client_configurations", str);
    }

    public fh a(long j) {
        a().putLong("lwutt", j).commit();
        return this;
    }

    public long b(long j) {
        return b().getLong("lwutt", j);
    }

    public fh a(boolean z) {
        a().putBoolean("les", z).commit();
        return this;
    }

    public boolean b(boolean z) {
        return b().getBoolean("les", z);
    }

    public fh c(long j) {
        a().putLong("lci", j).commit();
        return this;
    }

    public long d(long j) {
        return b().getLong("lci", j);
    }

    private SharedPreferences.Editor a() {
        return b().edit();
    }

    private SharedPreferences b() {
        return this.f6011a.getSharedPreferences("com.yandex.metrica.configuration", 0);
    }
}
