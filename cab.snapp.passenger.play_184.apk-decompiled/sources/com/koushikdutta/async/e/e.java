package com.koushikdutta.async.e;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Set;

public final class e<T> {

    /* renamed from: a  reason: collision with root package name */
    Hashtable<String, h<T>> f4523a = new Hashtable<>();

    public final Set<String> keySet() {
        return this.f4523a.keySet();
    }

    public final synchronized <V> V tag(String str) {
        h hVar = this.f4523a.get(str);
        if (hVar == null) {
            return null;
        }
        return hVar.tag();
    }

    public final synchronized <V> void tag(String str, V v) {
        h hVar = this.f4523a.get(str);
        if (hVar == null) {
            hVar = new h();
            this.f4523a.put(str, hVar);
        }
        hVar.tag(v);
    }

    public final synchronized ArrayList<T> remove(String str) {
        return this.f4523a.remove(str);
    }

    public final synchronized int size() {
        return this.f4523a.size();
    }

    public final synchronized ArrayList<T> get(String str) {
        return this.f4523a.get(str);
    }

    public final synchronized boolean contains(String str) {
        ArrayList arrayList;
        arrayList = get(str);
        return arrayList != null && arrayList.size() > 0;
    }

    public final synchronized void add(String str, T t) {
        ArrayList arrayList = get(str);
        if (arrayList == null) {
            arrayList = new h();
            this.f4523a.put(str, arrayList);
        }
        arrayList.add(t);
    }

    public final synchronized T pop(String str) {
        h hVar = this.f4523a.get(str);
        if (hVar == null) {
            return null;
        }
        if (hVar.size() == 0) {
            return null;
        }
        return hVar.remove(hVar.size() - 1);
    }

    public final synchronized boolean removeItem(String str, T t) {
        h hVar = this.f4523a.get(str);
        if (hVar == null) {
            return false;
        }
        hVar.remove(t);
        if (hVar.size() == 0) {
            return true;
        }
        return false;
    }
}
