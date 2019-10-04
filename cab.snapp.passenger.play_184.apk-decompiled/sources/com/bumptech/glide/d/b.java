package com.bumptech.glide.d;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f2005a = new ArrayList();

    public final synchronized List<ImageHeaderParser> getParsers() {
        return this.f2005a;
    }

    public final synchronized void add(ImageHeaderParser imageHeaderParser) {
        this.f2005a.add(imageHeaderParser);
    }
}
