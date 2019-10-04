package com.koushikdutta.async.http.spdy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

interface b {

    public static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        long f4780a = 0;

        public final void clear() {
            this.f4780a = 0;
        }

        public final void set(int i) {
            this.f4780a |= 1 << a(i);
        }

        public final void toggle(int i) {
            this.f4780a ^= 1 << a(i);
        }

        public final boolean get(int i) {
            return ((this.f4780a >> a(i)) & 1) == 1;
        }

        public final void shiftLeft(int i) {
            this.f4780a <<= a(i);
        }

        public final String toString() {
            return Long.toBinaryString(this.f4780a);
        }

        public final b toVariableCapacity() {
            return new C0091b(this, (byte) 0);
        }

        private static int a(int i) {
            if (i >= 0 && i <= 63) {
                return i;
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "input must be between 0 and 63: %s", new Object[]{Integer.valueOf(i)}));
        }
    }

    /* renamed from: com.koushikdutta.async.http.spdy.b$b  reason: collision with other inner class name */
    public static final class C0091b implements b {

        /* renamed from: a  reason: collision with root package name */
        long[] f4781a;

        /* renamed from: b  reason: collision with root package name */
        private int f4782b;

        /* synthetic */ C0091b(a aVar, byte b2) {
            this(aVar);
        }

        public C0091b() {
            this.f4781a = new long[1];
        }

        private C0091b(a aVar) {
            this.f4781a = new long[]{aVar.f4780a, 0};
        }

        private int a(int i) {
            int i2 = (i + this.f4782b) / 64;
            long[] jArr = this.f4781a;
            if (i2 > jArr.length - 1) {
                long[] jArr2 = new long[(i2 + 1)];
                if (jArr != null) {
                    System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
                }
                this.f4781a = jArr2;
            }
            return i2;
        }

        private int b(int i) {
            return (i + this.f4782b) % 64;
        }

        public final void clear() {
            Arrays.fill(this.f4781a, 0);
        }

        public final void set(int i) {
            c(i);
            int a2 = a(i);
            long[] jArr = this.f4781a;
            jArr[a2] = jArr[a2] | (1 << b(i));
        }

        public final void toggle(int i) {
            c(i);
            int a2 = a(i);
            long[] jArr = this.f4781a;
            jArr[a2] = jArr[a2] ^ (1 << b(i));
        }

        public final boolean get(int i) {
            c(i);
            return (this.f4781a[a(i)] & (1 << b(i))) != 0;
        }

        public final void shiftLeft(int i) {
            this.f4782b -= c(i);
            int i2 = this.f4782b;
            if (i2 < 0) {
                int i3 = (i2 / -64) + 1;
                long[] jArr = this.f4781a;
                long[] jArr2 = new long[(jArr.length + i3)];
                System.arraycopy(jArr, 0, jArr2, i3, jArr.length);
                this.f4781a = jArr2;
                this.f4782b = (this.f4782b % 64) + 64;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("{");
            List<Integer> a2 = a();
            int size = a2.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(a2.get(i));
            }
            sb.append('}');
            return sb.toString();
        }

        private List<Integer> a() {
            ArrayList arrayList = new ArrayList();
            int length = (this.f4781a.length * 64) - this.f4782b;
            for (int i = 0; i < length; i++) {
                if (get(i)) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            return arrayList;
        }

        private static int c(int i) {
            if (i >= 0) {
                return i;
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "input must be a positive number: %s", new Object[]{Integer.valueOf(i)}));
        }
    }

    void clear();

    boolean get(int i);

    void set(int i);

    void shiftLeft(int i);

    void toggle(int i);
}
