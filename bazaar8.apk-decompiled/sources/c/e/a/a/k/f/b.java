package c.e.a.a.k.f;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import c.e.a.a.o.C0737e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* compiled from: TtmlNode */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f9205a;

    /* renamed from: b  reason: collision with root package name */
    public final String f9206b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f9207c;

    /* renamed from: d  reason: collision with root package name */
    public final long f9208d;

    /* renamed from: e  reason: collision with root package name */
    public final long f9209e;

    /* renamed from: f  reason: collision with root package name */
    public final e f9210f;

    /* renamed from: g  reason: collision with root package name */
    public final String[] f9211g;

    /* renamed from: h  reason: collision with root package name */
    public final String f9212h;

    /* renamed from: i  reason: collision with root package name */
    public final String f9213i;

    /* renamed from: j  reason: collision with root package name */
    public final HashMap<String, Integer> f9214j;

    /* renamed from: k  reason: collision with root package name */
    public final HashMap<String, Integer> f9215k;

    /* renamed from: l  reason: collision with root package name */
    public List<b> f9216l;

    public b(String str, String str2, long j2, long j3, e eVar, String[] strArr, String str3, String str4) {
        this.f9205a = str;
        this.f9206b = str2;
        this.f9213i = str4;
        this.f9210f = eVar;
        this.f9211g = strArr;
        this.f9207c = str2 != null;
        this.f9208d = j2;
        this.f9209e = j3;
        C0737e.a(str3);
        this.f9212h = str3;
        this.f9214j = new HashMap<>();
        this.f9215k = new HashMap<>();
    }

    public static b a(String str) {
        b bVar = new b(null, d.a(str), -9223372036854775807L, -9223372036854775807L, null, null, "", null);
        return bVar;
    }

    public long[] b() {
        TreeSet treeSet = new TreeSet();
        int i2 = 0;
        a((TreeSet<Long>) treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i2] = ((Long) it.next()).longValue();
            i2++;
        }
        return jArr;
    }

    public static b a(String str, long j2, long j3, e eVar, String[] strArr, String str2, String str3) {
        b bVar = new b(str, null, j2, j3, eVar, strArr, str2, str3);
        return bVar;
    }

    public boolean a(long j2) {
        return (this.f9208d == -9223372036854775807L && this.f9209e == -9223372036854775807L) || (this.f9208d <= j2 && this.f9209e == -9223372036854775807L) || ((this.f9208d == -9223372036854775807L && j2 < this.f9209e) || (this.f9208d <= j2 && j2 < this.f9209e));
    }

    public void a(b bVar) {
        if (this.f9216l == null) {
            this.f9216l = new ArrayList();
        }
        this.f9216l.add(bVar);
    }

    public b a(int i2) {
        List<b> list = this.f9216l;
        if (list != null) {
            return list.get(i2);
        }
        throw new IndexOutOfBoundsException();
    }

    public int a() {
        List<b> list = this.f9216l;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final void a(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f9205a);
        boolean equals2 = "div".equals(this.f9205a);
        if (z || equals || (equals2 && this.f9213i != null)) {
            long j2 = this.f9208d;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
            long j3 = this.f9209e;
            if (j3 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j3));
            }
        }
        if (this.f9216l != null) {
            for (int i2 = 0; i2 < this.f9216l.size(); i2++) {
                this.f9216l.get(i2).a(treeSet, z || equals);
            }
        }
    }

    public List<c.e.a.a.k.b> a(long j2, Map<String, e> map, Map<String, c> map2, Map<String, String> map3) {
        long j3 = j2;
        Map<String, c> map4 = map2;
        ArrayList<Pair> arrayList = new ArrayList<>();
        a(j3, this.f9212h, (List<Pair<String, String>>) arrayList);
        TreeMap treeMap = new TreeMap();
        a(j2, false, this.f9212h, (Map<String, SpannableStringBuilder>) treeMap);
        a(j3, map, (Map<String, SpannableStringBuilder>) treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                c cVar = map4.get(pair.first);
                c.e.a.a.k.b bVar = new c.e.a.a.k.b(decodeByteArray, cVar.f9218b, 1, cVar.f9219c, cVar.f9221e, cVar.f9222f, Float.MIN_VALUE);
                arrayList2.add(bVar);
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            c cVar2 = map4.get(entry.getKey());
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) entry.getValue();
            a(spannableStringBuilder);
            c.e.a.a.k.b bVar2 = new c.e.a.a.k.b((CharSequence) spannableStringBuilder, (Layout.Alignment) null, cVar2.f9219c, cVar2.f9220d, cVar2.f9221e, cVar2.f9218b, Integer.MIN_VALUE, cVar2.f9222f, cVar2.f9223g, cVar2.f9224h);
            arrayList2.add(bVar2);
        }
        return arrayList2;
    }

    public final void a(long j2, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f9212h)) {
            str = this.f9212h;
        }
        if (a(j2) && "div".equals(this.f9205a)) {
            String str2 = this.f9213i;
            if (str2 != null) {
                list.add(new Pair(str, str2));
                return;
            }
        }
        for (int i2 = 0; i2 < a(); i2++) {
            a(i2).a(j2, str, list);
        }
    }

    public final void a(long j2, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.f9214j.clear();
        this.f9215k.clear();
        if (!"metadata".equals(this.f9205a)) {
            if (!"".equals(this.f9212h)) {
                str = this.f9212h;
            }
            if (this.f9207c && z) {
                a(str, map).append(this.f9206b);
            } else if ("br".equals(this.f9205a) && z) {
                a(str, map).append(10);
            } else if (a(j2)) {
                for (Map.Entry next : map.entrySet()) {
                    this.f9214j.put(next.getKey(), Integer.valueOf(((SpannableStringBuilder) next.getValue()).length()));
                }
                boolean equals = "p".equals(this.f9205a);
                for (int i2 = 0; i2 < a(); i2++) {
                    a(i2).a(j2, z || equals, str, map);
                }
                if (equals) {
                    d.a(a(str, map));
                }
                for (Map.Entry next2 : map.entrySet()) {
                    this.f9215k.put(next2.getKey(), Integer.valueOf(((SpannableStringBuilder) next2.getValue()).length()));
                }
            }
        }
    }

    public static SpannableStringBuilder a(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    public final void a(long j2, Map<String, e> map, Map<String, SpannableStringBuilder> map2) {
        int i2;
        if (a(j2)) {
            Iterator<Map.Entry<String, Integer>> it = this.f9215k.entrySet().iterator();
            while (true) {
                i2 = 0;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry next = it.next();
                String str = (String) next.getKey();
                if (this.f9214j.containsKey(str)) {
                    i2 = this.f9214j.get(str).intValue();
                }
                int intValue = ((Integer) next.getValue()).intValue();
                if (i2 != intValue) {
                    a(map, map2.get(str), i2, intValue);
                }
            }
            while (i2 < a()) {
                a(i2).a(j2, map, map2);
                i2++;
            }
        }
    }

    public final void a(Map<String, e> map, SpannableStringBuilder spannableStringBuilder, int i2, int i3) {
        e a2 = d.a(this.f9210f, this.f9211g, map);
        if (a2 != null) {
            d.a(spannableStringBuilder, i2, i3, a2);
        }
    }

    public final SpannableStringBuilder a(SpannableStringBuilder spannableStringBuilder) {
        int i2;
        int i3;
        int i4 = 0;
        int length = spannableStringBuilder.length();
        for (int i5 = 0; i5 < length; i5++) {
            if (spannableStringBuilder.charAt(i5) == ' ') {
                int i6 = i5 + 1;
                int i7 = i6;
                while (i7 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i7) == ' ') {
                    i7++;
                }
                int i8 = i7 - i6;
                if (i8 > 0) {
                    spannableStringBuilder.delete(i5, i5 + i8);
                    length -= i8;
                }
            }
        }
        if (length > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
            length--;
        }
        int i9 = 0;
        while (true) {
            i2 = length - 1;
            if (i9 >= i2) {
                break;
            }
            if (spannableStringBuilder.charAt(i9) == 10) {
                int i10 = i9 + 1;
                if (spannableStringBuilder.charAt(i10) == ' ') {
                    spannableStringBuilder.delete(i10, i9 + 2);
                    length--;
                }
            }
            i9++;
        }
        if (length > 0 && spannableStringBuilder.charAt(i2) == ' ') {
            spannableStringBuilder.delete(i2, length);
            length--;
        }
        while (true) {
            i3 = length - 1;
            if (i4 >= i3) {
                break;
            }
            if (spannableStringBuilder.charAt(i4) == ' ') {
                int i11 = i4 + 1;
                if (spannableStringBuilder.charAt(i11) == 10) {
                    spannableStringBuilder.delete(i4, i11);
                    length--;
                }
            }
            i4++;
        }
        if (length > 0 && spannableStringBuilder.charAt(i3) == 10) {
            spannableStringBuilder.delete(i3, length);
        }
        return spannableStringBuilder;
    }
}
