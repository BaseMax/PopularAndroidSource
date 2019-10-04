package j.a.e;

import com.crashlytics.android.core.CodedOutputStream;
import j.a.e;
import j.a.e.b;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.B;
import k.g;
import k.i;
import k.z;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;

/* compiled from: Http2Reader */
public final class p implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f15517a = Logger.getLogger(c.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public final i f15518b;

    /* renamed from: c  reason: collision with root package name */
    public final a f15519c = new a(this.f15518b);

    /* renamed from: d  reason: collision with root package name */
    public final boolean f15520d;

    /* renamed from: e  reason: collision with root package name */
    public final b.a f15521e = new b.a(CodedOutputStream.DEFAULT_BUFFER_SIZE, this.f15519c);

    /* compiled from: Http2Reader */
    static final class a implements z {

        /* renamed from: a  reason: collision with root package name */
        public final i f15522a;

        /* renamed from: b  reason: collision with root package name */
        public int f15523b;

        /* renamed from: c  reason: collision with root package name */
        public byte f15524c;

        /* renamed from: d  reason: collision with root package name */
        public int f15525d;

        /* renamed from: e  reason: collision with root package name */
        public int f15526e;

        /* renamed from: f  reason: collision with root package name */
        public short f15527f;

        public a(i iVar) {
            this.f15522a = iVar;
        }

        public long b(g gVar, long j2) {
            while (true) {
                int i2 = this.f15526e;
                if (i2 == 0) {
                    this.f15522a.skip((long) this.f15527f);
                    this.f15527f = 0;
                    if ((this.f15524c & 4) != 0) {
                        return -1;
                    }
                    e();
                } else {
                    long b2 = this.f15522a.b(gVar, Math.min(j2, (long) i2));
                    if (b2 == -1) {
                        return -1;
                    }
                    this.f15526e = (int) (((long) this.f15526e) - b2);
                    return b2;
                }
            }
        }

        public void close() {
        }

        public final void e() {
            int i2 = this.f15525d;
            int a2 = p.a(this.f15522a);
            this.f15526e = a2;
            this.f15523b = a2;
            byte readByte = (byte) (this.f15522a.readByte() & 255);
            this.f15524c = (byte) (this.f15522a.readByte() & 255);
            if (p.f15517a.isLoggable(Level.FINE)) {
                p.f15517a.fine(c.a(true, this.f15525d, this.f15523b, readByte, this.f15524c));
            }
            this.f15525d = this.f15522a.readInt() & Integer.MAX_VALUE;
            if (readByte != 9) {
                c.b("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
                throw null;
            } else if (this.f15525d != i2) {
                c.b("TYPE_CONTINUATION streamId changed", new Object[0]);
                throw null;
            }
        }

        public B b() {
            return this.f15522a.b();
        }
    }

    /* compiled from: Http2Reader */
    interface b {
        void a();

        void a(int i2, int i3, int i4, boolean z);

        void a(int i2, int i3, List<a> list);

        void a(int i2, long j2);

        void a(int i2, ErrorCode errorCode);

        void a(int i2, ErrorCode errorCode, ByteString byteString);

        void a(boolean z, int i2, int i3);

        void a(boolean z, int i2, int i3, List<a> list);

        void a(boolean z, int i2, i iVar, int i3);

        void a(boolean z, v vVar);
    }

    public p(i iVar, boolean z) {
        this.f15518b = iVar;
        this.f15520d = z;
    }

    public void a(b bVar) {
        if (!this.f15520d) {
            ByteString a2 = this.f15518b.a((long) c.f15450a.k());
            if (f15517a.isLoggable(Level.FINE)) {
                f15517a.fine(e.a("<< CONNECTION %s", a2.g()));
            }
            if (!c.f15450a.equals(a2)) {
                c.b("Expected a connection header but was %s", a2.n());
                throw null;
            }
        } else if (!a(true, bVar)) {
            c.b("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
    }

    public final void b(b bVar, int i2, byte b2, int i3) {
        if (i2 < 8) {
            c.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i2));
            throw null;
        } else if (i3 == 0) {
            int readInt = this.f15518b.readInt();
            int readInt2 = this.f15518b.readInt();
            int i4 = i2 - 8;
            ErrorCode a2 = ErrorCode.a(readInt2);
            if (a2 != null) {
                ByteString byteString = ByteString.f15997b;
                if (i4 > 0) {
                    byteString = this.f15518b.a((long) i4);
                }
                bVar.a(readInt, a2, byteString);
                return;
            }
            c.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            throw null;
        } else {
            c.b("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
    }

    public final void c(b bVar, int i2, byte b2, int i3) {
        short s = 0;
        if (i3 != 0) {
            boolean z = (b2 & 1) != 0;
            if ((b2 & 8) != 0) {
                s = (short) (this.f15518b.readByte() & 255);
            }
            if ((b2 & 32) != 0) {
                a(bVar, i3);
                i2 -= 5;
            }
            bVar.a(z, i3, -1, a(a(i2, b2, s), s, b2, i3));
            return;
        }
        c.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        throw null;
    }

    public void close() {
        this.f15518b.close();
    }

    public final void d(b bVar, int i2, byte b2, int i3) {
        boolean z = false;
        if (i2 != 8) {
            c.b("TYPE_PING length != 8: %s", Integer.valueOf(i2));
            throw null;
        } else if (i3 == 0) {
            int readInt = this.f15518b.readInt();
            int readInt2 = this.f15518b.readInt();
            if ((b2 & 1) != 0) {
                z = true;
            }
            bVar.a(z, readInt, readInt2);
        } else {
            c.b("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
    }

    public final void e(b bVar, int i2, byte b2, int i3) {
        if (i2 != 5) {
            c.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i2));
            throw null;
        } else if (i3 != 0) {
            a(bVar, i3);
        } else {
            c.b("TYPE_PRIORITY streamId == 0", new Object[0]);
            throw null;
        }
    }

    public final void f(b bVar, int i2, byte b2, int i3) {
        short s = 0;
        if (i3 != 0) {
            if ((b2 & 8) != 0) {
                s = (short) (this.f15518b.readByte() & 255);
            }
            bVar.a(i3, this.f15518b.readInt() & Integer.MAX_VALUE, a(a(i2 - 4, b2, s), s, b2, i3));
            return;
        }
        c.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        throw null;
    }

    public final void g(b bVar, int i2, byte b2, int i3) {
        if (i2 != 4) {
            c.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i2));
            throw null;
        } else if (i3 != 0) {
            int readInt = this.f15518b.readInt();
            ErrorCode a2 = ErrorCode.a(readInt);
            if (a2 != null) {
                bVar.a(i3, a2);
                return;
            }
            c.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
            throw null;
        } else {
            c.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
    }

    public final void h(b bVar, int i2, byte b2, int i3) {
        if (i3 != 0) {
            c.b("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        } else if ((b2 & 1) != 0) {
            if (i2 == 0) {
                bVar.a();
            } else {
                c.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
        } else if (i2 % 6 == 0) {
            v vVar = new v();
            for (int i4 = 0; i4 < i2; i4 += 6) {
                short readShort = this.f15518b.readShort() & 65535;
                int readInt = this.f15518b.readInt();
                switch (readShort) {
                    case 2:
                        if (!(readInt == 0 || readInt == 1)) {
                            c.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                            throw null;
                        }
                    case 3:
                        readShort = 4;
                        break;
                    case 4:
                        readShort = 7;
                        if (readInt >= 0) {
                            break;
                        } else {
                            c.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                            throw null;
                        }
                    case 5:
                        if (readInt >= 16384 && readInt <= 16777215) {
                            break;
                        } else {
                            c.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                            throw null;
                        }
                        break;
                }
                vVar.a(readShort, readInt);
            }
            bVar.a(false, vVar);
        } else {
            c.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i2));
            throw null;
        }
    }

    public final void i(b bVar, int i2, byte b2, int i3) {
        if (i2 == 4) {
            long readInt = ((long) this.f15518b.readInt()) & 2147483647L;
            if (readInt != 0) {
                bVar.a(i3, readInt);
                return;
            }
            c.b("windowSizeIncrement was 0", Long.valueOf(readInt));
            throw null;
        }
        c.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i2));
        throw null;
    }

    public boolean a(boolean z, b bVar) {
        try {
            this.f15518b.f(9);
            int a2 = a(this.f15518b);
            if (a2 < 0 || a2 > 16384) {
                c.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(a2));
                throw null;
            }
            byte readByte = (byte) (this.f15518b.readByte() & 255);
            if (!z || readByte == 4) {
                byte readByte2 = (byte) (this.f15518b.readByte() & 255);
                int readInt = this.f15518b.readInt() & Integer.MAX_VALUE;
                if (f15517a.isLoggable(Level.FINE)) {
                    f15517a.fine(c.a(true, readInt, a2, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        a(bVar, a2, readByte2, readInt);
                        break;
                    case 1:
                        c(bVar, a2, readByte2, readInt);
                        break;
                    case 2:
                        e(bVar, a2, readByte2, readInt);
                        break;
                    case 3:
                        g(bVar, a2, readByte2, readInt);
                        break;
                    case 4:
                        h(bVar, a2, readByte2, readInt);
                        break;
                    case 5:
                        f(bVar, a2, readByte2, readInt);
                        break;
                    case 6:
                        d(bVar, a2, readByte2, readInt);
                        break;
                    case 7:
                        b(bVar, a2, readByte2, readInt);
                        break;
                    case 8:
                        i(bVar, a2, readByte2, readInt);
                        break;
                    default:
                        this.f15518b.skip((long) a2);
                        break;
                }
                return true;
            }
            c.b("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
            throw null;
        } catch (IOException unused) {
            return false;
        }
    }

    public final List<a> a(int i2, short s, byte b2, int i3) {
        a aVar = this.f15519c;
        aVar.f15526e = i2;
        aVar.f15523b = i2;
        aVar.f15527f = s;
        aVar.f15524c = b2;
        aVar.f15525d = i3;
        this.f15521e.f();
        return this.f15521e.c();
    }

    public final void a(b bVar, int i2, byte b2, int i3) {
        short s = 0;
        if (i3 != 0) {
            boolean z = true;
            boolean z2 = (b2 & 1) != 0;
            if ((b2 & 32) == 0) {
                z = false;
            }
            if (!z) {
                if ((b2 & 8) != 0) {
                    s = (short) (this.f15518b.readByte() & 255);
                }
                bVar.a(z2, i3, this.f15518b, a(i2, b2, s));
                this.f15518b.skip((long) s);
                return;
            }
            c.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }
        c.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        throw null;
    }

    public final void a(b bVar, int i2) {
        int readInt = this.f15518b.readInt();
        bVar.a(i2, readInt & Integer.MAX_VALUE, (this.f15518b.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    public static int a(i iVar) {
        return (iVar.readByte() & 255) | ((iVar.readByte() & 255) << 16) | ((iVar.readByte() & 255) << 8);
    }

    public static int a(int i2, byte b2, short s) {
        if ((b2 & 8) != 0) {
            i2--;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        c.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        throw null;
    }
}
