package org.a;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    private long f8720a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8721b;
    private long c;
    private long d;
    private char e;
    private final Reader f;
    private boolean g;
    private long h;

    public static int dehexchar(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'A' && c2 <= 'F') {
            return c2 - '7';
        }
        if (c2 < 'a' || c2 > 'f') {
            return -1;
        }
        return c2 - 'W';
    }

    public g(Reader reader) {
        this.f = !reader.markSupported() ? new BufferedReader(reader) : reader;
        this.f8721b = false;
        this.g = false;
        this.e = 0;
        this.c = 0;
        this.f8720a = 1;
        this.h = 0;
        this.d = 1;
    }

    public g(InputStream inputStream) {
        this((Reader) new InputStreamReader(inputStream));
    }

    public g(String str) {
        this((Reader) new StringReader(str));
    }

    public final void back() throws b {
        if (!this.g) {
            long j = this.c;
            if (j > 0) {
                this.c = j - 1;
                char c2 = this.e;
                if (c2 == 13 || c2 == 10) {
                    this.d--;
                    this.f8720a = this.h;
                } else {
                    long j2 = this.f8720a;
                    if (j2 > 0) {
                        this.f8720a = j2 - 1;
                    }
                }
                this.g = true;
                this.f8721b = false;
                return;
            }
        }
        throw new b("Stepping back two steps is not supported");
    }

    public final boolean end() {
        return this.f8721b && !this.g;
    }

    public final boolean more() throws b {
        if (this.g) {
            return true;
        }
        try {
            this.f.mark(1);
            try {
                if (this.f.read() <= 0) {
                    this.f8721b = true;
                    return false;
                }
                this.f.reset();
                return true;
            } catch (IOException e2) {
                throw new b("Unable to read the next character from the stream", e2);
            }
        } catch (IOException e3) {
            throw new b("Unable to preserve stream position", e3);
        }
    }

    public final char next() throws b {
        int i;
        if (this.g) {
            this.g = false;
            i = this.e;
        } else {
            try {
                i = this.f.read();
            } catch (IOException e2) {
                throw new b((Throwable) e2);
            }
        }
        if (i <= 0) {
            this.f8721b = true;
            return 0;
        }
        if (i > 0) {
            this.c++;
            if (i == 13) {
                this.d++;
                this.h = this.f8720a;
                this.f8720a = 0;
            } else if (i == 10) {
                if (this.e != 13) {
                    this.d++;
                    this.h = this.f8720a;
                }
                this.f8720a = 0;
            } else {
                this.f8720a++;
            }
        }
        this.e = (char) i;
        return this.e;
    }

    public final char next(char c2) throws b {
        char next = next();
        if (next == c2) {
            return next;
        }
        if (next > 0) {
            throw syntaxError("Expected '" + c2 + "' and instead saw '" + next + "'");
        }
        throw syntaxError("Expected '" + c2 + "' and instead saw ''");
    }

    public final String next(int i) throws b {
        if (i == 0) {
            return "";
        }
        char[] cArr = new char[i];
        int i2 = 0;
        while (i2 < i) {
            cArr[i2] = next();
            if (!end()) {
                i2++;
            } else {
                throw syntaxError("Substring bounds error");
            }
        }
        return new String(cArr);
    }

    public final char nextClean() throws b {
        char next;
        do {
            next = next();
            if (next == 0) {
                break;
            }
        } while (next <= ' ');
        return next;
    }

    public final String nextString(char c2) throws b {
        StringBuilder sb = new StringBuilder();
        while (true) {
            char next = next();
            if (next != 0 && next != 10 && next != 13) {
                if (next == '\\') {
                    char next2 = next();
                    if (next2 == '\"' || next2 == '\'' || next2 == '/' || next2 == '\\') {
                        sb.append(next2);
                    } else if (next2 == 'b') {
                        sb.append(8);
                    } else if (next2 == 'f') {
                        sb.append(12);
                    } else if (next2 == 'n') {
                        sb.append(10);
                    } else if (next2 == 'r') {
                        sb.append(13);
                    } else if (next2 == 't') {
                        sb.append(9);
                    } else if (next2 == 'u') {
                        try {
                            sb.append((char) Integer.parseInt(next(4), 16));
                        } catch (NumberFormatException e2) {
                            throw syntaxError("Illegal escape.", e2);
                        }
                    } else {
                        throw syntaxError("Illegal escape.");
                    }
                } else if (next == c2) {
                    return sb.toString();
                } else {
                    sb.append(next);
                }
            }
        }
        throw syntaxError("Unterminated string");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x001c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String nextTo(char r4) throws org.a.b {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L_0x0005:
            char r1 = r3.next()
            if (r1 == r4) goto L_0x001a
            if (r1 == 0) goto L_0x001a
            r2 = 10
            if (r1 == r2) goto L_0x001a
            r2 = 13
            if (r1 != r2) goto L_0x0016
            goto L_0x001a
        L_0x0016:
            r0.append(r1)
            goto L_0x0005
        L_0x001a:
            if (r1 == 0) goto L_0x001f
            r3.back()
        L_0x001f:
            java.lang.String r4 = r0.toString()
            java.lang.String r4 = r4.trim()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.a.g.nextTo(char):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0020  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String nextTo(java.lang.String r4) throws org.a.b {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L_0x0005:
            char r1 = r3.next()
            int r2 = r4.indexOf(r1)
            if (r2 >= 0) goto L_0x001e
            if (r1 == 0) goto L_0x001e
            r2 = 10
            if (r1 == r2) goto L_0x001e
            r2 = 13
            if (r1 != r2) goto L_0x001a
            goto L_0x001e
        L_0x001a:
            r0.append(r1)
            goto L_0x0005
        L_0x001e:
            if (r1 == 0) goto L_0x0023
            r3.back()
        L_0x0023:
            java.lang.String r4 = r0.toString()
            java.lang.String r4 = r4.trim()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.a.g.nextTo(java.lang.String):java.lang.String");
    }

    public final Object nextValue() throws b {
        char nextClean = nextClean();
        if (nextClean == '\"' || nextClean == '\'') {
            return nextString(nextClean);
        }
        if (nextClean == '[') {
            back();
            return new a(this);
        } else if (nextClean != '{') {
            StringBuilder sb = new StringBuilder();
            while (nextClean >= ' ' && ",:]}/\\\"[{;=#".indexOf(nextClean) < 0) {
                sb.append(nextClean);
                nextClean = next();
            }
            back();
            String trim = sb.toString().trim();
            if (!"".equals(trim)) {
                return c.stringToValue(trim);
            }
            throw syntaxError("Missing value");
        } else {
            back();
            return new c(this);
        }
    }

    public final char skipTo(char c2) throws b {
        char next;
        try {
            long j = this.c;
            long j2 = this.f8720a;
            long j3 = this.d;
            this.f.mark(1000000);
            do {
                next = next();
                if (next == 0) {
                    this.f.reset();
                    this.c = j;
                    this.f8720a = j2;
                    this.d = j3;
                    return 0;
                }
            } while (next != c2);
            this.f.mark(1);
            back();
            return next;
        } catch (IOException e2) {
            throw new b((Throwable) e2);
        }
    }

    public final b syntaxError(String str) {
        return new b(str + toString());
    }

    public final b syntaxError(String str, Throwable th) {
        return new b(str + toString(), th);
    }

    public final String toString() {
        return " at " + this.c + " [character " + this.f8720a + " line " + this.d + "]";
    }
}
