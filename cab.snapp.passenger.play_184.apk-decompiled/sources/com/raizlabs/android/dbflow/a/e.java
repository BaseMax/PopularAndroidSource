package com.raizlabs.android.dbflow.a;

public final class e extends h<String, Character> {
    public final String getDBValue(Character ch) {
        if (ch == null) {
            return null;
        }
        return new String(new char[]{ch.charValue()});
    }

    public final Character getModelValue(String str) {
        if (str != null) {
            return Character.valueOf(str.charAt(0));
        }
        return null;
    }
}
