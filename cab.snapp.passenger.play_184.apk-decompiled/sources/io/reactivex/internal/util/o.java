package io.reactivex.internal.util;

import io.reactivex.ag;
import io.reactivex.e.e;
import io.reactivex.internal.b.i;
import io.reactivex.internal.b.j;
import io.reactivex.internal.d.b;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class o {
    private o() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> void drainMaxLoop(i<T> iVar, c<? super U> cVar, boolean z, io.reactivex.b.c cVar2, n<T, U> nVar) {
        int i = 1;
        while (true) {
            boolean done = nVar.done();
            T poll = iVar.poll();
            boolean z2 = poll == null;
            if (checkTerminated(done, z2, cVar, z, iVar, nVar)) {
                if (cVar2 != null) {
                    cVar2.dispose();
                }
                return;
            } else if (!z2) {
                long requested = nVar.requested();
                if (requested == 0) {
                    iVar.clear();
                    if (cVar2 != null) {
                        cVar2.dispose();
                    }
                    cVar.onError(new io.reactivex.c.c("Could not emit value due to lack of requests."));
                    return;
                } else if (nVar.accept(cVar, poll) && requested != Long.MAX_VALUE) {
                    nVar.produced(1);
                }
            } else {
                i = nVar.leave(-i);
                if (i == 0) {
                    return;
                }
            }
        }
    }

    public static <T, U> boolean checkTerminated(boolean z, boolean z2, c<?> cVar, boolean z3, j<?> jVar, n<T, U> nVar) {
        if (nVar.cancelled()) {
            jVar.clear();
            return true;
        }
        if (z) {
            if (!z3) {
                Throwable error = nVar.error();
                if (error != null) {
                    jVar.clear();
                    cVar.onError(error);
                    return true;
                } else if (z2) {
                    cVar.onComplete();
                    return true;
                }
            } else if (z2) {
                Throwable error2 = nVar.error();
                if (error2 != null) {
                    cVar.onError(error2);
                } else {
                    cVar.onComplete();
                }
                return true;
            }
        }
        return false;
    }

    public static <T, U> void drainLoop(i<T> iVar, ag<? super U> agVar, boolean z, io.reactivex.b.c cVar, k<T, U> kVar) {
        int i = 1;
        while (!checkTerminated(kVar.done(), iVar.isEmpty(), agVar, z, iVar, cVar, kVar)) {
            while (true) {
                boolean done = kVar.done();
                T poll = iVar.poll();
                boolean z2 = poll == null;
                if (!checkTerminated(done, z2, agVar, z, iVar, cVar, kVar)) {
                    if (!z2) {
                        kVar.accept(agVar, poll);
                    } else {
                        i = kVar.leave(-i);
                        if (i == 0) {
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    public static <T, U> boolean checkTerminated(boolean z, boolean z2, ag<?> agVar, boolean z3, j<?> jVar, io.reactivex.b.c cVar, k<T, U> kVar) {
        if (kVar.cancelled()) {
            jVar.clear();
            cVar.dispose();
            return true;
        }
        if (z) {
            if (!z3) {
                Throwable error = kVar.error();
                if (error != null) {
                    jVar.clear();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    agVar.onError(error);
                    return true;
                } else if (z2) {
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    agVar.onComplete();
                    return true;
                }
            } else if (z2) {
                if (cVar != null) {
                    cVar.dispose();
                }
                Throwable error2 = kVar.error();
                if (error2 != null) {
                    agVar.onError(error2);
                } else {
                    agVar.onComplete();
                }
                return true;
            }
        }
        return false;
    }

    public static <T> j<T> createQueue(int i) {
        if (i < 0) {
            return new io.reactivex.internal.d.c(-i);
        }
        return new b(i);
    }

    public static void request(d dVar, int i) {
        dVar.request(i < 0 ? Long.MAX_VALUE : (long) i);
    }

    public static <T> boolean postCompleteRequest(long j, c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, e eVar) {
        long j2;
        long j3 = j;
        do {
            j2 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j2, c.addCap(Long.MAX_VALUE & j2, j) | (j2 & Long.MIN_VALUE)));
        if (j2 != Long.MIN_VALUE) {
            return false;
        }
        a(j3 | Long.MIN_VALUE, cVar, queue, atomicLong, eVar);
        return true;
    }

    private static boolean a(e eVar) {
        try {
            return eVar.getAsBoolean();
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            return true;
        }
    }

    private static <T> boolean a(long j, c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, e eVar) {
        long j2 = j & Long.MIN_VALUE;
        while (true) {
            if (j2 != j) {
                if (a(eVar)) {
                    return true;
                }
                T poll = queue.poll();
                if (poll == null) {
                    cVar.onComplete();
                    return true;
                }
                cVar.onNext(poll);
                j2++;
            } else if (a(eVar)) {
                return true;
            } else {
                if (queue.isEmpty()) {
                    cVar.onComplete();
                    return true;
                }
                j = atomicLong.get();
                if (j == j2) {
                    long addAndGet = atomicLong.addAndGet(-(j2 & Long.MAX_VALUE));
                    if ((Long.MAX_VALUE & addAndGet) == 0) {
                        return false;
                    }
                    j = addAndGet;
                    j2 = addAndGet & Long.MIN_VALUE;
                } else {
                    continue;
                }
            }
        }
    }

    public static <T> void postComplete(c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, e eVar) {
        long j;
        long j2;
        if (queue.isEmpty()) {
            cVar.onComplete();
        } else if (!a(atomicLong.get(), cVar, queue, atomicLong, eVar)) {
            do {
                j = atomicLong.get();
                if ((j & Long.MIN_VALUE) == 0) {
                    j2 = j | Long.MIN_VALUE;
                } else {
                    return;
                }
            } while (!atomicLong.compareAndSet(j, j2));
            if (j != 0) {
                a(j2, cVar, queue, atomicLong, eVar);
            }
        }
    }
}
