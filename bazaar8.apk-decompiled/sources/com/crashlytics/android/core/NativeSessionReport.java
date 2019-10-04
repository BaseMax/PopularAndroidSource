package com.crashlytics.android.core;

import com.crashlytics.android.core.Report;
import e.a.a.a.f;
import e.a.a.a.o;
import java.io.File;
import java.util.Map;

public class NativeSessionReport implements Report {
    public final File reportDirectory;

    public NativeSessionReport(File file) {
        this.reportDirectory = file;
    }

    public Map<String, String> getCustomHeaders() {
        return null;
    }

    public File getFile() {
        return null;
    }

    public String getFileName() {
        return null;
    }

    public File[] getFiles() {
        return this.reportDirectory.listFiles();
    }

    public String getIdentifier() {
        return this.reportDirectory.getName();
    }

    public Report.Type getType() {
        return Report.Type.NATIVE;
    }

    public void remove() {
        for (File path : getFiles()) {
            o e2 = f.e();
            e2.d(CrashlyticsCore.TAG, "Removing native report file at " + path.getPath());
            r0[r2].delete();
        }
        f.e().d(CrashlyticsCore.TAG, "Removing native report directory at " + this.reportDirectory);
        this.reportDirectory.delete();
    }
}
