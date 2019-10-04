package com.koushikdutta.async;

import android.os.Looper;
import com.koushikdutta.async.e.b;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;

public class l {
    public static final ByteBuffer EMPTY_BYTEBUFFER = ByteBuffer.allocate(0);
    public static int MAX_ITEM_SIZE = 262144;
    static PriorityQueue<ByteBuffer> c = new PriorityQueue<>(8, new a());
    static int d = 0;
    static int e = 0;
    static final /* synthetic */ boolean f = (!l.class.desiredAssertionStatus());
    private static int h = 1048576;
    private static final Object i = new Object();

    /* renamed from: a  reason: collision with root package name */
    a<ByteBuffer> f4844a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    ByteOrder f4845b = ByteOrder.BIG_ENDIAN;
    private int g = 0;

    static class a implements Comparator<ByteBuffer> {
        a() {
        }

        public final int compare(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
            if (byteBuffer.capacity() == byteBuffer2.capacity()) {
                return 0;
            }
            return byteBuffer.capacity() > byteBuffer2.capacity() ? 1 : -1;
        }
    }

    public ByteOrder order() {
        return this.f4845b;
    }

    public l order(ByteOrder byteOrder) {
        this.f4845b = byteOrder;
        return this;
    }

    public l() {
    }

    public l(ByteBuffer... byteBufferArr) {
        addAll(byteBufferArr);
    }

    public l(byte[] bArr) {
        add(ByteBuffer.wrap(bArr));
    }

    public l addAll(ByteBuffer... byteBufferArr) {
        for (ByteBuffer add : byteBufferArr) {
            add(add);
        }
        return this;
    }

    public l addAll(l... lVarArr) {
        for (l lVar : lVarArr) {
            lVar.get(this);
        }
        return this;
    }

    public byte[] getBytes(int i2) {
        byte[] bArr = new byte[i2];
        get(bArr);
        return bArr;
    }

    public byte[] getAllByteArray() {
        if (this.f4844a.size() == 1) {
            ByteBuffer peek = this.f4844a.peek();
            if (peek.capacity() == remaining() && peek.isDirect()) {
                this.g = 0;
                return this.f4844a.remove().array();
            }
        }
        byte[] bArr = new byte[remaining()];
        get(bArr);
        return bArr;
    }

    public ByteBuffer[] getAllArray() {
        ByteBuffer[] byteBufferArr = (ByteBuffer[]) this.f4844a.toArray(new ByteBuffer[this.f4844a.size()]);
        this.f4844a.clear();
        this.g = 0;
        return byteBufferArr;
    }

    public boolean isEmpty() {
        return this.g == 0;
    }

    public int remaining() {
        return this.g;
    }

    public boolean hasRemaining() {
        return remaining() > 0;
    }

    public short peekShort() {
        return a(2).duplicate().getShort();
    }

    public int peekInt() {
        return a(4).duplicate().getInt();
    }

    public long peekLong() {
        return a(8).duplicate().getLong();
    }

    public byte[] peekBytes(int i2) {
        byte[] bArr = new byte[i2];
        a(i2).duplicate().get(bArr);
        return bArr;
    }

    public l skip(int i2) {
        get(null, 0, i2);
        return this;
    }

    public int getInt() {
        int i2 = a(4).getInt();
        this.g -= 4;
        return i2;
    }

    public char getByteChar() {
        char c2 = (char) a(1).get();
        this.g--;
        return c2;
    }

    public short getShort() {
        short s = a(2).getShort();
        this.g -= 2;
        return s;
    }

    public byte get() {
        byte b2 = a(1).get();
        this.g--;
        return b2;
    }

    public long getLong() {
        long j = a(8).getLong();
        this.g -= 8;
        return j;
    }

    public void get(byte[] bArr) {
        get(bArr, 0, bArr.length);
    }

    public void get(byte[] bArr, int i2, int i3) {
        if (remaining() >= i3) {
            int i4 = i2;
            int i5 = i3;
            while (i5 > 0) {
                ByteBuffer peek = this.f4844a.peek();
                int min = Math.min(peek.remaining(), i5);
                if (bArr != null) {
                    peek.get(bArr, i4, min);
                } else {
                    peek.position(peek.position() + min);
                }
                i5 -= min;
                i4 += min;
                if (peek.remaining() == 0) {
                    ByteBuffer remove = this.f4844a.remove();
                    if (f || peek == remove) {
                        reclaim(peek);
                    } else {
                        throw new AssertionError();
                    }
                }
            }
            this.g -= i3;
            return;
        }
        throw new IllegalArgumentException("length");
    }

    public void get(l lVar, int i2) {
        if (remaining() >= i2) {
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                ByteBuffer remove = this.f4844a.remove();
                int remaining = remove.remaining();
                if (remaining == 0) {
                    reclaim(remove);
                } else {
                    int i4 = remaining + i3;
                    if (i4 > i2) {
                        int i5 = i2 - i3;
                        ByteBuffer obtain = obtain(i5);
                        obtain.limit(i5);
                        remove.get(obtain.array(), 0, i5);
                        lVar.add(obtain);
                        this.f4844a.addFirst(remove);
                        if (!f && obtain.capacity() < i5) {
                            throw new AssertionError();
                        } else if (!f && obtain.position() != 0) {
                            throw new AssertionError();
                        }
                    } else {
                        lVar.add(remove);
                        i3 = i4;
                    }
                }
            }
            this.g -= i2;
            return;
        }
        throw new IllegalArgumentException("length");
    }

    public void get(l lVar) {
        get(lVar, remaining());
    }

    public l get(int i2) {
        l lVar = new l();
        get(lVar, i2);
        return lVar.order(this.f4845b);
    }

    public ByteBuffer getAll() {
        if (remaining() == 0) {
            return EMPTY_BYTEBUFFER;
        }
        a(remaining());
        return remove();
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.nio.ByteBuffer a(int r8) {
        /*
            r7 = this;
            int r0 = r7.remaining()
            if (r0 < r8) goto L_0x007d
        L_0x0006:
            com.koushikdutta.async.a<java.nio.ByteBuffer> r0 = r7.f4844a
            java.lang.Object r0 = r0.peek()
            java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0
            if (r0 == 0) goto L_0x0022
            boolean r1 = r0.hasRemaining()
            if (r1 != 0) goto L_0x0022
            com.koushikdutta.async.a<java.nio.ByteBuffer> r0 = r7.f4844a
            java.lang.Object r0 = r0.remove()
            java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0
            reclaim(r0)
            goto L_0x0006
        L_0x0022:
            if (r0 != 0) goto L_0x0027
            java.nio.ByteBuffer r8 = EMPTY_BYTEBUFFER
            return r8
        L_0x0027:
            int r1 = r0.remaining()
            if (r1 < r8) goto L_0x0034
            java.nio.ByteOrder r8 = r7.f4845b
            java.nio.ByteBuffer r8 = r0.order(r8)
            return r8
        L_0x0034:
            java.nio.ByteBuffer r0 = obtain(r8)
            r0.limit(r8)
            byte[] r1 = r0.array()
            r2 = 0
            r3 = 0
        L_0x0041:
            r4 = r3
        L_0x0042:
            if (r2 >= r8) goto L_0x0064
            com.koushikdutta.async.a<java.nio.ByteBuffer> r4 = r7.f4844a
            java.lang.Object r4 = r4.remove()
            java.nio.ByteBuffer r4 = (java.nio.ByteBuffer) r4
            int r5 = r8 - r2
            int r6 = r4.remaining()
            int r5 = java.lang.Math.min(r5, r6)
            r4.get(r1, r2, r5)
            int r2 = r2 + r5
            int r5 = r4.remaining()
            if (r5 != 0) goto L_0x0042
            reclaim(r4)
            goto L_0x0041
        L_0x0064:
            if (r4 == 0) goto L_0x0071
            int r8 = r4.remaining()
            if (r8 <= 0) goto L_0x0071
            com.koushikdutta.async.a<java.nio.ByteBuffer> r8 = r7.f4844a
            r8.addFirst(r4)
        L_0x0071:
            com.koushikdutta.async.a<java.nio.ByteBuffer> r8 = r7.f4844a
            r8.addFirst(r0)
            java.nio.ByteOrder r8 = r7.f4845b
            java.nio.ByteBuffer r8 = r0.order(r8)
            return r8
        L_0x007d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "count : "
            r1.<init>(r2)
            int r2 = r7.remaining()
            r1.append(r2)
            java.lang.String r2 = "/"
            r1.append(r2)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            r0.<init>(r8)
            goto L_0x009e
        L_0x009d:
            throw r0
        L_0x009e:
            goto L_0x009d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.l.a(int):java.nio.ByteBuffer");
    }

    public void trim() {
        a(0);
    }

    public l add(l lVar) {
        lVar.get(this);
        return this;
    }

    public l add(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            reclaim(byteBuffer);
            return this;
        }
        b(byteBuffer.remaining());
        if (this.f4844a.size() > 0) {
            ByteBuffer last = this.f4844a.getLast();
            if (last.capacity() - last.limit() >= byteBuffer.remaining()) {
                last.mark();
                last.position(last.limit());
                last.limit(last.capacity());
                last.put(byteBuffer);
                last.limit(last.position());
                last.reset();
                reclaim(byteBuffer);
                trim();
                return this;
            }
        }
        this.f4844a.add(byteBuffer);
        trim();
        return this;
    }

    public void addFirst(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            reclaim(byteBuffer);
            return;
        }
        b(byteBuffer.remaining());
        if (this.f4844a.size() > 0) {
            ByteBuffer first = this.f4844a.getFirst();
            if (first.position() >= byteBuffer.remaining()) {
                first.position(first.position() - byteBuffer.remaining());
                first.mark();
                first.put(byteBuffer);
                first.reset();
                reclaim(byteBuffer);
                return;
            }
        }
        this.f4844a.addFirst(byteBuffer);
    }

    private void b(int i2) {
        if (remaining() >= 0) {
            this.g += i2;
        }
    }

    public void recycle() {
        while (this.f4844a.size() > 0) {
            reclaim(this.f4844a.remove());
        }
        if (f || this.f4844a.size() == 0) {
            this.g = 0;
            return;
        }
        throw new AssertionError();
    }

    public ByteBuffer remove() {
        ByteBuffer remove = this.f4844a.remove();
        this.g -= remove.remaining();
        return remove;
    }

    public int size() {
        return this.f4844a.size();
    }

    public void spewString() {
        System.out.println(peekString());
    }

    public String peekString() {
        return peekString(null);
    }

    public String peekString(Charset charset) {
        int i2;
        int i3;
        byte[] bArr;
        if (charset == null) {
            charset = b.US_ASCII;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<ByteBuffer> it = this.f4844a.iterator();
        while (it.hasNext()) {
            ByteBuffer next = it.next();
            if (next.isDirect()) {
                bArr = new byte[next.remaining()];
                i3 = 0;
                i2 = next.remaining();
                next.get(bArr);
            } else {
                bArr = next.array();
                i3 = next.arrayOffset() + next.position();
                i2 = next.remaining();
            }
            sb.append(new String(bArr, i3, i2, charset));
        }
        return sb.toString();
    }

    public String readString() {
        return readString(null);
    }

    public String readString(Charset charset) {
        String peekString = peekString(charset);
        recycle();
        return peekString;
    }

    private static PriorityQueue<ByteBuffer> a() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null || Thread.currentThread() != mainLooper.getThread()) {
            return c;
        }
        return null;
    }

    public static void setMaxPoolSize(int i2) {
        h = i2;
    }

    public static void setMaxItemSize(int i2) {
        MAX_ITEM_SIZE = i2;
    }

    public static void reclaim(ByteBuffer byteBuffer) {
        boolean z;
        if (byteBuffer != null && !byteBuffer.isDirect() && byteBuffer.arrayOffset() == 0 && byteBuffer.array().length == byteBuffer.capacity() && byteBuffer.capacity() >= 8192 && byteBuffer.capacity() <= MAX_ITEM_SIZE) {
            PriorityQueue<ByteBuffer> a2 = a();
            if (a2 != null) {
                synchronized (i) {
                    while (d > h && a2.size() > 0 && a2.peek().capacity() < byteBuffer.capacity()) {
                        d -= ((ByteBuffer) a2.remove()).capacity();
                    }
                    if (d <= h) {
                        boolean z2 = true;
                        if (!f) {
                            Iterator<ByteBuffer> it = c.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (it.next() == byteBuffer) {
                                        z = true;
                                        break;
                                    }
                                } else {
                                    z = false;
                                    break;
                                }
                            }
                            if (z) {
                                throw new AssertionError();
                            }
                        }
                        byteBuffer.position(0);
                        byteBuffer.limit(byteBuffer.capacity());
                        d += byteBuffer.capacity();
                        a2.add(byteBuffer);
                        if (!f) {
                            boolean z3 = a2.size() != 0;
                            if (d != 0) {
                                z2 = false;
                            }
                            if (!(z3 ^ z2)) {
                                throw new AssertionError();
                            }
                        }
                        e = Math.max(e, byteBuffer.capacity());
                    }
                }
            }
        }
    }

    public static ByteBuffer obtain(int i2) {
        ByteBuffer byteBuffer;
        if (i2 <= e) {
            PriorityQueue<ByteBuffer> a2 = a();
            if (a2 != null) {
                synchronized (i) {
                    do {
                        if (a2.size() > 0) {
                            byteBuffer = (ByteBuffer) a2.remove();
                            boolean z = false;
                            if (a2.size() == 0) {
                                e = 0;
                            }
                            d -= byteBuffer.capacity();
                            if (!f) {
                                boolean z2 = a2.size() != 0;
                                if (d == 0) {
                                    z = true;
                                }
                                if (!(z2 ^ z)) {
                                    throw new AssertionError();
                                }
                            }
                        }
                    } while (byteBuffer.capacity() < i2);
                    return byteBuffer;
                }
            }
        }
        return ByteBuffer.allocate(Math.max(8192, i2));
    }

    public static void obtainArray(ByteBuffer[] byteBufferArr, int i2) {
        int i3;
        int i4;
        int i5;
        PriorityQueue<ByteBuffer> a2 = a();
        int i6 = 0;
        if (a2 != null) {
            synchronized (i) {
                i5 = 0;
                i3 = 0;
                while (a2.size() > 0 && i5 < i2) {
                    boolean z = true;
                    if (i3 >= byteBufferArr.length - 1) {
                        break;
                    }
                    ByteBuffer byteBuffer = (ByteBuffer) a2.remove();
                    d -= byteBuffer.capacity();
                    if (!f) {
                        boolean z2 = a2.size() != 0;
                        if (d != 0) {
                            z = false;
                        }
                        if (!(z ^ z2)) {
                            throw new AssertionError();
                        }
                    }
                    i5 += Math.min(i2 - i5, byteBuffer.capacity());
                    byteBufferArr[i3] = byteBuffer;
                    i3++;
                }
            }
            i6 = i5;
        } else {
            i3 = 0;
        }
        if (i6 < i2) {
            i4 = i3 + 1;
            byteBufferArr[i3] = ByteBuffer.allocate(Math.max(8192, i2 - i6));
        } else {
            i4 = i3;
        }
        while (i4 < byteBufferArr.length) {
            byteBufferArr[i4] = EMPTY_BYTEBUFFER;
            i4++;
        }
    }

    public static void writeOutputStream(OutputStream outputStream, ByteBuffer byteBuffer) throws IOException {
        int i2;
        int i3;
        byte[] bArr;
        if (byteBuffer.isDirect()) {
            bArr = new byte[byteBuffer.remaining()];
            i3 = 0;
            i2 = byteBuffer.remaining();
            byteBuffer.get(bArr);
        } else {
            bArr = byteBuffer.array();
            i3 = byteBuffer.arrayOffset() + byteBuffer.position();
            i2 = byteBuffer.remaining();
        }
        outputStream.write(bArr, i3, i2);
    }
}
