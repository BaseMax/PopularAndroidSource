package com.adjust.sdk;

import org.a.c;

public class AdjustEventSuccess {
    public String adid;
    public String eventToken;
    public c jsonResponse;
    public String message;
    public String timestamp;

    public String toString() {
        return Util.formatString("Event Success msg:%s time:%s adid:%s event:%s json:%s", this.message, this.timestamp, this.adid, this.eventToken, this.jsonResponse);
    }
}
