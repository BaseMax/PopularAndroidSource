package com.getkeepsafe.a.a;

import com.getkeepsafe.a.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class j extends c.d {
    public j(f fVar, c.b bVar, int i) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.info = fVar.b(allocate, bVar.shoff + ((long) (i * bVar.shentsize)) + 44);
    }
}
