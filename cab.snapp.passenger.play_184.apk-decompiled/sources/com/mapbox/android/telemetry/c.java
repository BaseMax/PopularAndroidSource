package com.mapbox.android.telemetry;

import java.util.List;

public interface c {
    void onAttachmentFailure(String str, List<String> list);

    void onAttachmentResponse(String str, int i, List<String> list);
}
