package com.getkeepsafe.a.a;

import com.getkeepsafe.a.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class g extends c.C0052c {
    public g(f fVar, c.b bVar, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(bVar.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = bVar.phoff + (j * ((long) bVar.phentsize));
        this.type = fVar.b(allocate, j2);
        this.offset = fVar.b(allocate, 4 + j2);
        this.vaddr = fVar.b(allocate, 8 + j2);
        this.memsz = fVar.b(allocate, j2 + 20);
    }
}
