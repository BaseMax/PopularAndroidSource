package com.raizlabs.android.dbflow.a;

import java.util.UUID;

public final class i extends h<String, UUID> {
    public final String getDBValue(UUID uuid) {
        if (uuid != null) {
            return uuid.toString();
        }
        return null;
    }

    public final UUID getModelValue(String str) {
        if (str == null) {
            return null;
        }
        return UUID.fromString(str);
    }
}
