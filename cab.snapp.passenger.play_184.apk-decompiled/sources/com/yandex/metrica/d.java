package com.yandex.metrica;

import android.text.TextUtils;
import java.util.Map;

public class d {

    /* renamed from: a  reason: collision with root package name */
    private String f5646a;

    /* renamed from: b  reason: collision with root package name */
    private String f5647b;
    private Map<String, String> c;

    public String a() {
        return this.f5646a;
    }

    public void a(String str) {
        this.f5646a = str;
    }

    public String b() {
        return this.f5647b;
    }

    public void b(String str) {
        this.f5647b = str;
    }

    public Map<String, String> c() {
        return this.c;
    }

    public void a(Map<String, String> map) {
        this.c = map;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (!TextUtils.equals(this.f5646a, dVar.f5646a) || !TextUtils.equals(this.f5647b, dVar.f5647b)) {
            return false;
        }
        Map<String, String> map = this.c;
        Map<String, String> map2 = dVar.c;
        if (map == map2 || map == null || map.equals(map2)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f5646a;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f5647b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Map<String, String> map = this.c;
        if (map != null) {
            i = map.hashCode();
        }
        return hashCode2 + i;
    }
}
