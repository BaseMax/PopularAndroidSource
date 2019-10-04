package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.a.a;
import org.a.b;
import org.a.c;

public class lr {

    /* renamed from: a  reason: collision with root package name */
    public final long f6401a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6402b;
    public final List<Integer> c;

    public lr(long j, String str, List<Integer> list) {
        this.f6401a = j;
        this.f6402b = str;
        this.c = Collections.unmodifiableList(list);
    }

    public static lr a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            c cVar = new c(str);
            return new lr(cVar.getLong("seconds_to_live"), cVar.getString("token"), a(cVar.getJSONArray("ports")));
        } catch (b unused) {
            return null;
        }
    }

    private static ArrayList<Integer> a(a aVar) throws b {
        ArrayList<Integer> arrayList = new ArrayList<>(aVar.length());
        for (int i = 0; i < aVar.length(); i++) {
            arrayList.add(Integer.valueOf(aVar.getInt(i)));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            lr lrVar = (lr) obj;
            if (this.f6401a != lrVar.f6401a) {
                return false;
            }
            String str = this.f6402b;
            if (str == null ? lrVar.f6402b != null : !str.equals(lrVar.f6402b)) {
                return false;
            }
            List<Integer> list = this.c;
            List<Integer> list2 = lrVar.c;
            if (list != null) {
                return list.equals(list2);
            }
            if (list2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.f6401a;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.f6402b;
        int i2 = 0;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        List<Integer> list = this.c;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "SocketConfig{secondsToLive=" + this.f6401a + ", token='" + this.f6402b + '\'' + ", ports=" + this.c + '}';
    }
}
