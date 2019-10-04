package b.C.a;

/* compiled from: SimpleSQLiteQuery */
public final class a implements e {

    /* renamed from: a  reason: collision with root package name */
    public final String f1051a;

    /* renamed from: b  reason: collision with root package name */
    public final Object[] f1052b;

    public a(String str, Object[] objArr) {
        this.f1051a = str;
        this.f1052b = objArr;
    }

    public String a() {
        return this.f1051a;
    }

    public void a(d dVar) {
        a(dVar, this.f1052b);
    }

    public static void a(d dVar, Object[] objArr) {
        if (objArr != null) {
            int length = objArr.length;
            int i2 = 0;
            while (i2 < length) {
                Object obj = objArr[i2];
                i2++;
                a(dVar, i2, obj);
            }
        }
    }

    public a(String str) {
        this(str, null);
    }

    public static void a(d dVar, int i2, Object obj) {
        if (obj == null) {
            dVar.a(i2);
        } else if (obj instanceof byte[]) {
            dVar.a(i2, (byte[]) obj);
        } else if (obj instanceof Float) {
            dVar.a(i2, (double) ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            dVar.a(i2, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            dVar.a(i2, ((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            dVar.a(i2, (long) ((Integer) obj).intValue());
        } else if (obj instanceof Short) {
            dVar.a(i2, (long) ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            dVar.a(i2, (long) ((Byte) obj).byteValue());
        } else if (obj instanceof String) {
            dVar.a(i2, (String) obj);
        } else if (obj instanceof Boolean) {
            dVar.a(i2, ((Boolean) obj).booleanValue() ? 1 : 0);
        } else {
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i2 + " Supported types: null, byte[], float, double, long, int, short, byte," + " string");
        }
    }
}
