package com.yandex.metrica.impl.ob;

public class je {

    /* renamed from: a  reason: collision with root package name */
    private final String f6174a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6175b;

    public je(String str) {
        this(str, null);
    }

    public je(String str, String str2) {
        String str3;
        this.f6174a = str;
        if (str2 != null) {
            str3 = this.f6174a + str2;
        } else {
            str3 = this.f6174a;
        }
        this.f6175b = str3;
    }

    public String a() {
        return this.f6174a;
    }

    public String b() {
        return this.f6175b;
    }
}
