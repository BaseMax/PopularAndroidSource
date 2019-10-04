package com.google.gson.internal;

import com.google.gson.stream.JsonReader;
import java.io.IOException;

public abstract class e {
    public static e INSTANCE;

    public abstract void promoteNameToValue(JsonReader jsonReader) throws IOException;
}
