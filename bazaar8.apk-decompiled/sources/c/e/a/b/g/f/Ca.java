package c.e.a.b.g.f;

import c.e.a.b.g.f.Ca;
import c.e.a.b.g.f.Da;
import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzeg;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class Ca<MessageType extends Ca<MessageType, BuilderType>, BuilderType extends Da<MessageType, BuilderType>> implements Sb {
    public static boolean zzabn = false;
    public int zzabm = 0;

    public void a(int i2) {
        throw new UnsupportedOperationException();
    }

    public final zzdp f() {
        try {
            Ra f2 = zzdp.f(d());
            a(f2.b());
            return f2.a();
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    public final byte[] g() {
        try {
            byte[] bArr = new byte[d()];
            zzeg a2 = zzeg.a(bArr);
            a(a2);
            a2.c();
            return bArr;
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    public int h() {
        throw new UnsupportedOperationException();
    }

    public static <T> void a(Iterable<T> iterable, List<? super T> list) {
        C0864qb.a(iterable);
        if (iterable instanceof Cb) {
            List<?> v = ((Cb) iterable).v();
            Cb cb = (Cb) list;
            int size = list.size();
            for (Object next : v) {
                if (next == null) {
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(cb.size() - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size2 = cb.size() - 1; size2 >= size; size2--) {
                        cb.remove(size2);
                    }
                    throw new NullPointerException(sb2);
                } else if (next instanceof zzdp) {
                    cb.a((zzdp) next);
                } else {
                    cb.add((String) next);
                }
            }
        } else if (iterable instanceof C0809cc) {
            list.addAll((Collection) iterable);
        } else {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size3 = list.size();
            for (T next2 : iterable) {
                if (next2 == null) {
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(list.size() - size3);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    for (int size4 = list.size() - 1; size4 >= size3; size4--) {
                        list.remove(size4);
                    }
                    throw new NullPointerException(sb4);
                }
                list.add(next2);
            }
        }
    }
}
