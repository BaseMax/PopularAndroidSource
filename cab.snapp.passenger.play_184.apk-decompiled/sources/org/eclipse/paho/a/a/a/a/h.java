package org.eclipse.paho.a.a.a.a;

import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.r;
import org.eclipse.paho.a.a.s;

public abstract class h extends u implements r {
    public int getHeaderOffset() throws s {
        return 0;
    }

    public int getPayloadLength() throws s {
        return 0;
    }

    public int getPayloadOffset() throws s {
        return 0;
    }

    public h(byte b2) {
        super(b2);
    }

    public byte[] getHeaderBytes() throws s {
        try {
            return getHeader();
        } catch (p e) {
            throw new s(e.getCause());
        }
    }

    public int getHeaderLength() throws s {
        return getHeaderBytes().length;
    }

    public byte[] getPayloadBytes() throws s {
        try {
            return getPayload();
        } catch (p e) {
            throw new s(e.getCause());
        }
    }
}
