package c.e.a.b.g.f;

import c.e.a.b.g.f.Ca;
import c.e.a.b.g.f.Da;

public abstract class Da<MessageType extends Ca<MessageType, BuilderType>, BuilderType extends Da<MessageType, BuilderType>> implements Tb {
    public abstract BuilderType a(MessageType messagetype);

    public final /* synthetic */ Tb a(Sb sb) {
        if (a().getClass().isInstance(sb)) {
            a((Ca) sb);
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
