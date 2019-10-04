package org.eclipse.paho.a.a.c;

import java.io.File;
import java.io.FilenameFilter;

public final class d implements FilenameFilter {

    /* renamed from: a  reason: collision with root package name */
    private final String f8783a;

    public d(String str) {
        this.f8783a = str;
    }

    public final boolean accept(File file, String str) {
        return str.endsWith(this.f8783a);
    }
}
