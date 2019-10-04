package com.koushikdutta.async.http.d;

import com.koushikdutta.async.af;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.v;

public class b extends v {
    static final /* synthetic */ boolean e = (!b.class.desiredAssertionStatus());
    l d = new l();
    private int f = 0;
    private int g = 0;
    private int h = a.CHUNK_LEN$7ff18bd8;

    /* renamed from: com.koushikdutta.async.http.d.b$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4677a = new int[a.values$c9b1512().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|(3:11|12|14)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(14:0|1|2|3|4|5|6|7|8|9|10|11|12|14) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0031 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0011 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0019 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0021 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0029 */
        static {
            /*
                int[] r0 = com.koushikdutta.async.http.d.b.a.values$c9b1512()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f4677a = r0
                r0 = 1
                int[] r1 = f4677a     // Catch:{ NoSuchFieldError -> 0x0011 }
                int r2 = com.koushikdutta.async.http.d.b.a.CHUNK_LEN$7ff18bd8     // Catch:{ NoSuchFieldError -> 0x0011 }
                int r2 = r2 - r0
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0011 }
            L_0x0011:
                int[] r1 = f4677a     // Catch:{ NoSuchFieldError -> 0x0019 }
                int r2 = com.koushikdutta.async.http.d.b.a.CHUNK_LEN_CR$7ff18bd8     // Catch:{ NoSuchFieldError -> 0x0019 }
                int r2 = r2 - r0
                r3 = 2
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0019 }
            L_0x0019:
                int[] r1 = f4677a     // Catch:{ NoSuchFieldError -> 0x0021 }
                int r2 = com.koushikdutta.async.http.d.b.a.CHUNK$7ff18bd8     // Catch:{ NoSuchFieldError -> 0x0021 }
                int r2 = r2 - r0
                r3 = 3
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0021 }
            L_0x0021:
                int[] r1 = f4677a     // Catch:{ NoSuchFieldError -> 0x0029 }
                int r2 = com.koushikdutta.async.http.d.b.a.CHUNK_CR$7ff18bd8     // Catch:{ NoSuchFieldError -> 0x0029 }
                int r2 = r2 - r0
                r3 = 4
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0029 }
            L_0x0029:
                int[] r1 = f4677a     // Catch:{ NoSuchFieldError -> 0x0031 }
                int r2 = com.koushikdutta.async.http.d.b.a.CHUNK_CRLF$7ff18bd8     // Catch:{ NoSuchFieldError -> 0x0031 }
                int r2 = r2 - r0
                r3 = 5
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0031 }
            L_0x0031:
                int[] r1 = f4677a     // Catch:{ NoSuchFieldError -> 0x0039 }
                int r2 = com.koushikdutta.async.http.d.b.a.COMPLETE$7ff18bd8     // Catch:{ NoSuchFieldError -> 0x0039 }
                int r2 = r2 - r0
                r0 = 6
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0039 }
            L_0x0039:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.d.b.AnonymousClass1.<clinit>():void");
        }
    }

    enum a {
        ;
        
        public static final int CHUNK$7ff18bd8 = 4;
        public static final int CHUNK_CR$7ff18bd8 = 5;
        public static final int CHUNK_CRLF$7ff18bd8 = 6;
        public static final int CHUNK_LEN$7ff18bd8 = 1;
        public static final int CHUNK_LEN_CR$7ff18bd8 = 2;
        public static final int CHUNK_LEN_CRLF$7ff18bd8 = 3;
        public static final int COMPLETE$7ff18bd8 = 7;

        static {
            f4678a = new int[]{CHUNK_LEN$7ff18bd8, CHUNK_LEN_CR$7ff18bd8, CHUNK_LEN_CRLF$7ff18bd8, CHUNK$7ff18bd8, CHUNK_CR$7ff18bd8, CHUNK_CRLF$7ff18bd8, COMPLETE$7ff18bd8};
        }

        public static int[] values$c9b1512() {
            return (int[]) f4678a.clone();
        }
    }

    private boolean a(char c, char c2) {
        if (c == c2) {
            return true;
        }
        report(new a(c2 + " was expected, got " + c));
        return false;
    }

    public final void report(Exception exc) {
        if (exc == null && this.h != a.COMPLETE$7ff18bd8) {
            exc = new a("chunked input ended before final chunk");
        }
        super.report(exc);
    }

    public void onDataAvailable(n nVar, l lVar) {
        char byteChar;
        while (true) {
            try {
                if (lVar.remaining() <= 0) {
                    break;
                }
                switch (AnonymousClass1.f4677a[this.h - 1]) {
                    case 1:
                        byteChar = lVar.getByteChar();
                        if (byteChar == 13) {
                            this.h = a.CHUNK_LEN_CR$7ff18bd8;
                        } else {
                            this.f *= 16;
                            if (byteChar >= 'a' && byteChar <= 'f') {
                                this.f += (byteChar - 'a') + 10;
                            } else if (byteChar >= '0' && byteChar <= '9') {
                                this.f += byteChar - '0';
                            } else if (byteChar < 'A' || byteChar > 'F') {
                                report(new a("invalid chunk length: ".concat(String.valueOf(byteChar))));
                                break;
                            } else {
                                this.f += (byteChar - 'A') + 10;
                            }
                        }
                        this.g = this.f;
                        continue;
                    case 2:
                        if (a(lVar.getByteChar(), 10)) {
                            this.h = a.CHUNK$7ff18bd8;
                            continue;
                        } else {
                            return;
                        }
                    case 3:
                        int min = Math.min(this.g, lVar.remaining());
                        this.g -= min;
                        if (this.g == 0) {
                            this.h = a.CHUNK_CR$7ff18bd8;
                        }
                        if (min != 0) {
                            lVar.get(this.d, min);
                            af.emitAllData(this, this.d);
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        if (a(lVar.getByteChar(), 13)) {
                            this.h = a.CHUNK_CRLF$7ff18bd8;
                            continue;
                        } else {
                            return;
                        }
                    case 5:
                        if (a(lVar.getByteChar(), 10)) {
                            if (this.f > 0) {
                                this.h = a.CHUNK_LEN$7ff18bd8;
                            } else {
                                this.h = a.COMPLETE$7ff18bd8;
                                report(null);
                            }
                            this.f = 0;
                            continue;
                        } else {
                            return;
                        }
                    case 6:
                        if (!e) {
                            throw new AssertionError();
                        }
                        return;
                    default:
                        continue;
                }
            } catch (Exception e2) {
                report(e2);
                return;
            }
        }
        report(new a("invalid chunk length: ".concat(String.valueOf(byteChar))));
    }
}
