package com.pusher.java_websocket.c;

import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

public class g implements c {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f5067a;

    /* renamed from: b  reason: collision with root package name */
    private TreeMap<String, String> f5068b = new TreeMap<>(String.CASE_INSENSITIVE_ORDER);

    public Iterator<String> iterateHttpFields() {
        return Collections.unmodifiableSet(this.f5068b.keySet()).iterator();
    }

    public String getFieldValue(String str) {
        String str2 = this.f5068b.get(str);
        return str2 == null ? "" : str2;
    }

    public byte[] getContent() {
        return this.f5067a;
    }

    public void setContent(byte[] bArr) {
        this.f5067a = bArr;
    }

    public void put(String str, String str2) {
        this.f5068b.put(str, str2);
    }

    public boolean hasFieldValue(String str) {
        return this.f5068b.containsKey(str);
    }
}
