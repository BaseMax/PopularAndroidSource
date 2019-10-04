package com.google.android.exoplayer2.extractor.flv;

import c.e.a.a.e.q;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;

public abstract class TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    public final q f12572a;

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    public TagPayloadReader(q qVar) {
        this.f12572a = qVar;
    }

    public final void a(v vVar, long j2) {
        if (a(vVar)) {
            b(vVar, j2);
        }
    }

    public abstract boolean a(v vVar);

    public abstract void b(v vVar, long j2);
}
