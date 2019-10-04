package com.crashlytics.android.core;

import e.a.a.a.a.b.j;
import e.a.a.a.f;
import e.a.a.a.o;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ReportUploader {
    public static final Map<String, String> HEADER_INVALID_CLS_FILE = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
    public static final short[] RETRY_INTERVALS = {10, 20, 30, 60, 120, 300};
    public final String apiKey;
    public final CreateReportSpiCall createReportCall;
    public final Object fileAccessLock = new Object();
    public final HandlingExceptionCheck handlingExceptionCheck;
    public final ReportFilesProvider reportFilesProvider;
    public Thread uploadThread;

    static final class AlwaysSendCheck implements SendCheck {
        public boolean canSendReports() {
            return true;
        }
    }

    interface HandlingExceptionCheck {
        boolean isHandlingException();
    }

    interface ReportFilesProvider {
        File[] getCompleteSessionFiles();

        File[] getInvalidSessionFiles();

        File[] getNativeReportFiles();
    }

    interface SendCheck {
        boolean canSendReports();
    }

    private class Worker extends j {
        public final float delay;
        public final SendCheck sendCheck;

        public Worker(float f2, SendCheck sendCheck2) {
            this.delay = f2;
            this.sendCheck = sendCheck2;
        }

        private void attemptUploadWithRetry() {
            o e2 = f.e();
            e2.d(CrashlyticsCore.TAG, "Starting report processing in " + this.delay + " second(s)...");
            float f2 = this.delay;
            if (f2 > 0.0f) {
                try {
                    Thread.sleep((long) (f2 * 1000.0f));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            List<Report> findReports = ReportUploader.this.findReports();
            if (!ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                if (findReports.isEmpty() || this.sendCheck.canSendReports()) {
                    int i2 = 0;
                    while (!findReports.isEmpty() && !ReportUploader.this.handlingExceptionCheck.isHandlingException()) {
                        o e3 = f.e();
                        e3.d(CrashlyticsCore.TAG, "Attempting to send " + findReports.size() + " report(s)");
                        for (Report forceUpload : findReports) {
                            ReportUploader.this.forceUpload(forceUpload);
                        }
                        findReports = ReportUploader.this.findReports();
                        if (!findReports.isEmpty()) {
                            int i3 = i2 + 1;
                            long j2 = (long) ReportUploader.RETRY_INTERVALS[Math.min(i2, ReportUploader.RETRY_INTERVALS.length - 1)];
                            o e4 = f.e();
                            e4.d(CrashlyticsCore.TAG, "Report submisson: scheduling delayed retry in " + j2 + " seconds");
                            try {
                                Thread.sleep(j2 * 1000);
                                i2 = i3;
                            } catch (InterruptedException unused2) {
                                Thread.currentThread().interrupt();
                                return;
                            }
                        }
                    }
                    return;
                }
                o e5 = f.e();
                e5.d(CrashlyticsCore.TAG, "User declined to send. Removing " + findReports.size() + " Report(s).");
                for (Report remove : findReports) {
                    remove.remove();
                }
            }
        }

        public void onRun() {
            try {
                attemptUploadWithRetry();
            } catch (Exception e2) {
                f.e().b(CrashlyticsCore.TAG, "An unexpected error occurred while attempting to upload crash reports.", e2);
            }
            Thread unused = ReportUploader.this.uploadThread = null;
        }
    }

    public ReportUploader(String str, CreateReportSpiCall createReportSpiCall, ReportFilesProvider reportFilesProvider2, HandlingExceptionCheck handlingExceptionCheck2) {
        if (createReportSpiCall != null) {
            this.createReportCall = createReportSpiCall;
            this.apiKey = str;
            this.reportFilesProvider = reportFilesProvider2;
            this.handlingExceptionCheck = handlingExceptionCheck2;
            return;
        }
        throw new IllegalArgumentException("createReportCall must not be null.");
    }

    public List<Report> findReports() {
        File[] completeSessionFiles;
        File[] invalidSessionFiles;
        File[] nativeReportFiles;
        f.e().d(CrashlyticsCore.TAG, "Checking for crash reports...");
        synchronized (this.fileAccessLock) {
            completeSessionFiles = this.reportFilesProvider.getCompleteSessionFiles();
            invalidSessionFiles = this.reportFilesProvider.getInvalidSessionFiles();
            nativeReportFiles = this.reportFilesProvider.getNativeReportFiles();
        }
        LinkedList linkedList = new LinkedList();
        if (completeSessionFiles != null) {
            for (File path : completeSessionFiles) {
                f.e().d(CrashlyticsCore.TAG, "Found crash report " + path.getPath());
                linkedList.add(new SessionReport(completeSessionFiles[r6]));
            }
        }
        HashMap hashMap = new HashMap();
        if (invalidSessionFiles != null) {
            for (File file : invalidSessionFiles) {
                String sessionIdFromSessionFile = CrashlyticsController.getSessionIdFromSessionFile(file);
                if (!hashMap.containsKey(sessionIdFromSessionFile)) {
                    hashMap.put(sessionIdFromSessionFile, new LinkedList());
                }
                ((List) hashMap.get(sessionIdFromSessionFile)).add(file);
            }
        }
        for (String str : hashMap.keySet()) {
            f.e().d(CrashlyticsCore.TAG, "Found invalid session: " + str);
            List list = (List) hashMap.get(str);
            linkedList.add(new InvalidSessionReport(str, (File[]) list.toArray(new File[list.size()])));
        }
        if (nativeReportFiles != null) {
            for (File nativeSessionReport : nativeReportFiles) {
                linkedList.add(new NativeSessionReport(nativeSessionReport));
            }
        }
        if (linkedList.isEmpty()) {
            f.e().d(CrashlyticsCore.TAG, "No reports found.");
        }
        return linkedList;
    }

    public boolean forceUpload(Report report) {
        boolean z;
        synchronized (this.fileAccessLock) {
            z = false;
            try {
                boolean invoke = this.createReportCall.invoke(new CreateReportRequest(this.apiKey, report));
                o e2 = f.e();
                StringBuilder sb = new StringBuilder();
                sb.append("Crashlytics report upload ");
                sb.append(invoke ? "complete: " : "FAILED: ");
                sb.append(report.getIdentifier());
                e2.e(CrashlyticsCore.TAG, sb.toString());
                if (invoke) {
                    report.remove();
                    z = true;
                }
            } catch (Exception e3) {
                o e4 = f.e();
                e4.b(CrashlyticsCore.TAG, "Error occurred sending report " + report, e3);
            }
        }
        return z;
    }

    public boolean isUploading() {
        return this.uploadThread != null;
    }

    public synchronized void uploadReports(float f2, SendCheck sendCheck) {
        if (this.uploadThread != null) {
            f.e().d(CrashlyticsCore.TAG, "Report upload has already been started.");
            return;
        }
        this.uploadThread = new Thread(new Worker(f2, sendCheck), "Crashlytics Report Uploader");
        this.uploadThread.start();
    }
}
