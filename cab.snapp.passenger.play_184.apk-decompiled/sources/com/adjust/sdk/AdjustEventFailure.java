package com.adjust.sdk;

import org.a.c;

public class AdjustEventFailure {
    public String adid;
    public String eventToken;
    public c jsonResponse;
    public String message;
    public String timestamp;
    public boolean willRetry;

    public String toString() {
        return Util.formatString("Event Failure msg:%s time:%s adid:%s event:%s retry:%b json:%s", this.message, this.timestamp, this.adid, this.eventToken, Boolean.valueOf(this.willRetry), this.jsonResponse);
    }
}
