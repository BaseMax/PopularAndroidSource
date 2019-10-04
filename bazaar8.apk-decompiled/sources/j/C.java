package j;

import j.a.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: Headers */
public final class C {

    /* renamed from: a  reason: collision with root package name */
    public final String[] f15116a;

    /* compiled from: Headers */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<String> f15117a = new ArrayList(20);

        public a a(String str) {
            int indexOf = str.indexOf(":");
            if (indexOf != -1) {
                a(str.substring(0, indexOf).trim(), str.substring(indexOf + 1));
                return this;
            }
            throw new IllegalArgumentException("Unexpected header: " + str);
        }

        public a b(String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                b(str.substring(0, indexOf), str.substring(indexOf + 1));
                return this;
            } else if (str.startsWith(":")) {
                b("", str.substring(1));
                return this;
            } else {
                b("", str);
                return this;
            }
        }

        public a c(String str, String str2) {
            C.a(str);
            C.a(str2, str);
            d(str);
            b(str, str2);
            return this;
        }

        public a d(String str) {
            int i2 = 0;
            while (i2 < this.f15117a.size()) {
                if (str.equalsIgnoreCase(this.f15117a.get(i2))) {
                    this.f15117a.remove(i2);
                    this.f15117a.remove(i2);
                    i2 -= 2;
                }
                i2 += 2;
            }
            return this;
        }

        public a a(String str, String str2) {
            C.a(str);
            C.a(str2, str);
            b(str, str2);
            return this;
        }

        public String c(String str) {
            for (int size = this.f15117a.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.f15117a.get(size))) {
                    return this.f15117a.get(size + 1);
                }
            }
            return null;
        }

        public a b(String str, String str2) {
            this.f15117a.add(str);
            this.f15117a.add(str2.trim());
            return this;
        }

        public C a() {
            return new C(this);
        }
    }

    public C(a aVar) {
        List<String> list = aVar.f15117a;
        this.f15116a = (String[]) list.toArray(new String[list.size()]);
    }

    public String a(int i2) {
        return this.f15116a[i2 * 2];
    }

    public String b(String str) {
        return a(this.f15116a, str);
    }

    public List<String> c(String str) {
        int b2 = b();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < b2; i2++) {
            if (str.equalsIgnoreCase(a(i2))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i2));
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C) && Arrays.equals(((C) obj).f15116a, this.f15116a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f15116a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int b2 = b();
        for (int i2 = 0; i2 < b2; i2++) {
            sb.append(a(i2));
            sb.append(": ");
            sb.append(b(i2));
            sb.append("\n");
        }
        return sb.toString();
    }

    public a a() {
        a aVar = new a();
        Collections.addAll(aVar.f15117a, this.f15116a);
        return aVar;
    }

    public int b() {
        return this.f15116a.length / 2;
    }

    public C(String[] strArr) {
        this.f15116a = strArr;
    }

    public String b(int i2) {
        return this.f15116a[(i2 * 2) + 1];
    }

    public static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static C a(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("namesAndValues == null");
        } else if (strArr.length % 2 == 0) {
            String[] strArr2 = (String[]) strArr.clone();
            int i2 = 0;
            while (i2 < strArr2.length) {
                if (strArr2[i2] != null) {
                    strArr2[i2] = strArr2[i2].trim();
                    i2++;
                } else {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
            }
            for (int i3 = 0; i3 < strArr2.length; i3 += 2) {
                String str = strArr2[i3];
                String str2 = strArr2[i3 + 1];
                a(str);
                a(str2, str);
            }
            return new C(strArr2);
        } else {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
    }

    public static void a(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (!str.isEmpty()) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if (charAt <= ' ' || charAt >= 127) {
                    throw new IllegalArgumentException(e.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str));
                }
            }
        } else {
            throw new IllegalArgumentException("name is empty");
        }
    }

    public static void a(String str, String str2) {
        if (str != null) {
            int length = str.length();
            int i2 = 0;
            while (i2 < length) {
                char charAt = str.charAt(i2);
                if ((charAt > 31 || charAt == 9) && charAt < 127) {
                    i2++;
                } else {
                    throw new IllegalArgumentException(e.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str2, str));
                }
            }
            return;
        }
        throw new NullPointerException("value for name " + str2 + " == null");
    }
}
