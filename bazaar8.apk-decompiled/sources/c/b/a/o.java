package c.b.a;

import c.b.a.g.b.a;
import c.b.a.g.b.c;
import c.b.a.o;

/* compiled from: TransitionOptions */
public abstract class o<CHILD extends o<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public c<? super TranscodeType> f4473a = a.a();

    public final c<? super TranscodeType> a() {
        return this.f4473a;
    }

    public final CHILD clone() {
        try {
            return (o) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }
}
