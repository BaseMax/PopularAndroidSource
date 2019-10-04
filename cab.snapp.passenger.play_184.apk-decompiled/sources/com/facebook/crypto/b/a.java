package com.facebook.crypto.b;

import com.facebook.crypto.a.b;

public interface a {
    void destroyKeys();

    byte[] getCipherKey() throws b;

    byte[] getMacKey() throws b;

    byte[] getNewIV() throws b;
}
