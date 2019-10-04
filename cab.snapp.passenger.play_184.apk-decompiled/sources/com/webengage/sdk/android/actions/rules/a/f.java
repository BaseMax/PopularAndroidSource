package com.webengage.sdk.android.actions.rules.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class f implements Iterator<String> {

    /* renamed from: a  reason: collision with root package name */
    private String f5442a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f5443b = 0;
    private char c = 0;
    private String d = "";
    private int e = 0;
    private int f;
    private int g;
    private List<Integer> h;

    public f(String str) {
        this.f5442a = str.trim();
        this.e = this.f5442a.length();
        this.h = new ArrayList();
        b();
    }

    private void b() {
        StringBuilder sb = new StringBuilder();
        this.g = 0;
        boolean z = false;
        int i = -1;
        while (this.g < this.f5442a.length()) {
            sb.setLength(0);
            this.f = this.g;
            int i2 = -1;
            int i3 = 0;
            while (true) {
                if (this.f >= this.f5442a.length()) {
                    break;
                }
                this.c = this.f5442a.charAt(this.f);
                sb.append(this.c);
                if (this.c == '\"' && i == -1 && z) {
                    this.g = this.f;
                    z = false;
                    break;
                }
                if (this.c == '\"' && i == 1) {
                    i = -1;
                } else if (sb.toString().equals("\"") && i == -1 && !z) {
                    z = true;
                } else if (this.c == '\\' && z) {
                    i *= -1;
                } else if (!z && c.a().h(sb.toString())) {
                    i3 = sb.length();
                    i2 = this.f;
                }
                this.f++;
            }
            if (i2 != -1) {
                if (this.h.size() == 0) {
                    this.h.add(0);
                    this.h.add(Integer.valueOf((i2 - i3) + 1));
                }
                if (this.h.size() > 0) {
                    List<Integer> list = this.h;
                    int i4 = (i2 - i3) + 1;
                    if (list.get(list.size() - 1).intValue() != i4) {
                        List<Integer> list2 = this.h;
                        list2.add(list2.get(list2.size() - 1));
                        this.h.add(Integer.valueOf(i4));
                    }
                }
                this.h.add(Integer.valueOf((i2 - i3) + 1));
                this.h.add(Integer.valueOf(i2 + 1));
                this.g = i2;
            }
            this.g++;
        }
        if (this.h.size() == 0) {
            this.h.add(0);
            this.h.add(Integer.valueOf(this.e));
        }
        if (this.h.size() > 0) {
            List<Integer> list3 = this.h;
            if (list3.get(list3.size() - 1).intValue() != this.e) {
                List<Integer> list4 = this.h;
                list4.add(list4.get(list4.size() - 1));
                this.h.add(Integer.valueOf(this.e));
            }
        }
    }

    /* renamed from: a */
    public String next() {
        String str = this.f5442a;
        List<Integer> list = this.h;
        int i = this.f5443b;
        this.f5443b = i + 1;
        int intValue = list.get(i).intValue();
        List<Integer> list2 = this.h;
        int i2 = this.f5443b;
        this.f5443b = i2 + 1;
        this.d = str.substring(intValue, list2.get(i2).intValue());
        return this.d;
    }

    public boolean hasNext() {
        return this.f5443b < this.h.size();
    }

    public void remove() {
    }
}
