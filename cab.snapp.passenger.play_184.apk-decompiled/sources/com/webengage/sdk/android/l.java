package com.webengage.sdk.android;

import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.c;
import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class l implements c, Serializable {

    /* renamed from: a  reason: collision with root package name */
    Integer f5552a = -1;

    /* renamed from: b  reason: collision with root package name */
    String f5553b;
    String c;
    String d = "";
    String e = "";
    String f = "";
    String g = "";
    String h = "";
    Date i = null;
    Map<String, Object> j = null;
    Map<String, Object> k = null;
    Map<String, Object> l = null;

    public String a() {
        return this.f5553b;
    }

    public void a(Integer num) {
        this.f5552a = num;
    }

    public void a(String str) {
        this.f5553b = str;
    }

    public void a(Date date) {
        this.i = date;
    }

    public void a(Map<String, Object> map) {
        this.j = map;
    }

    public String b() {
        return this.c;
    }

    public void b(String str) {
        this.c = str;
    }

    public void b(Map<String, Object> map) {
        this.k = map;
    }

    public Integer c() {
        return this.f5552a;
    }

    public void c(String str) {
        this.d = str;
    }

    public void c(Map<String, Object> map) {
        this.l = map;
    }

    public String d() {
        return this.d;
    }

    public void d(String str) {
        this.e = str;
    }

    public String e() {
        return this.e;
    }

    public void e(String str) {
        this.g = str;
    }

    public boolean equals(Object obj) {
        return false;
    }

    public String f() {
        return this.g;
    }

    public void f(String str) {
        this.f = str;
    }

    public String g() {
        return this.f;
    }

    public void g(String str) {
        this.h = str;
    }

    public String h() {
        return this.h;
    }

    public int hashCode() {
        return (this.h + this.d + this.e + this.f + this.i.toString()).hashCode();
    }

    public Date i() {
        try {
            return (Date) DataType.cloneInternal(this.i);
        } catch (Exception unused) {
            return null;
        }
    }

    public Map<String, Object> j() {
        try {
            return (Map) DataType.cloneInternal(this.j);
        } catch (Exception unused) {
            return null;
        }
    }

    public Map<String, Object> k() {
        try {
            return (Map) DataType.cloneInternal(this.k);
        } catch (Exception unused) {
            return null;
        }
    }

    public Map<String, Object> l() {
        try {
            return (Map) DataType.cloneInternal(this.l);
        } catch (Exception unused) {
            return null;
        }
    }

    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("license_code", this.c);
        hashMap.put("interface_id", this.f5553b);
        hashMap.put("suid", this.e);
        hashMap.put("luid", this.d);
        hashMap.put("cuid", this.f.isEmpty() ? null : this.f);
        hashMap.put("category", this.g);
        hashMap.put("event_name", this.h);
        hashMap.put("event_time", i());
        hashMap.put("event_data", j());
        hashMap.put("system_data", k());
        return hashMap;
    }

    public String toString() {
        try {
            return DataType.convert(toMap(), DataType.STRING, true).toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
