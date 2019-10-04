package i.a.c;

import h.e;
import h.f.a;
import h.f.a.b;
import h.f.b.j;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Result;
import kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1;
import kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$2;
import kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3;
import kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4;

/* compiled from: ExceptionsConstuctor.kt */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final int f14750a = b(Throwable.class, -1);

    /* renamed from: b  reason: collision with root package name */
    public static final ReentrantReadWriteLock f14751b = new ReentrantReadWriteLock();

    /* renamed from: c  reason: collision with root package name */
    public static final WeakHashMap<Class<? extends Throwable>, b<Throwable, Throwable>> f14752c = new WeakHashMap<>();

    /*  JADX ERROR: StackOverflow in pass: MarkFinallyVisitor
        jadx.core.utils.exceptions.JadxOverflowException: 
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    public static final <E extends java.lang.Throwable> E a(E r9) {
        /*
            java.lang.String r0 = "exception"
            h.f.b.j.b(r9, r0)
            boolean r0 = r9 instanceof i.a.A
            r1 = 0
            if (r0 == 0) goto L_0x002a
            kotlin.Result$a r0 = kotlin.Result.f15776a     // Catch:{ Throwable -> 0x0016 }
            i.a.A r9 = (i.a.A) r9     // Catch:{ Throwable -> 0x0016 }
            java.lang.Throwable r9 = r9.a()     // Catch:{ Throwable -> 0x0016 }
            kotlin.Result.a(r9)     // Catch:{ Throwable -> 0x0016 }
            goto L_0x0020
        L_0x0016:
            r9 = move-exception
            kotlin.Result$a r0 = kotlin.Result.f15776a
            java.lang.Object r9 = h.e.a((java.lang.Throwable) r9)
            kotlin.Result.a(r9)
        L_0x0020:
            boolean r0 = kotlin.Result.d(r9)
            if (r0 == 0) goto L_0x0027
            r9 = r1
        L_0x0027:
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            return r9
        L_0x002a:
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = f14751b
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r0 = r0.readLock()
            r0.lock()
            java.util.WeakHashMap<java.lang.Class<? extends java.lang.Throwable>, h.f.a.b<java.lang.Throwable, java.lang.Throwable>> r2 = f14752c     // Catch:{ all -> 0x0127 }
            java.lang.Class r3 = r9.getClass()     // Catch:{ all -> 0x0127 }
            java.lang.Object r2 = r2.get(r3)     // Catch:{ all -> 0x0127 }
            h.f.a.b r2 = (h.f.a.b) r2     // Catch:{ all -> 0x0127 }
            r0.unlock()
            if (r2 == 0) goto L_0x004b
            java.lang.Object r9 = r2.a(r9)
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            return r9
        L_0x004b:
            int r0 = f14750a
            java.lang.Class r2 = r9.getClass()
            r3 = 0
            int r2 = b(r2, r3)
            if (r0 == r2) goto L_0x00a0
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = f14751b
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r2 = r0.readLock()
            int r4 = r0.getWriteHoldCount()
            if (r4 != 0) goto L_0x0069
            int r4 = r0.getReadHoldCount()
            goto L_0x006a
        L_0x0069:
            r4 = 0
        L_0x006a:
            r5 = 0
        L_0x006b:
            if (r5 >= r4) goto L_0x0073
            r2.unlock()
            int r5 = r5 + 1
            goto L_0x006b
        L_0x0073:
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()
            r0.lock()
            java.util.WeakHashMap<java.lang.Class<? extends java.lang.Throwable>, h.f.a.b<java.lang.Throwable, java.lang.Throwable>> r5 = f14752c     // Catch:{ all -> 0x0093 }
            java.lang.Class r9 = r9.getClass()     // Catch:{ all -> 0x0093 }
            kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$4$1 r6 = kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$4$1.f15797a     // Catch:{ all -> 0x0093 }
            r5.put(r9, r6)     // Catch:{ all -> 0x0093 }
            h.h r9 = h.h.f14579a     // Catch:{ all -> 0x0093 }
        L_0x0087:
            if (r3 >= r4) goto L_0x008f
            r2.lock()
            int r3 = r3 + 1
            goto L_0x0087
        L_0x008f:
            r0.unlock()
            return r1
        L_0x0093:
            r9 = move-exception
        L_0x0094:
            if (r3 >= r4) goto L_0x009c
            r2.lock()
            int r3 = r3 + 1
            goto L_0x0094
        L_0x009c:
            r0.unlock()
            throw r9
        L_0x00a0:
            java.lang.Class r0 = r9.getClass()
            java.lang.reflect.Constructor[] r0 = r0.getConstructors()
            java.lang.String r2 = "exception.javaClass.constructors"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r2)
            i.a.c.f r2 = new i.a.c.f
            r2.<init>()
            java.util.List r0 = h.a.i.c((T[]) r0, r2)
            java.util.Iterator r0 = r0.iterator()
            r2 = r1
        L_0x00bb:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L_0x00d2
            java.lang.Object r2 = r0.next()
            java.lang.reflect.Constructor r2 = (java.lang.reflect.Constructor) r2
            java.lang.String r4 = "constructor"
            h.f.b.j.a((java.lang.Object) r2, (java.lang.String) r4)
            h.f.a.b r2 = a((java.lang.reflect.Constructor<?>) r2)
            if (r2 == 0) goto L_0x00bb
        L_0x00d2:
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = f14751b
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r4 = r0.readLock()
            int r5 = r0.getWriteHoldCount()
            if (r5 != 0) goto L_0x00e3
            int r5 = r0.getReadHoldCount()
            goto L_0x00e4
        L_0x00e3:
            r5 = 0
        L_0x00e4:
            r6 = 0
        L_0x00e5:
            if (r6 >= r5) goto L_0x00ed
            r4.unlock()
            int r6 = r6 + 1
            goto L_0x00e5
        L_0x00ed:
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()
            r0.lock()
            java.util.WeakHashMap<java.lang.Class<? extends java.lang.Throwable>, h.f.a.b<java.lang.Throwable, java.lang.Throwable>> r6 = f14752c     // Catch:{ all -> 0x011a }
            java.lang.Class r7 = r9.getClass()     // Catch:{ all -> 0x011a }
            if (r2 == 0) goto L_0x00fe
            r8 = r2
            goto L_0x0100
        L_0x00fe:
            kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$5$1 r8 = kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$5$1.f15798a     // Catch:{ all -> 0x011a }
        L_0x0100:
            r6.put(r7, r8)     // Catch:{ all -> 0x011a }
            h.h r6 = h.h.f14579a     // Catch:{ all -> 0x011a }
        L_0x0105:
            if (r3 >= r5) goto L_0x010d
            r4.lock()
            int r3 = r3 + 1
            goto L_0x0105
        L_0x010d:
            r0.unlock()
            if (r2 == 0) goto L_0x0119
            java.lang.Object r9 = r2.a(r9)
            r1 = r9
            java.lang.Throwable r1 = (java.lang.Throwable) r1
        L_0x0119:
            return r1
        L_0x011a:
            r9 = move-exception
        L_0x011b:
            if (r3 >= r5) goto L_0x0123
            r4.lock()
            int r3 = r3 + 1
            goto L_0x011b
        L_0x0123:
            r0.unlock()
            throw r9
        L_0x0127:
            r9 = move-exception
            r0.unlock()
            goto L_0x012d
        L_0x012c:
            throw r9
        L_0x012d:
            goto L_0x012c
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.c.g.a(java.lang.Throwable):java.lang.Throwable");
    }

    public static final int b(Class<?> cls, int i2) {
        Integer num;
        a.a(cls);
        try {
            Result.a aVar = Result.f15776a;
            num = Integer.valueOf(a(cls, 0, 1, null));
            Result.a(num);
        } catch (Throwable th) {
            Result.a aVar2 = Result.f15776a;
            num = e.a(th);
            Result.a(num);
        }
        Integer valueOf = Integer.valueOf(i2);
        if (Result.d(num)) {
            num = valueOf;
        }
        return ((Number) num).intValue();
    }

    public static final b<Throwable, Throwable> a(Constructor<?> constructor) {
        Class[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length == 0) {
            return new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4(constructor);
        }
        if (length == 1) {
            Class cls = parameterTypes[0];
            if (j.a((Object) cls, (Object) Throwable.class)) {
                return new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$2(constructor);
            }
            if (j.a((Object) cls, (Object) String.class)) {
                return new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3(constructor);
            }
            return null;
        } else if (length == 2 && j.a((Object) parameterTypes[0], (Object) String.class) && j.a((Object) parameterTypes[1], (Object) Throwable.class)) {
            return new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1(constructor);
        } else {
            return null;
        }
    }

    public static /* synthetic */ int a(Class cls, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = 0;
        }
        return a(cls, i2);
    }

    public static final int a(Class<?> cls, int i2) {
        Class<? super Object> superclass;
        do {
            Field[] declaredFields = r6.getDeclaredFields();
            j.a((Object) declaredFields, "declaredFields");
            int i3 = 0;
            Class<? super Object> cls2 = cls;
            for (Field a2 : declaredFields) {
                j.a((Object) a2, "it");
                if (!Modifier.isStatic(a2.getModifiers())) {
                    i3++;
                }
            }
            i2 += i3;
            superclass = cls2.getSuperclass();
            cls2 = superclass;
        } while (superclass != null);
        return i2;
    }
}
