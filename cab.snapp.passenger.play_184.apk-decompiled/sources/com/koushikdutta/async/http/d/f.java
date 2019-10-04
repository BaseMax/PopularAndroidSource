package com.koushikdutta.async.http.d;

import com.koushikdutta.async.a.d;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.z;
import com.pusher.java_websocket.drafts.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class f extends g {
    boolean d = true;
    protected CRC32 e = new CRC32();

    public static int unsignedToBytes(byte b2) {
        return b2 & c.END_OF_FRAME;
    }

    static short a(byte[] bArr, ByteOrder byteOrder) {
        int i;
        byte b2;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            i = bArr[0] << 8;
            b2 = bArr[1];
        } else {
            i = bArr[1] << 8;
            b2 = bArr[0];
        }
        return (short) ((b2 & c.END_OF_FRAME) | i);
    }

    public f() {
        super(new Inflater(true));
    }

    public final void onDataAvailable(final n nVar, l lVar) {
        if (this.d) {
            final z zVar = new z(nVar);
            zVar.readByteArray(10, new z.f<byte[]>() {

                /* renamed from: a  reason: collision with root package name */
                int f4679a;

                /* renamed from: b  reason: collision with root package name */
                boolean f4680b;

                public final void parsed(byte[] bArr) {
                    short a2 = f.a(bArr, ByteOrder.LITTLE_ENDIAN);
                    boolean z = true;
                    if (a2 != -29921) {
                        f.this.report(new IOException(String.format(Locale.ENGLISH, "unknown format (magic number %x)", new Object[]{Short.valueOf(a2)})));
                        nVar.setDataCallback(new d.a());
                        return;
                    }
                    this.f4679a = bArr[3];
                    if ((this.f4679a & 2) == 0) {
                        z = false;
                    }
                    this.f4680b = z;
                    if (this.f4680b) {
                        f.this.e.update(bArr, 0, bArr.length);
                    }
                    if ((this.f4679a & 4) != 0) {
                        zVar.readByteArray(2, new z.f<byte[]>() {
                            public final void parsed(byte[] bArr) {
                                if (AnonymousClass1.this.f4680b) {
                                    f.this.e.update(bArr, 0, 2);
                                }
                                zVar.readByteArray(f.a(bArr, ByteOrder.LITTLE_ENDIAN) & 65535, new z.f<byte[]>() {
                                    public final void parsed(byte[] bArr) {
                                        if (AnonymousClass1.this.f4680b) {
                                            f.this.e.update(bArr, 0, bArr.length);
                                        }
                                        AnonymousClass1.this.a();
                                    }
                                });
                            }
                        });
                    } else {
                        a();
                    }
                }

                /* access modifiers changed from: package-private */
                public final void a() {
                    z zVar = new z(nVar);
                    AnonymousClass2 r1 = new d() {
                        public final void onDataAvailable(n nVar, l lVar) {
                            if (AnonymousClass1.this.f4680b) {
                                while (lVar.size() > 0) {
                                    ByteBuffer remove = lVar.remove();
                                    f.this.e.update(remove.array(), remove.arrayOffset() + remove.position(), remove.remaining());
                                    l.reclaim(remove);
                                }
                            }
                            lVar.recycle();
                            AnonymousClass1.this.b();
                        }
                    };
                    int i = this.f4679a;
                    if ((i & 8) != 0) {
                        zVar.until((byte) 0, r1);
                    } else if ((i & 16) != 0) {
                        zVar.until((byte) 0, r1);
                    } else {
                        b();
                    }
                }

                /* access modifiers changed from: package-private */
                public final void b() {
                    if (this.f4680b) {
                        zVar.readByteArray(2, new z.f<byte[]>() {
                            public final void parsed(byte[] bArr) {
                                if (((short) ((int) f.this.e.getValue())) != f.a(bArr, ByteOrder.LITTLE_ENDIAN)) {
                                    f.this.report(new IOException("CRC mismatch"));
                                    return;
                                }
                                f.this.e.reset();
                                f.this.d = false;
                                f.this.setDataEmitter(nVar);
                            }
                        });
                        return;
                    }
                    f fVar = f.this;
                    fVar.d = false;
                    fVar.setDataEmitter(nVar);
                }
            });
            return;
        }
        super.onDataAvailable(nVar, lVar);
    }
}
