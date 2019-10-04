package com.google.zxing;

import java.util.Map;

public interface j {
    l decode(b bVar) throws h, c, d;

    l decode(b bVar, Map<DecodeHintType, ?> map) throws h, c, d;

    void reset();
}
