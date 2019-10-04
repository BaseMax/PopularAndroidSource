package com.koushikdutta.async.http;

import java.io.Serializable;

public final class u implements Serializable, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    protected final String f4833a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f4834b;
    protected final int c;

    public u(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("Protocol name must not be null.");
        } else if (i < 0) {
            throw new IllegalArgumentException("Protocol major version number must not be negative.");
        } else if (i2 >= 0) {
            this.f4833a = str;
            this.f4834b = i;
            this.c = i2;
        } else {
            throw new IllegalArgumentException("Protocol minor version number may not be negative");
        }
    }

    public final String getProtocol() {
        return this.f4833a;
    }

    public final int getMajor() {
        return this.f4834b;
    }

    public final int getMinor() {
        return this.c;
    }

    public final u forVersion(int i, int i2) {
        if (i == this.f4834b && i2 == this.c) {
            return this;
        }
        return new u(this.f4833a, i, i2);
    }

    public final int hashCode() {
        return (this.f4833a.hashCode() ^ (this.f4834b * 100000)) ^ this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f4833a.equals(uVar.f4833a) && this.f4834b == uVar.f4834b && this.c == uVar.c;
    }

    public final boolean isComparable(u uVar) {
        return uVar != null && this.f4833a.equals(uVar.f4833a);
    }

    public final int compareToVersion(u uVar) {
        if (uVar == null) {
            throw new IllegalArgumentException("Protocol version must not be null.");
        } else if (this.f4833a.equals(uVar.f4833a)) {
            int major = getMajor() - uVar.getMajor();
            return major == 0 ? getMinor() - uVar.getMinor() : major;
        } else {
            throw new IllegalArgumentException("Versions for different protocols cannot be compared. " + this + " " + uVar);
        }
    }

    public final boolean greaterEquals(u uVar) {
        return isComparable(uVar) && compareToVersion(uVar) >= 0;
    }

    public final boolean lessEquals(u uVar) {
        return isComparable(uVar) && compareToVersion(uVar) <= 0;
    }

    public final String toString() {
        return this.f4833a + '/' + Integer.toString(this.f4834b) + '.' + Integer.toString(this.c);
    }

    public final Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
