package com.a.a.c;

import java.io.File;
import java.util.Map;

interface af {
    Map<String, String> getCustomHeaders();

    File getFile();

    String getFileName();

    File[] getFiles();

    String getIdentifier();

    void remove();
}
