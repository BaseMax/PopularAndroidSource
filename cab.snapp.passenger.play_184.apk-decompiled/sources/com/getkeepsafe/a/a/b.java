package com.getkeepsafe.a.a;

import com.getkeepsafe.a.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class b extends c.a {
    public b(f fVar, c.b bVar, long j, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + ((long) (i * 16));
        this.tag = fVar.a(allocate, j2);
        this.val = fVar.a(allocate, j2 + 8);
    }
}
