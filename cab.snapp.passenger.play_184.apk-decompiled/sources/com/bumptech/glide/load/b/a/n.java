package com.bumptech.glide.load.b.a;

import android.graphics.Bitmap;
import android.os.Build;
import com.bumptech.glide.g.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

public final class n implements l {

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.Config[] f2140a;

    /* renamed from: b  reason: collision with root package name */
    private static final Bitmap.Config[] f2141b;
    private static final Bitmap.Config[] c = {Bitmap.Config.RGB_565};
    private static final Bitmap.Config[] d = {Bitmap.Config.ARGB_4444};
    private static final Bitmap.Config[] e = {Bitmap.Config.ALPHA_8};
    private final b f = new b();
    private final h<a, Bitmap> g = new h<>();
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> h = new HashMap();

    /* renamed from: com.bumptech.glide.load.b.a.n$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2142a = new int[Bitmap.Config.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                android.graphics.Bitmap$Config[] r0 = android.graphics.Bitmap.Config.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f2142a = r0
                int[] r0 = f2142a     // Catch:{ NoSuchFieldError -> 0x0014 }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f2142a     // Catch:{ NoSuchFieldError -> 0x001f }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.RGB_565     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f2142a     // Catch:{ NoSuchFieldError -> 0x002a }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_4444     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f2142a     // Catch:{ NoSuchFieldError -> 0x0035 }
                android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ALPHA_8     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.a.n.AnonymousClass1.<clinit>():void");
        }
    }

    static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        int f2143a;

        /* renamed from: b  reason: collision with root package name */
        private final b f2144b;
        private Bitmap.Config c;

        public a(b bVar) {
            this.f2144b = bVar;
        }

        public final void init(int i, Bitmap.Config config) {
            this.f2143a = i;
            this.c = config;
        }

        public final void offer() {
            this.f2144b.offer(this);
        }

        public final String toString() {
            return n.a(this.f2143a, this.c);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f2143a == aVar.f2143a && k.bothNullOrEqual(this.c, aVar.c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = this.f2143a * 31;
            Bitmap.Config config = this.c;
            return i + (config != null ? config.hashCode() : 0);
        }
    }

    static class b extends d<a> {
        b() {
        }

        public final a get(int i, Bitmap.Config config) {
            a aVar = (a) b();
            aVar.init(i, config);
            return aVar;
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ m a() {
            return new a(this);
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f2140a = configArr;
        f2141b = configArr;
    }

    public final void put(Bitmap bitmap) {
        a aVar = this.f.get(k.getBitmapByteSize(bitmap), bitmap.getConfig());
        this.g.put(aVar, bitmap);
        NavigableMap<Integer, Integer> a2 = a(bitmap.getConfig());
        Integer num = (Integer) a2.get(Integer.valueOf(aVar.f2143a));
        Integer valueOf = Integer.valueOf(aVar.f2143a);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        a2.put(valueOf, Integer.valueOf(i));
    }

    public final Bitmap get(int i, int i2, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int bitmapByteSize = k.getBitmapByteSize(i, i2, config);
        a aVar = this.f.get(bitmapByteSize, config);
        int i3 = 0;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i4 = AnonymousClass1.f2142a[config.ordinal()];
            if (i4 == 1) {
                configArr = f2140a;
            } else if (i4 == 2) {
                configArr = c;
            } else if (i4 != 3) {
                configArr = i4 != 4 ? new Bitmap.Config[]{config} : e;
            } else {
                configArr = d;
            }
        } else {
            configArr = f2141b;
        }
        int length = configArr.length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            Bitmap.Config config2 = configArr[i3];
            Integer ceilingKey = a(config2).ceilingKey(Integer.valueOf(bitmapByteSize));
            if (ceilingKey == null || ceilingKey.intValue() > bitmapByteSize * 8) {
                i3++;
            } else if (ceilingKey.intValue() != bitmapByteSize || (config2 != null ? !config2.equals(config) : config != null)) {
                this.f.offer(aVar);
                aVar = this.f.get(ceilingKey.intValue(), config2);
            }
        }
        Bitmap bitmap = this.g.get(aVar);
        if (bitmap != null) {
            a(Integer.valueOf(aVar.f2143a), bitmap);
            bitmap.reconfigure(i, i2, config);
        }
        return bitmap;
    }

    public final Bitmap removeLast() {
        Bitmap removeLast = this.g.removeLast();
        if (removeLast != null) {
            a(Integer.valueOf(k.getBitmapByteSize(removeLast)), removeLast);
        }
        return removeLast;
    }

    private void a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> a2 = a(bitmap.getConfig());
        Integer num2 = (Integer) a2.get(num);
        if (num2 == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + logBitmap(bitmap) + ", this: " + this);
        } else if (num2.intValue() == 1) {
            a2.remove(num);
        } else {
            a2.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    private NavigableMap<Integer, Integer> a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.h.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.h.put(config, treeMap);
        return treeMap;
    }

    public final String logBitmap(Bitmap bitmap) {
        return a(k.getBitmapByteSize(bitmap), bitmap.getConfig());
    }

    public final String logBitmap(int i, int i2, Bitmap.Config config) {
        return a(k.getBitmapByteSize(i, i2, config), config);
    }

    public final int getSize(Bitmap bitmap) {
        return k.getBitmapByteSize(bitmap);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SizeConfigStrategy{groupedMap=");
        sb.append(this.g);
        sb.append(", sortedSizes=(");
        for (Map.Entry next : this.h.entrySet()) {
            sb.append(next.getKey());
            sb.append('[');
            sb.append(next.getValue());
            sb.append("], ");
        }
        if (!this.h.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }

    static String a(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }
}
