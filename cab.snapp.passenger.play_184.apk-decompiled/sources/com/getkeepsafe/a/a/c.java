package com.getkeepsafe.a.a;

import java.io.IOException;

public interface c {

    public static abstract class a {
        public static final int DT_NEEDED = 1;
        public static final int DT_NULL = 0;
        public static final int DT_STRTAB = 5;
        public long tag;
        public long val;
    }

    public static abstract class b {
        public static final int ELFCLASS32 = 1;
        public static final int ELFCLASS64 = 2;
        public static final int ELFDATA2MSB = 2;
        public boolean bigEndian;
        public int phentsize;
        public int phnum;
        public long phoff;
        public int shentsize;
        public int shnum;
        public long shoff;
        public int shstrndx;
        public int type;

        public abstract a getDynamicStructure(long j, int i) throws IOException;

        public abstract C0052c getProgramHeader(long j) throws IOException;

        public abstract d getSectionHeader(int i) throws IOException;
    }

    /* renamed from: com.getkeepsafe.a.a.c$c  reason: collision with other inner class name */
    public static abstract class C0052c {
        public static final int PT_DYNAMIC = 2;
        public static final int PT_LOAD = 1;
        public long memsz;
        public long offset;
        public long type;
        public long vaddr;
    }

    public static abstract class d {
        public long info;
    }
}
