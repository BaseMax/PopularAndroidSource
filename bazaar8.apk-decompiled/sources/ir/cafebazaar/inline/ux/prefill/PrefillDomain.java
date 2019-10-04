package ir.cafebazaar.inline.ux.prefill;

public enum PrefillDomain {
    page,
    session,
    application,
    global;

    public boolean a(PrefillDomain prefillDomain) {
        int i2 = a.f14492a[ordinal()];
        boolean z = false;
        if (i2 == 2) {
            if (prefillDomain == page || prefillDomain == session || prefillDomain == application) {
                z = true;
            }
            return z;
        } else if (i2 == 3) {
            if (prefillDomain == page || prefillDomain == session) {
                z = true;
            }
            return z;
        } else if (i2 != 4) {
            return true;
        } else {
            if (prefillDomain == page) {
                z = true;
            }
            return z;
        }
    }

    public PrefillDomain f() {
        int i2 = a.f14492a[ordinal()];
        if (i2 == 1) {
            return application;
        }
        if (i2 == 2) {
            return session;
        }
        if (i2 != 3) {
            return page;
        }
        return page;
    }
}
