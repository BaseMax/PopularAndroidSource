package com.koushikdutta.ion.builder;

import java.io.File;

public interface LoadBuilder<B> {
    B load(File file);

    B load(String str);

    B load(String str, String str2);
}
