package com.yandex.metrica.impl;

import android.net.Uri;
import com.yandex.metrica.impl.ob.im;
import com.yandex.metrica.impl.ob.io;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class aq {

    /* renamed from: a  reason: collision with root package name */
    private List<String> f5717a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f5718b;
    private boolean c;
    protected String d;
    protected int e = 1;
    protected final Map<String, List<String>> f = new HashMap();
    protected byte[] g;
    protected int h;
    protected byte[] i;
    protected Map<String, List<String>> j;
    protected int k = -1;
    private Long l;

    /* access modifiers changed from: protected */
    public abstract void a(Uri.Builder builder);

    public abstract boolean b();

    /* access modifiers changed from: protected */
    public boolean b(int i2) {
        return (i2 == 400 || i2 == 500) ? false : true;
    }

    public abstract boolean c();

    public void g() {
    }

    public void h() {
    }

    public boolean o() {
        return false;
    }

    public long q() {
        return 0;
    }

    public im d() {
        return new io().a(i());
    }

    public void e() {
        v();
        f();
    }

    /* access modifiers changed from: protected */
    public void f() {
        Uri.Builder buildUpon = Uri.parse(s()).buildUpon();
        a(buildUpon);
        a(buildUpon.build().toString());
    }

    public String i() {
        return this.d;
    }

    public void a(String str) {
        this.d = str;
    }

    public int j() {
        return this.e;
    }

    public byte[] k() {
        return this.g;
    }

    public void a(byte[] bArr) {
        this.e = 2;
        this.g = bArr;
    }

    public int l() {
        return this.h;
    }

    public void a(int i2) {
        this.h = i2;
    }

    public byte[] m() {
        return this.i;
    }

    public void b(byte[] bArr) {
        this.i = bArr;
    }

    /* access modifiers changed from: package-private */
    public Map<String, List<String>> n() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public void a(Map<String, List<String>> map) {
        this.j = map;
    }

    public String a() {
        return getClass().getName();
    }

    public void a(List<String> list) {
        this.f5717a = list;
    }

    /* access modifiers changed from: protected */
    public boolean p() {
        return l() == 400;
    }

    public int r() {
        return this.k;
    }

    /* access modifiers changed from: protected */
    public String s() {
        return this.f5717a.get(r());
    }

    public List<String> t() {
        return this.f5717a;
    }

    public boolean u() {
        return !w() && r() + 1 < this.f5717a.size();
    }

    public void v() {
        this.k++;
    }

    public String a(Boolean bool) {
        if (bool == null) {
            return "";
        }
        return bool.booleanValue() ? "1" : "0";
    }

    public boolean w() {
        return this.c;
    }

    public void a(boolean z) {
        this.f5718b = Boolean.valueOf(z);
    }

    public boolean x() {
        Boolean bool = this.f5718b;
        return bool != null && bool.booleanValue();
    }

    public boolean y() {
        return this.f5718b != null;
    }

    public Long z() {
        return this.l;
    }

    public void a(Long l2) {
        this.l = l2;
    }

    public void a(String str, String... strArr) {
        this.f.put(str, Arrays.asList(strArr));
    }

    public Map<String, List<String>> A() {
        return this.f;
    }
}
