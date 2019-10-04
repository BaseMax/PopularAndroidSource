package com.bumptech.glide;

import com.bumptech.glide.e.b.a;
import com.bumptech.glide.e.b.c;
import com.bumptech.glide.e.b.d;
import com.bumptech.glide.e.b.e;
import com.bumptech.glide.e.b.f;
import com.bumptech.glide.g.j;
import com.bumptech.glide.i;

public abstract class i<CHILD extends i<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    c<? super TranscodeType> f2091a = a.getFactory();

    public final CHILD dontTransition() {
        return transition(a.getFactory());
    }

    public final CHILD transition(int i) {
        return transition(new d(i));
    }

    public final CHILD transition(f.a aVar) {
        return transition(new e(aVar));
    }

    public final CHILD transition(c<? super TranscodeType> cVar) {
        this.f2091a = (c) j.checkNotNull(cVar);
        return this;
    }

    public final CHILD clone() {
        try {
            return (i) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
