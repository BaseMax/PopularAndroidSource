package com.bumptech.glide;

import com.bumptech.glide.e.b.c;
import com.bumptech.glide.e.b.f;

public final class b<TranscodeType> extends i<b<TranscodeType>, TranscodeType> {
    public static <TranscodeType> b<TranscodeType> withNoTransition() {
        return (b) new b().dontTransition();
    }

    public static <TranscodeType> b<TranscodeType> with(int i) {
        return (b) new b().transition(i);
    }

    public static <TranscodeType> b<TranscodeType> with(f.a aVar) {
        return (b) new b().transition(aVar);
    }

    public static <TranscodeType> b<TranscodeType> with(c<? super TranscodeType> cVar) {
        return (b) new b().transition(cVar);
    }
}
