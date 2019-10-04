package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

public class nb {
    public static boolean a(Collection<?> collection, Collection<?> collection2) {
        HashSet hashSet;
        if (collection == null && collection2 == null) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        if (collection instanceof HashSet) {
            hashSet = (HashSet) collection;
        } else if (collection2 instanceof HashSet) {
            HashSet hashSet2 = (HashSet) collection2;
            collection2 = collection;
            hashSet = hashSet2;
        } else {
            hashSet = new HashSet(collection);
        }
        for (Object contains : collection2) {
            if (!hashSet.contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public static List<Integer> a(int[] iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int valueOf : iArr) {
            arrayList.add(Integer.valueOf(valueOf));
        }
        return arrayList;
    }
}
