package com.koushikdutta.async;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.a.g;
import com.koushikdutta.async.f.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class af {
    public static boolean SUPRESS_DEBUG_EXCEPTIONS = false;

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f4454a = (!af.class.desiredAssertionStatus());

    public static void emitAllData(n nVar, l lVar) {
        d dVar = null;
        while (!nVar.isPaused()) {
            dVar = nVar.getDataCallback();
            if (dVar == null) {
                break;
            }
            int remaining = lVar.remaining();
            if (remaining <= 0) {
                break;
            }
            dVar.onDataAvailable(nVar, lVar);
            if (remaining == lVar.remaining() && dVar == nVar.getDataCallback() && !nVar.isPaused()) {
                System.out.println("handler: ".concat(String.valueOf(dVar)));
                lVar.recycle();
                if (!SUPRESS_DEBUG_EXCEPTIONS) {
                    if (!f4454a) {
                        throw new AssertionError();
                    }
                    throw new RuntimeException("mDataHandler failed to consume data, yet remains the mDataHandler.");
                }
                return;
            }
        }
        if (lVar.remaining() != 0 && !nVar.isPaused()) {
            System.out.println("handler: ".concat(String.valueOf(dVar)));
            System.out.println("emitter: ".concat(String.valueOf(nVar)));
            lVar.recycle();
            if (!SUPRESS_DEBUG_EXCEPTIONS) {
                if (!f4454a) {
                    throw new AssertionError();
                }
                throw new RuntimeException("Not all data was consumed by Util.emitAllData");
            }
        }
    }

    public static void pump(InputStream inputStream, q qVar, a aVar) {
        pump(inputStream, 2147483647L, qVar, aVar);
    }

    public static void pump(InputStream inputStream, long j, q qVar, final a aVar) {
        AnonymousClass1 r6 = new a() {

            /* renamed from: a  reason: collision with root package name */
            boolean f4455a;

            public final void onCompleted(Exception exc) {
                if (!this.f4455a) {
                    this.f4455a = true;
                    aVar.onCompleted(exc);
                }
            }
        };
        final q qVar2 = qVar;
        final InputStream inputStream2 = inputStream;
        final long j2 = j;
        final AnonymousClass1 r5 = r6;
        AnonymousClass2 r0 = new g() {

            /* renamed from: a  reason: collision with root package name */
            int f4457a = 0;

            /* renamed from: b  reason: collision with root package name */
            l f4458b = new l();
            com.koushikdutta.async.e.a c = new com.koushikdutta.async.e.a();

            private void a() {
                qVar2.setClosedCallback(null);
                qVar2.setWriteableCallback(null);
                this.f4458b.recycle();
                com.koushikdutta.async.e.g.closeQuietly(inputStream2);
            }

            public final void onWriteable() {
                do {
                    try {
                        if (!this.f4458b.hasRemaining()) {
                            ByteBuffer allocate = this.c.allocate();
                            int read = inputStream2.read(allocate.array(), 0, (int) Math.min(j2 - ((long) this.f4457a), (long) allocate.capacity()));
                            if (read != -1) {
                                if (((long) this.f4457a) != j2) {
                                    this.c.track((long) read);
                                    this.f4457a += read;
                                    allocate.position(0);
                                    allocate.limit(read);
                                    this.f4458b.add(allocate);
                                }
                            }
                            a();
                            r5.onCompleted(null);
                            return;
                        }
                        qVar2.write(this.f4458b);
                    } catch (Exception e2) {
                        a();
                        r5.onCompleted(e2);
                        return;
                    }
                } while (!this.f4458b.hasRemaining());
            }
        };
        qVar.setWriteableCallback(r0);
        qVar.setClosedCallback(r6);
        r0.onWriteable();
    }

    public static void pump(final n nVar, final q qVar, final a aVar) {
        nVar.setDataCallback(new d() {
            public final void onDataAvailable(n nVar, l lVar) {
                qVar.write(lVar);
                if (lVar.remaining() > 0) {
                    nVar.pause();
                }
            }
        });
        qVar.setWriteableCallback(new g() {
            public final void onWriteable() {
                nVar.resume();
            }
        });
        final AnonymousClass5 r0 = new a() {

            /* renamed from: a  reason: collision with root package name */
            boolean f4461a;

            public final void onCompleted(Exception exc) {
                if (!this.f4461a) {
                    this.f4461a = true;
                    nVar.setDataCallback(null);
                    nVar.setEndCallback(null);
                    qVar.setClosedCallback(null);
                    qVar.setWriteableCallback(null);
                    aVar.onCompleted(exc);
                }
            }
        };
        nVar.setEndCallback(r0);
        qVar.setClosedCallback(new a() {
            public final void onCompleted(Exception exc) {
                if (exc == null) {
                    exc = new IOException("sink was closed before emitter ended");
                }
                r0.onCompleted(exc);
            }
        });
    }

    public static void stream(j jVar, j jVar2, a aVar) {
        pump((n) jVar, (q) jVar2, aVar);
        pump((n) jVar2, (q) jVar, aVar);
    }

    public static void pump(File file, q qVar, final a aVar) {
        if (file == null || qVar == null) {
            aVar.onCompleted(null);
            return;
        }
        try {
            final FileInputStream fileInputStream = new FileInputStream(file);
            pump((InputStream) fileInputStream, qVar, (a) new a() {
                public final void onCompleted(Exception exc) {
                    try {
                        fileInputStream.close();
                        aVar.onCompleted(exc);
                    } catch (IOException e) {
                        aVar.onCompleted(e);
                    }
                }
            });
        } catch (Exception e) {
            aVar.onCompleted(e);
        }
    }

    public static void writeAll(final q qVar, final l lVar, final a aVar) {
        AnonymousClass8 r0 = new g() {
            public final void onWriteable() {
                qVar.write(lVar);
                if (lVar.remaining() == 0 && aVar != null) {
                    qVar.setWriteableCallback(null);
                    aVar.onCompleted(null);
                }
            }
        };
        qVar.setWriteableCallback(r0);
        r0.onWriteable();
    }

    public static void writeAll(q qVar, byte[] bArr, a aVar) {
        ByteBuffer obtain = l.obtain(bArr.length);
        obtain.put(bArr);
        obtain.flip();
        l lVar = new l();
        lVar.add(obtain);
        writeAll(qVar, lVar, aVar);
    }

    public static <T extends j> T getWrappedSocket(T t, Class<T> cls) {
        if (cls.isInstance(t)) {
            return t;
        }
        while (t instanceof com.koushikdutta.async.f.a) {
            t = ((com.koushikdutta.async.f.a) t).getSocket();
            if (cls.isInstance(t)) {
                return t;
            }
        }
        return null;
    }

    public static n getWrappedDataEmitter(n nVar, Class cls) {
        if (cls.isInstance(nVar)) {
            return nVar;
        }
        while (nVar instanceof b) {
            nVar = ((com.koushikdutta.async.f.a) nVar).getSocket();
            if (cls.isInstance(nVar)) {
                return nVar;
            }
        }
        return null;
    }

    public static void end(n nVar, Exception exc) {
        if (nVar != null) {
            end(nVar.getEndCallback(), exc);
        }
    }

    public static void end(a aVar, Exception exc) {
        if (aVar != null) {
            aVar.onCompleted(exc);
        }
    }

    public static void writable(q qVar) {
        if (qVar != null) {
            writable(qVar.getWriteableCallback());
        }
    }

    public static void writable(g gVar) {
        if (gVar != null) {
            gVar.onWriteable();
        }
    }
}
