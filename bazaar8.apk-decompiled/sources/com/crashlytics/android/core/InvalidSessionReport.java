package com.crashlytics.android.core;

import com.crashlytics.android.core.Report;
import e.a.a.a.f;
import e.a.a.a.o;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class InvalidSessionReport implements Report {
    public final Map<String, String> customHeaders = new HashMap(ReportUploader.HEADER_INVALID_CLS_FILE);
    public final File[] files;
    public final String identifier;

    public InvalidSessionReport(String str, File[] fileArr) {
        this.files = fileArr;
        this.identifier = str;
    }

    public Map<String, String> getCustomHeaders() {
        return Collections.unmodifiableMap(this.customHeaders);
    }

    public File getFile() {
        return this.files[0];
    }

    public String getFileName() {
        return this.files[0].getName();
    }

    public File[] getFiles() {
        return this.files;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public Report.Type getType() {
        return Report.Type.JAVA;
    }

    public void remove() {
        for (File path : this.files) {
            o e2 = f.e();
            e2.d(CrashlyticsCore.TAG, "Removing invalid report file at " + path.getPath());
            r0[r2].delete();
        }
    }
}
