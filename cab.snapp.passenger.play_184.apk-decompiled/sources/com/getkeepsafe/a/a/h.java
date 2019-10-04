package com.getkeepsafe.a.a;

import com.getkeepsafe.a.a.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class h extends c.C0052c {
    public h(f fVar, c.b bVar, long j) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(bVar.bigEndian ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = bVar.phoff + (j * ((long) bVar.phentsize));
        this.type = fVar.b(allocate, j2);
        this.offset = fVar.a(allocate, 8 + j2);
        this.vaddr = fVar.a(allocate, 16 + j2);
        this.memsz = fVar.a(allocate, j2 + 40);
    }
}
