package b.z;

import b.C.a.d;
import b.C.a.e;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: RoomSQLiteQuery */
public class x implements e, d {

    /* renamed from: a  reason: collision with root package name */
    public static final TreeMap<Integer, x> f3677a = new TreeMap<>();

    /* renamed from: b  reason: collision with root package name */
    public volatile String f3678b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f3679c;

    /* renamed from: d  reason: collision with root package name */
    public final double[] f3680d;

    /* renamed from: e  reason: collision with root package name */
    public final String[] f3681e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[][] f3682f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f3683g;

    /* renamed from: h  reason: collision with root package name */
    public final int f3684h;

    /* renamed from: i  reason: collision with root package name */
    public int f3685i;

    public x(int i2) {
        this.f3684h = i2;
        int i3 = i2 + 1;
        this.f3683g = new int[i3];
        this.f3679c = new long[i3];
        this.f3680d = new double[i3];
        this.f3681e = new String[i3];
        this.f3682f = new byte[i3][];
    }

    public static x a(String str, int i2) {
        synchronized (f3677a) {
            Map.Entry<Integer, x> ceilingEntry = f3677a.ceilingEntry(Integer.valueOf(i2));
            if (ceilingEntry != null) {
                f3677a.remove(ceilingEntry.getKey());
                x value = ceilingEntry.getValue();
                value.b(str, i2);
                return value;
            }
            x xVar = new x(i2);
            xVar.b(str, i2);
            return xVar;
        }
    }

    public void b(String str, int i2) {
        this.f3678b = str;
        this.f3685i = i2;
    }

    public void c() {
        synchronized (f3677a) {
            f3677a.put(Integer.valueOf(this.f3684h), this);
            b();
        }
    }

    public void close() {
    }

    public static void b() {
        if (f3677a.size() > 15) {
            int size = f3677a.size() - 10;
            Iterator<Integer> it = f3677a.descendingKeySet().iterator();
            while (true) {
                int i2 = size - 1;
                if (size > 0) {
                    it.next();
                    it.remove();
                    size = i2;
                } else {
                    return;
                }
            }
        }
    }

    public String a() {
        return this.f3678b;
    }

    public void a(d dVar) {
        for (int i2 = 1; i2 <= this.f3685i; i2++) {
            int i3 = this.f3683g[i2];
            if (i3 == 1) {
                dVar.a(i2);
            } else if (i3 == 2) {
                dVar.a(i2, this.f3679c[i2]);
            } else if (i3 == 3) {
                dVar.a(i2, this.f3680d[i2]);
            } else if (i3 == 4) {
                dVar.a(i2, this.f3681e[i2]);
            } else if (i3 == 5) {
                dVar.a(i2, this.f3682f[i2]);
            }
        }
    }

    public void a(int i2) {
        this.f3683g[i2] = 1;
    }

    public void a(int i2, long j2) {
        this.f3683g[i2] = 2;
        this.f3679c[i2] = j2;
    }

    public void a(int i2, double d2) {
        this.f3683g[i2] = 3;
        this.f3680d[i2] = d2;
    }

    public void a(int i2, String str) {
        this.f3683g[i2] = 4;
        this.f3681e[i2] = str;
    }

    public void a(int i2, byte[] bArr) {
        this.f3683g[i2] = 5;
        this.f3682f[i2] = bArr;
    }
}
