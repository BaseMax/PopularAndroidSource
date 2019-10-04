package c.b.a.c.b.a;

import android.graphics.Bitmap;
import android.os.Build;
import c.b.a.i.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: SizeConfigStrategy */
public class o implements l {

    /* renamed from: a  reason: collision with root package name */
    public static final Bitmap.Config[] f3879a;

    /* renamed from: b  reason: collision with root package name */
    public static final Bitmap.Config[] f3880b = f3879a;

    /* renamed from: c  reason: collision with root package name */
    public static final Bitmap.Config[] f3881c = {Bitmap.Config.RGB_565};

    /* renamed from: d  reason: collision with root package name */
    public static final Bitmap.Config[] f3882d = {Bitmap.Config.ARGB_4444};

    /* renamed from: e  reason: collision with root package name */
    public static final Bitmap.Config[] f3883e = {Bitmap.Config.ALPHA_8};

    /* renamed from: f  reason: collision with root package name */
    public final b f3884f = new b();

    /* renamed from: g  reason: collision with root package name */
    public final h<a, Bitmap> f3885g = new h<>();

    /* renamed from: h  reason: collision with root package name */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f3886h = new HashMap();

    /* compiled from: SizeConfigStrategy */
    static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        public final b f3887a;

        /* renamed from: b  reason: collision with root package name */
        public int f3888b;

        /* renamed from: c  reason: collision with root package name */
        public Bitmap.Config f3889c;

        public a(b bVar) {
            this.f3887a = bVar;
        }

        public void a(int i2, Bitmap.Config config) {
            this.f3888b = i2;
            this.f3889c = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f3888b != aVar.f3888b || !k.b((Object) this.f3889c, (Object) aVar.f3889c)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int i2 = this.f3888b * 31;
            Bitmap.Config config = this.f3889c;
            return i2 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return o.b(this.f3888b, this.f3889c);
        }

        public void a() {
            this.f3887a.a(this);
        }
    }

    /* compiled from: SizeConfigStrategy */
    static class b extends d<a> {
        public a a(int i2, Bitmap.Config config) {
            a aVar = (a) b();
            aVar.a(i2, config);
            return aVar;
        }

        public a a() {
            return new a(this);
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, configArr.length + 1);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f3879a = configArr;
    }

    public void a(Bitmap bitmap) {
        a a2 = this.f3884f.a(k.a(bitmap), bitmap.getConfig());
        this.f3885g.a(a2, bitmap);
        NavigableMap<Integer, Integer> b2 = b(bitmap.getConfig());
        Integer num = (Integer) b2.get(Integer.valueOf(a2.f3888b));
        Integer valueOf = Integer.valueOf(a2.f3888b);
        int i2 = 1;
        if (num != null) {
            i2 = 1 + num.intValue();
        }
        b2.put(valueOf, Integer.valueOf(i2));
    }

    public final NavigableMap<Integer, Integer> b(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f3886h.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f3886h.put(config, treeMap);
        return treeMap;
    }

    public String c(Bitmap bitmap) {
        return b(k.a(bitmap), bitmap.getConfig());
    }

    public Bitmap removeLast() {
        Bitmap a2 = this.f3885g.a();
        if (a2 != null) {
            a(Integer.valueOf(k.a(a2)), a2);
        }
        return a2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f3885g);
        sb.append(", sortedSizes=(");
        for (Map.Entry next : this.f3886h.entrySet()) {
            sb.append(next.getKey());
            sb.append('[');
            sb.append(next.getValue());
            sb.append("], ");
        }
        if (!this.f3886h.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }

    public String b(int i2, int i3, Bitmap.Config config) {
        return b(k.a(i2, i3, config), config);
    }

    public int b(Bitmap bitmap) {
        return k.a(bitmap);
    }

    public static String b(int i2, Bitmap.Config config) {
        return "[" + i2 + "](" + config + ")";
    }

    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        a a2 = a(k.a(i2, i3, config), config);
        Bitmap a3 = this.f3885g.a(a2);
        if (a3 != null) {
            a(Integer.valueOf(a2.f3888b), a3);
            a3.reconfigure(i2, i3, a3.getConfig() != null ? a3.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return a3;
    }

    public final a a(int i2, Bitmap.Config config) {
        a a2 = this.f3884f.a(i2, config);
        Bitmap.Config[] a3 = a(config);
        int length = a3.length;
        int i3 = 0;
        while (i3 < length) {
            Bitmap.Config config2 = a3[i3];
            Integer ceilingKey = b(config2).ceilingKey(Integer.valueOf(i2));
            if (ceilingKey == null || ceilingKey.intValue() > i2 * 8) {
                i3++;
            } else {
                if (ceilingKey.intValue() == i2) {
                    if (config2 == null) {
                        if (config == null) {
                            return a2;
                        }
                    } else if (config2.equals(config)) {
                        return a2;
                    }
                }
                this.f3884f.a(a2);
                return this.f3884f.a(ceilingKey.intValue(), config2);
            }
        }
        return a2;
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> b2 = b(bitmap.getConfig());
        Integer num2 = (Integer) b2.get(num);
        if (num2 == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + c(bitmap) + ", this: " + this);
        } else if (num2.intValue() == 1) {
            b2.remove(num);
        } else {
            b2.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    public static Bitmap.Config[] a(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return f3880b;
        }
        int i2 = n.f3878a[config.ordinal()];
        if (i2 == 1) {
            return f3879a;
        }
        if (i2 == 2) {
            return f3881c;
        }
        if (i2 == 3) {
            return f3882d;
        }
        if (i2 == 4) {
            return f3883e;
        }
        return new Bitmap.Config[]{config};
    }
}
