package com.bumptech.glide.load.resource.a;

import com.bumptech.glide.load.a.e;
import java.nio.ByteBuffer;

public final class a implements e<ByteBuffer> {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f2329a;

    /* renamed from: com.bumptech.glide.load.resource.a.a$a  reason: collision with other inner class name */
    public static class C0047a implements e.a<ByteBuffer> {
        public final e<ByteBuffer> build(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }

        public final Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }
    }

    public final void cleanup() {
    }

    public a(ByteBuffer byteBuffer) {
        this.f2329a = byteBuffer;
    }

    public final ByteBuffer rewindAndGet() {
        this.f2329a.position(0);
        return this.f2329a;
    }
}
