package com.yandex.metrica.impl.ob;

import android.content.Context;

@Deprecated
public class jb extends ix {
    private static final je c = new je("PREF_KEY_OFFSET");
    private je d = new je(c.a(), null);

    /* access modifiers changed from: protected */
    public String f() {
        return "_servertimeoffset";
    }

    public jb(Context context, String str) {
        super(context, str);
    }

    public long a(int i) {
        return this.f6173b.getLong(this.d.b(), (long) i);
    }

    public void a() {
        h(this.d.b()).j();
    }
}
