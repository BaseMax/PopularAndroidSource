package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;

/* renamed from: c.e.d.b.a.s  reason: case insensitive filesystem */
/* compiled from: TypeAdapters */
class C1024s extends x<Character> {
    public Character a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        String I = bVar.I();
        if (I.length() == 1) {
            return Character.valueOf(I.charAt(0));
        }
        throw new JsonSyntaxException("Expecting character, got: " + I);
    }

    public void a(c cVar, Character ch) {
        cVar.h(ch == null ? null : String.valueOf(ch));
    }
}
