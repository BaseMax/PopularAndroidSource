package io.reactivex.observers;

import io.reactivex.b.c;
import io.reactivex.c.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.util.h;
import io.reactivex.internal.util.q;
import io.reactivex.observers.BaseTestConsumer;
import io.reactivex.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class BaseTestConsumer<T, U extends BaseTestConsumer<T, U>> implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final CountDownLatch f8668a = new CountDownLatch(1);

    /* renamed from: b  reason: collision with root package name */
    protected final List<T> f8669b = new q();
    protected final List<Throwable> c = new q();
    protected long d;
    protected Thread e;
    protected boolean f;
    protected int g;
    protected int h;
    protected CharSequence i;
    protected boolean j;

    public enum TestWaitStrategy implements Runnable {
        ;

        public abstract void run();

        static void a(int i) {
            try {
                Thread.sleep((long) i);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public abstract U assertNotSubscribed();

    public abstract U assertSubscribed();

    public final Thread lastThread() {
        return this.e;
    }

    public final List<T> values() {
        return this.f8669b;
    }

    public final List<Throwable> errors() {
        return this.c;
    }

    public final long completions() {
        return this.d;
    }

    public final boolean isTerminated() {
        return this.f8668a.getCount() == 0;
    }

    public final int valueCount() {
        return this.f8669b.size();
    }

    public final int errorCount() {
        return this.c.size();
    }

    /* access modifiers changed from: protected */
    public final AssertionError a(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 64);
        sb.append(str);
        sb.append(" (latch = ");
        sb.append(this.f8668a.getCount());
        sb.append(", values = ");
        sb.append(this.f8669b.size());
        sb.append(", errors = ");
        sb.append(this.c.size());
        sb.append(", completions = ");
        sb.append(this.d);
        if (this.j) {
            sb.append(", timeout!");
        }
        if (isDisposed()) {
            sb.append(", disposed!");
        }
        CharSequence charSequence = this.i;
        if (charSequence != null) {
            sb.append(", tag = ");
            sb.append(charSequence);
        }
        sb.append(')');
        AssertionError assertionError = new AssertionError(sb.toString());
        if (!this.c.isEmpty()) {
            if (this.c.size() == 1) {
                assertionError.initCause(this.c.get(0));
            } else {
                assertionError.initCause(new a((Iterable<? extends Throwable>) this.c));
            }
        }
        return assertionError;
    }

    public final U await() throws InterruptedException {
        if (this.f8668a.getCount() == 0) {
            return this;
        }
        this.f8668a.await();
        return this;
    }

    public final boolean await(long j2, TimeUnit timeUnit) throws InterruptedException {
        boolean z = this.f8668a.getCount() == 0 || this.f8668a.await(j2, timeUnit);
        this.j = !z;
        return z;
    }

    public final U assertComplete() {
        long j2 = this.d;
        if (j2 == 0) {
            throw a("Not completed");
        } else if (j2 <= 1) {
            return this;
        } else {
            throw a("Multiple completions: ".concat(String.valueOf(j2)));
        }
    }

    public final U assertNotComplete() {
        long j2 = this.d;
        if (j2 == 1) {
            throw a("Completed!");
        } else if (j2 <= 1) {
            return this;
        } else {
            throw a("Multiple completions: ".concat(String.valueOf(j2)));
        }
    }

    public final U assertNoErrors() {
        if (this.c.size() == 0) {
            return this;
        }
        throw a("Error(s) present: " + this.c);
    }

    public final U assertError(Throwable th) {
        return assertError((io.reactivex.e.q<Throwable>) io.reactivex.internal.a.a.equalsWith(th));
    }

    public final U assertError(Class<? extends Throwable> cls) {
        return assertError((io.reactivex.e.q<Throwable>) io.reactivex.internal.a.a.isInstanceOf(cls));
    }

    public final U assertError(io.reactivex.e.q<Throwable> qVar) {
        int size = this.c.size();
        if (size != 0) {
            boolean z = false;
            Iterator<Throwable> it = this.c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                try {
                    if (qVar.test(it.next())) {
                        z = true;
                        break;
                    }
                } catch (Exception e2) {
                    throw h.wrapOrThrow(e2);
                }
            }
            if (!z) {
                throw a("Error not present");
            } else if (size == 1) {
                return this;
            } else {
                throw a("Error present but other errors as well");
            }
        } else {
            throw a("No errors");
        }
    }

    public final U assertValue(T t) {
        if (this.f8669b.size() == 1) {
            T t2 = this.f8669b.get(0);
            if (b.equals(t, t2)) {
                return this;
            }
            throw a("expected: " + valueAndClass(t) + " but was: " + valueAndClass(t2));
        }
        throw a("expected: " + valueAndClass(t) + " but was: " + this.f8669b);
    }

    public final U assertNever(T t) {
        int size = this.f8669b.size();
        int i2 = 0;
        while (i2 < size) {
            if (!b.equals(this.f8669b.get(i2), t)) {
                i2++;
            } else {
                throw a("Value at position " + i2 + " is equal to " + valueAndClass(t) + "; Expected them to be different");
            }
        }
        return this;
    }

    public final U assertValue(io.reactivex.e.q<T> qVar) {
        assertValueAt(0, qVar);
        if (this.f8669b.size() <= 1) {
            return this;
        }
        throw a("Value present but other values as well");
    }

    public final U assertNever(io.reactivex.e.q<? super T> qVar) {
        int size = this.f8669b.size();
        int i2 = 0;
        while (i2 < size) {
            try {
                if (!qVar.test(this.f8669b.get(i2))) {
                    i2++;
                } else {
                    throw a("Value at position " + i2 + " matches predicate " + qVar.toString() + ", which was not expected.");
                }
            } catch (Exception e2) {
                throw h.wrapOrThrow(e2);
            }
        }
        return this;
    }

    public final U assertValueAt(int i2, T t) {
        int size = this.f8669b.size();
        if (size == 0) {
            throw a("No values");
        } else if (i2 < size) {
            T t2 = this.f8669b.get(i2);
            if (b.equals(t, t2)) {
                return this;
            }
            throw a("expected: " + valueAndClass(t) + " but was: " + valueAndClass(t2));
        } else {
            throw a("Invalid index: ".concat(String.valueOf(i2)));
        }
    }

    public final U assertValueAt(int i2, io.reactivex.e.q<T> qVar) {
        if (this.f8669b.size() == 0) {
            throw a("No values");
        } else if (i2 < this.f8669b.size()) {
            try {
                if (qVar.test(this.f8669b.get(i2))) {
                    return this;
                }
                throw a("Value not present");
            } catch (Exception e2) {
                throw h.wrapOrThrow(e2);
            }
        } else {
            throw a("Invalid index: ".concat(String.valueOf(i2)));
        }
    }

    public static String valueAndClass(Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj + " (class: " + obj.getClass().getSimpleName() + ")";
    }

    public final U assertValueCount(int i2) {
        int size = this.f8669b.size();
        if (size == i2) {
            return this;
        }
        throw a("Value counts differ; expected: " + i2 + " but was: " + size);
    }

    public final U assertNoValues() {
        return assertValueCount(0);
    }

    public final U assertValues(T... tArr) {
        int size = this.f8669b.size();
        if (size == tArr.length) {
            int i2 = 0;
            while (i2 < size) {
                T t = this.f8669b.get(i2);
                T t2 = tArr[i2];
                if (b.equals(t2, t)) {
                    i2++;
                } else {
                    throw a("Values at position " + i2 + " differ; expected: " + valueAndClass(t2) + " but was: " + valueAndClass(t));
                }
            }
            return this;
        }
        throw a("Value count differs; expected: " + tArr.length + " " + Arrays.toString(tArr) + " but was: " + size + " " + this.f8669b);
    }

    public final U assertValuesOnly(T... tArr) {
        return assertSubscribed().assertValues(tArr).assertNoErrors().assertNotComplete();
    }

    public final U assertValueSet(Collection<? extends T> collection) {
        if (collection.isEmpty()) {
            assertNoValues();
            return this;
        }
        for (T next : this.f8669b) {
            if (!collection.contains(next)) {
                throw a("Value not in the expected collection: " + valueAndClass(next));
            }
        }
        return this;
    }

    public final U assertValueSetOnly(Collection<? extends T> collection) {
        return assertSubscribed().assertValueSet(collection).assertNoErrors().assertNotComplete();
    }

    public final U assertValueSequence(Iterable<? extends T> iterable) {
        boolean hasNext;
        boolean hasNext2;
        Iterator<T> it = this.f8669b.iterator();
        Iterator<? extends T> it2 = iterable.iterator();
        int i2 = 0;
        while (true) {
            hasNext = it2.hasNext();
            hasNext2 = it.hasNext();
            if (hasNext2 && hasNext) {
                Object next = it2.next();
                T next2 = it.next();
                if (b.equals(next, next2)) {
                    i2++;
                } else {
                    throw a("Values at position " + i2 + " differ; expected: " + valueAndClass(next) + " but was: " + valueAndClass(next2));
                }
            }
        }
        if (hasNext2) {
            throw a("More values received than expected (" + i2 + ")");
        } else if (!hasNext) {
            return this;
        } else {
            throw a("Fewer values received than expected (" + i2 + ")");
        }
    }

    public final U assertValueSequenceOnly(Iterable<? extends T> iterable) {
        return assertSubscribed().assertValueSequence(iterable).assertNoErrors().assertNotComplete();
    }

    public final U assertTerminated() {
        if (this.f8668a.getCount() == 0) {
            long j2 = this.d;
            if (j2 <= 1) {
                int size = this.c.size();
                if (size > 1) {
                    throw a("Terminated with multiple errors: ".concat(String.valueOf(size)));
                } else if (j2 == 0 || size == 0) {
                    return this;
                } else {
                    throw a("Terminated with multiple completions and errors: ".concat(String.valueOf(j2)));
                }
            } else {
                throw a("Terminated with multiple completions: ".concat(String.valueOf(j2)));
            }
        } else {
            throw a("Subscriber still running!");
        }
    }

    public final U assertNotTerminated() {
        if (this.f8668a.getCount() != 0) {
            return this;
        }
        throw a("Subscriber terminated!");
    }

    public final boolean awaitTerminalEvent() {
        try {
            await();
            return true;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final boolean awaitTerminalEvent(long j2, TimeUnit timeUnit) {
        try {
            return await(j2, timeUnit);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    public final U assertErrorMessage(String str) {
        int size = this.c.size();
        if (size == 0) {
            throw a("No errors");
        } else if (size == 1) {
            String message = this.c.get(0).getMessage();
            if (b.equals(str, message)) {
                return this;
            }
            throw a("Error message differs; exptected: " + str + " but was: " + message);
        } else {
            throw a("Multiple errors");
        }
    }

    public final List<List<Object>> getEvents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(values());
        arrayList.add(errors());
        ArrayList arrayList2 = new ArrayList();
        for (long j2 = 0; j2 < this.d; j2++) {
            arrayList2.add(y.createOnComplete());
        }
        arrayList.add(arrayList2);
        return arrayList;
    }

    public final U assertResult(T... tArr) {
        return assertSubscribed().assertValues(tArr).assertNoErrors().assertComplete();
    }

    public final U assertFailure(Class<? extends Throwable> cls, T... tArr) {
        return assertSubscribed().assertValues(tArr).assertError(cls).assertNotComplete();
    }

    public final U assertFailure(io.reactivex.e.q<Throwable> qVar, T... tArr) {
        return assertSubscribed().assertValues(tArr).assertError(qVar).assertNotComplete();
    }

    public final U assertFailureAndMessage(Class<? extends Throwable> cls, String str, T... tArr) {
        return assertSubscribed().assertValues(tArr).assertError(cls).assertErrorMessage(str).assertNotComplete();
    }

    public final U awaitDone(long j2, TimeUnit timeUnit) {
        try {
            if (!this.f8668a.await(j2, timeUnit)) {
                this.j = true;
                dispose();
            }
            return this;
        } catch (InterruptedException e2) {
            dispose();
            throw h.wrapOrThrow(e2);
        }
    }

    public final U assertEmpty() {
        return assertSubscribed().assertNoValues().assertNoErrors().assertNotComplete();
    }

    public final U withTag(CharSequence charSequence) {
        this.i = charSequence;
        return this;
    }

    public final U awaitCount(int i2) {
        return awaitCount(i2, TestWaitStrategy.SLEEP_10MS, 5000);
    }

    public final U awaitCount(int i2, Runnable runnable) {
        return awaitCount(i2, runnable, 5000);
    }

    public final U awaitCount(int i2, Runnable runnable, long j2) {
        long currentTimeMillis = System.currentTimeMillis();
        while (true) {
            if (j2 <= 0 || System.currentTimeMillis() - currentTimeMillis < j2) {
                if (this.f8668a.getCount() == 0 || this.f8669b.size() >= i2) {
                    break;
                }
                runnable.run();
            } else {
                this.j = true;
                break;
            }
        }
        return this;
    }

    public final boolean isTimeout() {
        return this.j;
    }

    public final U clearTimeout() {
        this.j = false;
        return this;
    }

    public final U assertTimeout() {
        if (this.j) {
            return this;
        }
        throw a("No timeout?!");
    }

    public final U assertNoTimeout() {
        if (!this.j) {
            return this;
        }
        throw a("Timeout?!");
    }
}
