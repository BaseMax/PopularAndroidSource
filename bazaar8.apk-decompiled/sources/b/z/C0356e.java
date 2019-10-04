package b.z;

import androidx.room.RoomDatabase;
import b.C.a.f;

/* renamed from: b.z.e  reason: case insensitive filesystem */
/* compiled from: EntityInsertionAdapter */
public abstract class C0356e<T> extends C {
    public C0356e(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    public abstract void a(f fVar, T t);

    public final void a(T t) {
        f a2 = a();
        try {
            a(a2, t);
            a2.m();
        } finally {
            a(a2);
        }
    }

    public final void a(Iterable<T> iterable) {
        f a2 = a();
        try {
            for (T a3 : iterable) {
                a(a2, a3);
                a2.m();
            }
        } finally {
            a(a2);
        }
    }
}
