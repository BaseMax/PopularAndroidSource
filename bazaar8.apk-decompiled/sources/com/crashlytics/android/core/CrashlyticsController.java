package com.crashlytics.android.core;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.EventLogger;
import com.crashlytics.android.core.CrashPromptDialog;
import com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler;
import com.crashlytics.android.core.LogFileManager;
import com.crashlytics.android.core.ReportUploader;
import e.a.a.a.a.b.l;
import e.a.a.a.a.e.f;
import e.a.a.a.a.f.a;
import e.a.a.a.a.g.e;
import e.a.a.a.a.g.n;
import e.a.a.a.a.g.p;
import e.a.a.a.a.g.q;
import e.a.a.a.a.g.s;
import e.a.a.a.a.g.u;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

public class CrashlyticsController {
    public static final int ANALYZER_VERSION = 1;
    public static final String COLLECT_CUSTOM_KEYS = "com.crashlytics.CollectCustomKeys";
    public static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    public static final String EVENT_TYPE_CRASH = "crash";
    public static final String EVENT_TYPE_LOGGED = "error";
    public static final String FATAL_SESSION_DIR = "fatal-sessions";
    public static final String FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS = "clx";
    public static final String FIREBASE_APPLICATION_EXCEPTION = "_ae";
    public static final String FIREBASE_CRASH_TYPE = "fatal";
    public static final int FIREBASE_CRASH_TYPE_FATAL = 1;
    public static final String FIREBASE_REALTIME = "_r";
    public static final String FIREBASE_TIMESTAMP = "timestamp";
    public static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    public static final String[] INITIAL_SESSION_PART_TAGS = {SESSION_USER_TAG, SESSION_APP_TAG, SESSION_OS_TAG, SESSION_DEVICE_TAG};
    public static final String INVALID_CLS_CACHE_DIR = "invalidClsFiles";
    public static final Comparator<File> LARGEST_FILE_NAME_FIRST = new Comparator<File>() {
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    };
    public static final int MAX_INVALID_SESSIONS = 4;
    public static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    public static final int MAX_OPEN_SESSIONS = 8;
    public static final int MAX_STACK_SIZE = 1024;
    public static final String NONFATAL_SESSION_DIR = "nonfatal-sessions";
    public static final int NUM_STACK_REPETITIONS_ALLOWED = 10;
    public static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    public static final String SESSION_APP_TAG = "SessionApp";
    public static final FilenameFilter SESSION_BEGIN_FILE_FILTER = new FileNameContainsFilter(SESSION_BEGIN_TAG) {
        public boolean accept(File file, String str) {
            return super.accept(file, str) && str.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    public static final String SESSION_BEGIN_TAG = "BeginSession";
    public static final String SESSION_DEVICE_TAG = "SessionDevice";
    public static final FileFilter SESSION_DIRECTORY_FILTER = new FileFilter() {
        public boolean accept(File file) {
            return file.isDirectory() && file.getName().length() == 35;
        }
    };
    public static final String SESSION_EVENT_MISSING_BINARY_IMGS_TAG = "SessionMissingBinaryImages";
    public static final String SESSION_FATAL_TAG = "SessionCrash";
    public static final FilenameFilter SESSION_FILE_FILTER = new FilenameFilter() {
        public boolean accept(File file, String str) {
            return str.length() == 39 && str.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    public static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    public static final int SESSION_ID_LENGTH = 35;
    public static final String SESSION_JSON_SUFFIX = ".json";
    public static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    public static final String SESSION_OS_TAG = "SessionOS";
    public static final String SESSION_USER_TAG = "SessionUser";
    public static final boolean SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT = false;
    public static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new Comparator<File>() {
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    };
    public final AppData appData;
    public final AppMeasurementEventListenerRegistrar appMeasurementEventListenerRegistrar;
    public final CrashlyticsBackgroundWorker backgroundWorker;
    public CrashlyticsUncaughtExceptionHandler crashHandler;
    public final CrashlyticsCore crashlyticsCore;
    public final DevicePowerStateListener devicePowerStateListener;
    public final AtomicInteger eventCounter = new AtomicInteger(0);
    public final a fileStore;
    public final EventLogger firebaseAnalyticsLogger;
    public final ReportUploader.HandlingExceptionCheck handlingExceptionCheck;
    public final f httpRequestFactory;
    public final IdManager idManager;
    public final LogFileDirectoryProvider logFileDirectoryProvider;
    public final LogFileManager logFileManager;
    public final PreferenceManager preferenceManager;
    public final ReportUploader.ReportFilesProvider reportFilesProvider;
    public final StackTraceTrimmingStrategy stackTraceTrimmingStrategy;
    public final String unityVersion;

    private static class AnySessionPartFileFilter implements FilenameFilter {
        public AnySessionPartFileFilter() {
        }

        public boolean accept(File file, String str) {
            return !CrashlyticsController.SESSION_FILE_FILTER.accept(file, str) && CrashlyticsController.SESSION_FILE_PATTERN.matcher(str).matches();
        }
    }

    private interface CodedOutputStreamWriteAction {
        void writeTo(CodedOutputStream codedOutputStream);
    }

    private static final class DefaultSettingsDataProvider implements CrashlyticsUncaughtExceptionHandler.SettingsDataProvider {
        public DefaultSettingsDataProvider() {
        }

        public u getSettingsData() {
            return s.b().a();
        }
    }

    static class FileNameContainsFilter implements FilenameFilter {
        public final String string;

        public FileNameContainsFilter(String str) {
            this.string = str;
        }

        public boolean accept(File file, String str) {
            return str.contains(this.string) && !str.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    private interface FileOutputStreamWriteAction {
        void writeTo(FileOutputStream fileOutputStream);
    }

    static class InvalidPartFileFilter implements FilenameFilter {
        public boolean accept(File file, String str) {
            return ClsFileOutputStream.TEMP_FILENAME_FILTER.accept(file, str) || str.contains(CrashlyticsController.SESSION_EVENT_MISSING_BINARY_IMGS_TAG);
        }
    }

    private static final class LogFileDirectoryProvider implements LogFileManager.DirectoryProvider {
        public static final String LOG_FILES_DIR = "log-files";
        public final a rootFileStore;

        public LogFileDirectoryProvider(a aVar) {
            this.rootFileStore = aVar;
        }

        public File getLogFileDir() {
            File file = new File(this.rootFileStore.a(), LOG_FILES_DIR);
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    private static final class PrivacyDialogCheck implements ReportUploader.SendCheck {
        public final l kit;
        public final PreferenceManager preferenceManager;
        public final p promptData;

        public PrivacyDialogCheck(l lVar, PreferenceManager preferenceManager2, p pVar) {
            this.kit = lVar;
            this.preferenceManager = preferenceManager2;
            this.promptData = pVar;
        }

        public boolean canSendReports() {
            Activity a2 = this.kit.getFabric().a();
            if (a2 == null || a2.isFinishing()) {
                return true;
            }
            final CrashPromptDialog create = CrashPromptDialog.create(a2, this.promptData, new CrashPromptDialog.AlwaysSendCallback() {
                public void sendUserReportsWithoutPrompting(boolean z) {
                    PrivacyDialogCheck.this.preferenceManager.setShouldAlwaysSendReports(z);
                }
            });
            a2.runOnUiThread(new Runnable() {
                public void run() {
                    create.show();
                }
            });
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Waiting for user opt-in.");
            create.await();
            return create.getOptIn();
        }
    }

    private final class ReportUploaderFilesProvider implements ReportUploader.ReportFilesProvider {
        public ReportUploaderFilesProvider() {
        }

        public File[] getCompleteSessionFiles() {
            return CrashlyticsController.this.listCompleteSessionFiles();
        }

        public File[] getInvalidSessionFiles() {
            return CrashlyticsController.this.getInvalidFilesDir().listFiles();
        }

        public File[] getNativeReportFiles() {
            return CrashlyticsController.this.listNativeSessionFileDirectories();
        }
    }

    private final class ReportUploaderHandlingExceptionCheck implements ReportUploader.HandlingExceptionCheck {
        public ReportUploaderHandlingExceptionCheck() {
        }

        public boolean isHandlingException() {
            return CrashlyticsController.this.isHandlingException();
        }
    }

    private static final class SendReportRunnable implements Runnable {
        public final Context context;
        public final Report report;
        public final ReportUploader reportUploader;

        public SendReportRunnable(Context context2, Report report2, ReportUploader reportUploader2) {
            this.context = context2;
            this.report = report2;
            this.reportUploader = reportUploader2;
        }

        public void run() {
            if (CommonUtils.b(this.context)) {
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Attempting to send crash report at time of crash...");
                this.reportUploader.forceUpload(this.report);
            }
        }
    }

    static class SessionPartFileFilter implements FilenameFilter {
        public final String sessionId;

        public SessionPartFileFilter(String str) {
            this.sessionId = str;
        }

        public boolean accept(File file, String str) {
            boolean z = false;
            if (str.equals(this.sessionId + ClsFileOutputStream.SESSION_FILE_EXTENSION)) {
                return false;
            }
            if (str.contains(this.sessionId) && !str.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION)) {
                z = true;
            }
            return z;
        }
    }

    public CrashlyticsController(CrashlyticsCore crashlyticsCore2, CrashlyticsBackgroundWorker crashlyticsBackgroundWorker, f fVar, IdManager idManager2, PreferenceManager preferenceManager2, a aVar, AppData appData2, UnityVersionProvider unityVersionProvider, AppMeasurementEventListenerRegistrar appMeasurementEventListenerRegistrar2, EventLogger eventLogger) {
        this.crashlyticsCore = crashlyticsCore2;
        this.backgroundWorker = crashlyticsBackgroundWorker;
        this.httpRequestFactory = fVar;
        this.idManager = idManager2;
        this.preferenceManager = preferenceManager2;
        this.fileStore = aVar;
        this.appData = appData2;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        this.appMeasurementEventListenerRegistrar = appMeasurementEventListenerRegistrar2;
        this.firebaseAnalyticsLogger = eventLogger;
        Context context = crashlyticsCore2.getContext();
        this.logFileDirectoryProvider = new LogFileDirectoryProvider(aVar);
        this.logFileManager = new LogFileManager(context, this.logFileDirectoryProvider);
        this.reportFilesProvider = new ReportUploaderFilesProvider();
        this.handlingExceptionCheck = new ReportUploaderHandlingExceptionCheck();
        this.devicePowerStateListener = new DevicePowerStateListener(context);
        this.stackTraceTrimmingStrategy = new MiddleOutFallbackStrategy(1024, new RemoveRepeatsStrategy(10));
    }

    private void closeOpenSessions(File[] fileArr, int i2, int i3) {
        e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Closing open sessions.");
        while (i2 < fileArr.length) {
            File file = fileArr[i2];
            String sessionIdFromSessionFile = getSessionIdFromSessionFile(file);
            o e2 = e.a.a.a.f.e();
            e2.d(CrashlyticsCore.TAG, "Closing session: " + sessionIdFromSessionFile);
            writeSessionPartsToSessionFile(file, sessionIdFromSessionFile, i3);
            i2++;
        }
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream clsFileOutputStream) {
        if (clsFileOutputStream != null) {
            try {
                clsFileOutputStream.closeInProgressStream();
            } catch (IOException e2) {
                e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Error closing session file stream in the presence of an exception", e2);
            }
        }
    }

    public static void copyToCodedOutputStream(InputStream inputStream, CodedOutputStream codedOutputStream, int i2) {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < bArr.length) {
            int read = inputStream.read(bArr, i3, bArr.length - i3);
            if (read < 0) {
                break;
            }
            i3 += read;
        }
        codedOutputStream.writeRawBytes(bArr);
    }

    private void deleteSessionPartFilesFor(String str) {
        for (File delete : listSessionPartFilesFor(str)) {
            delete.delete();
        }
    }

    /* access modifiers changed from: private */
    public void doOpenSession() {
        Date date = new Date();
        String clsuuid = new CLSUUID(this.idManager).toString();
        o e2 = e.a.a.a.f.e();
        e2.d(CrashlyticsCore.TAG, "Opening a new session with ID " + clsuuid);
        writeBeginSession(clsuuid, date);
        writeSessionApp(clsuuid);
        writeSessionOS(clsuuid);
        writeSessionDevice(clsuuid);
        this.logFileManager.setCurrentSession(clsuuid);
    }

    /* access modifiers changed from: private */
    public void doWriteNonFatal(Date date, Thread thread, Throwable th) {
        ClsFileOutputStream clsFileOutputStream;
        String currentSessionId = getCurrentSessionId();
        CodedOutputStream codedOutputStream = null;
        if (currentSessionId == null) {
            e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        recordLoggedExceptionAnswersEvent(currentSessionId, th.getClass().getName());
        try {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
            String b2 = CommonUtils.b(this.eventCounter.getAndIncrement());
            clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_NON_FATAL_TAG + b2);
            try {
                CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) clsFileOutputStream);
                try {
                    writeSessionEvent(newInstance, date, thread, th, EVENT_TYPE_LOGGED, false);
                    CommonUtils.a((Flushable) newInstance, "Failed to flush to non-fatal file.");
                } catch (Exception e2) {
                    e = e2;
                    codedOutputStream = newInstance;
                    try {
                        e.a.a.a.f.e().b(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
                        CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to non-fatal file.");
                        CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                        trimSessionEventFiles(currentSessionId, 64);
                    } catch (Throwable th2) {
                        th = th2;
                        CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to non-fatal file.");
                        CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    codedOutputStream = newInstance;
                    CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to non-fatal file.");
                    CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                e.a.a.a.f.e().b(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
                CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to non-fatal file.");
                CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                trimSessionEventFiles(currentSessionId, 64);
            }
        } catch (Exception e4) {
            e = e4;
            clsFileOutputStream = null;
            e.a.a.a.f.e().b(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
            CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to non-fatal file.");
            CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
            trimSessionEventFiles(currentSessionId, 64);
        } catch (Throwable th4) {
            th = th4;
            clsFileOutputStream = null;
            CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to non-fatal file.");
            CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
            throw th;
        }
        CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
        try {
            trimSessionEventFiles(currentSessionId, 64);
        } catch (Exception e5) {
            e.a.a.a.f.e().b(CrashlyticsCore.TAG, "An error occurred when trimming non-fatal files.", e5);
        }
    }

    private File[] ensureFileArrayNotNull(File[] fileArr) {
        return fileArr == null ? new File[0] : fileArr;
    }

    /* access modifiers changed from: private */
    public void finalizeMostRecentNativeCrash(Context context, File file, String str) {
        byte[] minidumpFromDirectory = NativeFileUtils.minidumpFromDirectory(file);
        byte[] metadataJsonFromDirectory = NativeFileUtils.metadataJsonFromDirectory(file);
        byte[] binaryImagesJsonFromDirectory = NativeFileUtils.binaryImagesJsonFromDirectory(file, context);
        if (minidumpFromDirectory == null || minidumpFromDirectory.length == 0) {
            o e2 = e.a.a.a.f.e();
            e2.a(CrashlyticsCore.TAG, "No minidump data found in directory " + file);
            return;
        }
        recordFatalExceptionAnswersEvent(str, "<native-crash: minidump>");
        byte[] readFile = readFile(str, "BeginSession.json");
        byte[] readFile2 = readFile(str, "SessionApp.json");
        byte[] readFile3 = readFile(str, "SessionDevice.json");
        byte[] readFile4 = readFile(str, "SessionOS.json");
        byte[] readFile5 = NativeFileUtils.readFile(new MetaDataStore(getFilesDir()).getUserDataFileForSession(str));
        LogFileManager logFileManager2 = new LogFileManager(this.crashlyticsCore.getContext(), this.logFileDirectoryProvider, str);
        byte[] bytesForLog = logFileManager2.getBytesForLog();
        logFileManager2.clearLog();
        byte[] readFile6 = NativeFileUtils.readFile(new MetaDataStore(getFilesDir()).getKeysFileForSession(str));
        File file2 = new File(this.fileStore.a(), str);
        if (!file2.mkdir()) {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Couldn't create native sessions directory");
            return;
        }
        gzipIfNotEmpty(minidumpFromDirectory, new File(file2, "minidump"));
        gzipIfNotEmpty(metadataJsonFromDirectory, new File(file2, "metadata"));
        gzipIfNotEmpty(binaryImagesJsonFromDirectory, new File(file2, "binaryImages"));
        gzipIfNotEmpty(readFile, new File(file2, "session"));
        gzipIfNotEmpty(readFile2, new File(file2, "app"));
        gzipIfNotEmpty(readFile3, new File(file2, "device"));
        gzipIfNotEmpty(readFile4, new File(file2, "os"));
        gzipIfNotEmpty(readFile5, new File(file2, MetaDataStore.USERDATA_SUFFIX));
        gzipIfNotEmpty(bytesForLog, new File(file2, "logs"));
        gzipIfNotEmpty(readFile6, new File(file2, MetaDataStore.KEYDATA_SUFFIX));
    }

    private boolean firebaseCrashExists() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private CreateReportSpiCall getCreateReportSpiCall(String str, String str2) {
        String b2 = CommonUtils.b(this.crashlyticsCore.getContext(), "com.crashlytics.ApiEndpoint");
        return new CompositeCreateReportSpiCall(new DefaultCreateReportSpiCall(this.crashlyticsCore, b2, str, this.httpRequestFactory), new NativeCreateReportSpiCall(this.crashlyticsCore, b2, str2, this.httpRequestFactory));
    }

    /* access modifiers changed from: private */
    public String getCurrentSessionId() {
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        if (listSortedSessionBeginFiles.length > 0) {
            return getSessionIdFromSessionFile(listSortedSessionBeginFiles[0]);
        }
        return null;
    }

    /* access modifiers changed from: private */
    public String getPreviousSessionId() {
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        if (listSortedSessionBeginFiles.length > 1) {
            return getSessionIdFromSessionFile(listSortedSessionBeginFiles[1]);
        }
        return null;
    }

    public static String getSessionIdFromSessionFile(File file) {
        return file.getName().substring(0, 35);
    }

    private File[] getTrimmedNonFatalFiles(String str, File[] fileArr, int i2) {
        if (fileArr.length <= i2) {
            return fileArr;
        }
        e.a.a.a.f.e().d(CrashlyticsCore.TAG, String.format(Locale.US, "Trimming down to %d logged exceptions.", new Object[]{Integer.valueOf(i2)}));
        trimSessionEventFiles(str, i2);
        return listFilesMatching((FilenameFilter) new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
    }

    private UserMetaData getUserMetaData(String str) {
        if (isHandlingException()) {
            return new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail());
        }
        return new MetaDataStore(getFilesDir()).readUserData(str);
    }

    private void gzip(byte[] bArr, File file) {
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            try {
                gZIPOutputStream2.write(bArr);
                gZIPOutputStream2.finish();
                CommonUtils.a((Closeable) gZIPOutputStream2);
            } catch (Throwable th) {
                th = th;
                gZIPOutputStream = gZIPOutputStream2;
                CommonUtils.a((Closeable) gZIPOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            CommonUtils.a((Closeable) gZIPOutputStream);
            throw th;
        }
    }

    private void gzipIfNotEmpty(byte[] bArr, File file) {
        if (bArr != null && bArr.length > 0) {
            gzip(bArr, file);
        }
    }

    private File[] listFiles(File file) {
        return ensureFileArrayNotNull(file.listFiles());
    }

    private File[] listFilesMatching(FileFilter fileFilter) {
        return ensureFileArrayNotNull(getFilesDir().listFiles(fileFilter));
    }

    private File[] listSessionPartFilesFor(String str) {
        return listFilesMatching((FilenameFilter) new SessionPartFileFilter(str));
    }

    private File[] listSortedSessionBeginFiles() {
        File[] listSessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(listSessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        return listSessionBeginFiles;
    }

    private byte[] readFile(String str, String str2) {
        File filesDir = getFilesDir();
        return NativeFileUtils.readFile(new File(filesDir, str + str2));
    }

    public static void recordFatalExceptionAnswersEvent(String str, String str2) {
        Answers answers = (Answers) e.a.a.a.f.a(Answers.class);
        if (answers == null) {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Answers is not available");
        } else {
            answers.onException(new l.a(str, str2));
        }
    }

    /* access modifiers changed from: private */
    public void recordFatalFirebaseEvent(long j2) {
        if (firebaseCrashExists()) {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return;
        }
        if (this.firebaseAnalyticsLogger != null) {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Logging Crashlytics event to Firebase");
            Bundle bundle = new Bundle();
            bundle.putInt(FIREBASE_REALTIME, 1);
            bundle.putInt(FIREBASE_CRASH_TYPE, 1);
            bundle.putLong("timestamp", j2);
            this.firebaseAnalyticsLogger.logEvent(FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS, FIREBASE_APPLICATION_EXCEPTION, bundle);
        } else {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Skipping logging Crashlytics event to Firebase, no Firebase Analytics");
        }
    }

    public static void recordLoggedExceptionAnswersEvent(String str, String str2) {
        Answers answers = (Answers) e.a.a.a.f.a(Answers.class);
        if (answers == null) {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Answers is not available");
        } else {
            answers.onException(new l.b(str, str2));
        }
    }

    /* access modifiers changed from: private */
    public void recursiveDelete(Set<File> set) {
        for (File recursiveDelete : set) {
            recursiveDelete(recursiveDelete);
        }
    }

    private void retainSessions(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            Matcher matcher = SESSION_FILE_PATTERN.matcher(file.getName());
            if (!matcher.matches()) {
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Deleting unknown file: " + r3);
                file.delete();
            } else if (!set.contains(matcher.group(1))) {
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Trimming session file: " + r3);
                file.delete();
            }
        }
    }

    /* access modifiers changed from: private */
    public void sendSessionReports(u uVar) {
        if (uVar == null) {
            e.a.a.a.f.e().a(CrashlyticsCore.TAG, "Cannot send reports. Settings are unavailable.");
            return;
        }
        Context context = this.crashlyticsCore.getContext();
        e eVar = uVar.f13845a;
        ReportUploader reportUploader = new ReportUploader(this.appData.apiKey, getCreateReportSpiCall(eVar.f13802d, eVar.f13803e), this.reportFilesProvider, this.handlingExceptionCheck);
        for (File sessionReport : listCompleteSessionFiles()) {
            this.backgroundWorker.submit((Runnable) new SendReportRunnable(context, new SessionReport(sessionReport, SEND_AT_CRASHTIME_HEADER), reportUploader));
        }
    }

    /* access modifiers changed from: private */
    public boolean shouldPromptUserBeforeSendingCrashReports(u uVar) {
        boolean z = false;
        if (uVar == null) {
            return false;
        }
        if (uVar.f13848d.f13817a && !this.preferenceManager.shouldAlwaysSendReports()) {
            z = true;
        }
        return z;
    }

    private void synthesizeSessionFile(File file, String str, File[] fileArr, File file2) {
        ClsFileOutputStream clsFileOutputStream;
        String str2 = str;
        File file3 = file2;
        boolean z = file3 != null;
        File fatalSessionFilesDir = z ? getFatalSessionFilesDir() : getNonFatalSessionFilesDir();
        if (!fatalSessionFilesDir.exists()) {
            fatalSessionFilesDir.mkdirs();
        }
        try {
            clsFileOutputStream = new ClsFileOutputStream(fatalSessionFilesDir, str2);
            try {
                CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) clsFileOutputStream);
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Collecting SessionStart data for session ID " + str2);
                writeToCosFromFile(newInstance, file);
                newInstance.writeUInt64(4, new Date().getTime() / 1000);
                newInstance.writeBool(5, z);
                newInstance.writeUInt32(11, 1);
                newInstance.writeEnum(12, 3);
                writeInitialPartsTo(newInstance, str2);
                writeNonFatalEventsTo(newInstance, fileArr, str2);
                if (z) {
                    writeToCosFromFile(newInstance, file3);
                }
                CommonUtils.a((Flushable) newInstance, "Error flushing session file stream");
                CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
            } catch (Exception e2) {
                e = e2;
                try {
                    e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Failed to write session file for session ID: " + str2, e);
                    CommonUtils.a((Flushable) null, "Error flushing session file stream");
                    closeWithoutRenamingOrLog(clsFileOutputStream);
                } catch (Throwable th) {
                    th = th;
                    CommonUtils.a((Flushable) null, "Error flushing session file stream");
                    CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream = null;
            e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Failed to write session file for session ID: " + str2, e);
            CommonUtils.a((Flushable) null, "Error flushing session file stream");
            closeWithoutRenamingOrLog(clsFileOutputStream);
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
            CommonUtils.a((Flushable) null, "Error flushing session file stream");
            CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close CLS file");
            throw th;
        }
    }

    private void trimInvalidSessionFiles() {
        File invalidFilesDir = getInvalidFilesDir();
        if (invalidFilesDir.exists()) {
            File[] listFilesMatching = listFilesMatching(invalidFilesDir, new InvalidPartFileFilter());
            Arrays.sort(listFilesMatching, Collections.reverseOrder());
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < listFilesMatching.length && hashSet.size() < 4; i2++) {
                hashSet.add(getSessionIdFromSessionFile(listFilesMatching[i2]));
            }
            retainSessions(listFiles(invalidFilesDir), hashSet);
        }
    }

    private void trimOpenSessions(int i2) {
        HashSet hashSet = new HashSet();
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        int min = Math.min(i2, listSortedSessionBeginFiles.length);
        for (int i3 = 0; i3 < min; i3++) {
            hashSet.add(getSessionIdFromSessionFile(listSortedSessionBeginFiles[i3]));
        }
        this.logFileManager.discardOldLogFiles(hashSet);
        retainSessions(listFilesMatching((FilenameFilter) new AnySessionPartFileFilter()), hashSet);
    }

    private void trimSessionEventFiles(String str, int i2) {
        File filesDir = getFilesDir();
        Utils.capFileCount(filesDir, new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG), i2, SMALLEST_FILE_NAME_FIRST);
    }

    private void writeBeginSession(String str, Date date) {
        final String str2 = str;
        final String format = String.format(Locale.US, GENERATOR_FORMAT, new Object[]{this.crashlyticsCore.getVersion()});
        final long time = date.getTime() / 1000;
        AnonymousClass17 r3 = new CodedOutputStreamWriteAction() {
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeBeginSession(codedOutputStream, str2, format, time);
            }
        };
        writeSessionPartFile(str, SESSION_BEGIN_TAG, r3);
        AnonymousClass18 r32 = new FileOutputStreamWriteAction() {
            public void writeTo(FileOutputStream fileOutputStream) {
                fileOutputStream.write(new JSONObject(new HashMap<String, Object>() {
                    {
                        put("session_id", str2);
                        put("generator", format);
                        put("started_at_seconds", Long.valueOf(time));
                    }
                }).toString().getBytes());
            }
        };
        writeFile(str, "BeginSession.json", r32);
    }

    /* access modifiers changed from: private */
    public void writeFatal(Date date, Thread thread, Throwable th) {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream = null;
        try {
            String currentSessionId = getCurrentSessionId();
            if (currentSessionId == null) {
                e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Tried to write a fatal exception while no session was open.", null);
                CommonUtils.a((Flushable) null, "Failed to flush to session begin file.");
                CommonUtils.a((Closeable) null, "Failed to close fatal exception file output stream.");
                return;
            }
            recordFatalExceptionAnswersEvent(currentSessionId, th.getClass().getName());
            clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_FATAL_TAG);
            try {
                codedOutputStream = CodedOutputStream.newInstance((OutputStream) clsFileOutputStream);
                writeSessionEvent(codedOutputStream, date, thread, th, "crash", true);
            } catch (Exception e2) {
                e = e2;
            }
            CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to session begin file.");
            CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream = null;
            try {
                e.a.a.a.f.e().b(CrashlyticsCore.TAG, "An error occurred in the fatal exception logger", e);
                CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to session begin file.");
                CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to session begin file.");
                CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            clsFileOutputStream = null;
            CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to session begin file.");
            CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
            throw th;
        }
    }

    private void writeFile(String str, String str2, FileOutputStreamWriteAction fileOutputStreamWriteAction) {
        FileOutputStream fileOutputStream = null;
        try {
            File filesDir = getFilesDir();
            FileOutputStream fileOutputStream2 = new FileOutputStream(new File(filesDir, str + str2));
            try {
                fileOutputStreamWriteAction.writeTo(fileOutputStream2);
                CommonUtils.a((Closeable) fileOutputStream2, "Failed to close " + str2 + " file.");
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                CommonUtils.a((Closeable) fileOutputStream, "Failed to close " + str2 + " file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            CommonUtils.a((Closeable) fileOutputStream, "Failed to close " + str2 + " file.");
            throw th;
        }
    }

    private void writeInitialPartsTo(CodedOutputStream codedOutputStream, String str) {
        for (String str2 : INITIAL_SESSION_PART_TAGS) {
            File[] listFilesMatching = listFilesMatching((FilenameFilter) new FileNameContainsFilter(str + str2 + ClsFileOutputStream.SESSION_FILE_EXTENSION));
            if (listFilesMatching.length == 0) {
                e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Can't find " + str2 + " data for session ID " + str, null);
            } else {
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Collecting " + str2 + " data for session ID " + str);
                writeToCosFromFile(codedOutputStream, listFilesMatching[0]);
            }
        }
    }

    public static void writeNonFatalEventsTo(CodedOutputStream codedOutputStream, File[] fileArr, String str) {
        Arrays.sort(fileArr, CommonUtils.f14890d);
        for (File file : fileArr) {
            try {
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", new Object[]{str, file.getName()}));
                writeToCosFromFile(codedOutputStream, file);
            } catch (Exception e2) {
                e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Error writting non-fatal to session.", e2);
            }
        }
    }

    private void writeSessionApp(String str) {
        String d2 = this.idManager.d();
        AppData appData2 = this.appData;
        String str2 = appData2.versionCode;
        String str3 = appData2.versionName;
        final String str4 = d2;
        final String str5 = str2;
        final String str6 = str3;
        final String e2 = this.idManager.e();
        final int id = DeliveryMechanism.a(this.appData.installerPackageName).getId();
        AnonymousClass19 r1 = new CodedOutputStreamWriteAction() {
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeSessionApp(codedOutputStream, str4, CrashlyticsController.this.appData.apiKey, str5, str6, e2, id, CrashlyticsController.this.unityVersion);
            }
        };
        writeSessionPartFile(str, SESSION_APP_TAG, r1);
        AnonymousClass20 r12 = new FileOutputStreamWriteAction() {
            public void writeTo(FileOutputStream fileOutputStream) {
                fileOutputStream.write(new JSONObject(new HashMap<String, Object>() {
                    {
                        put("app_identifier", str4);
                        put("api_key", CrashlyticsController.this.appData.apiKey);
                        put("version_code", str5);
                        put("version_name", str6);
                        put("install_uuid", e2);
                        put("delivery_mechanism", Integer.valueOf(id));
                        put("unity_version", TextUtils.isEmpty(CrashlyticsController.this.unityVersion) ? "" : CrashlyticsController.this.unityVersion);
                    }
                }).toString().getBytes());
            }
        };
        writeFile(str, "SessionApp.json", r12);
    }

    private void writeSessionDevice(String str) {
        String str2 = str;
        Context context = this.crashlyticsCore.getContext();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int a2 = CommonUtils.a();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b2 = CommonUtils.b();
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        boolean l2 = CommonUtils.l(context);
        final int i2 = a2;
        final int i3 = availableProcessors;
        final long j2 = b2;
        final long j3 = blockCount;
        final boolean z = l2;
        final Map<IdManager.DeviceIdentifierType, String> f2 = this.idManager.f();
        long j4 = b2;
        AnonymousClass23 r15 = r0;
        final int f3 = CommonUtils.f(context);
        AnonymousClass23 r0 = new CodedOutputStreamWriteAction() {
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeSessionDevice(codedOutputStream, i2, Build.MODEL, i3, j2, j3, z, f2, f3, Build.MANUFACTURER, Build.PRODUCT);
            }
        };
        writeSessionPartFile(str2, SESSION_DEVICE_TAG, r15);
        final long j5 = j4;
        AnonymousClass24 r02 = new FileOutputStreamWriteAction() {
            public void writeTo(FileOutputStream fileOutputStream) {
                fileOutputStream.write(new JSONObject(new HashMap<String, Object>() {
                    {
                        put("arch", Integer.valueOf(i2));
                        put("build_model", Build.MODEL);
                        put("available_processors", Integer.valueOf(i3));
                        put("total_ram", Long.valueOf(j5));
                        put("disk_space", Long.valueOf(j3));
                        put("is_emulator", Boolean.valueOf(z));
                        put("ids", f2);
                        put("state", Integer.valueOf(f3));
                        put("build_manufacturer", Build.MANUFACTURER);
                        put("build_product", Build.PRODUCT);
                    }
                }).toString().getBytes());
            }
        };
        writeFile(str2, "SessionDevice.json", r02);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v2, resolved type: java.util.TreeMap} */
    /* JADX WARNING: type inference failed for: r6v2, types: [boolean] */
    /* JADX WARNING: type inference failed for: r6v4 */
    /* JADX WARNING: type inference failed for: r6v5 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void writeSessionEvent(com.crashlytics.android.core.CodedOutputStream r25, java.util.Date r26, java.lang.Thread r27, java.lang.Throwable r28, java.lang.String r29, boolean r30) {
        /*
            r24 = this;
            r0 = r24
            com.crashlytics.android.core.TrimmedThrowableData r5 = new com.crashlytics.android.core.TrimmedThrowableData
            com.crashlytics.android.core.StackTraceTrimmingStrategy r1 = r0.stackTraceTrimmingStrategy
            r2 = r28
            r5.<init>(r2, r1)
            com.crashlytics.android.core.CrashlyticsCore r1 = r0.crashlyticsCore
            android.content.Context r1 = r1.getContext()
            long r2 = r26.getTime()
            r6 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r6
            java.lang.Float r16 = io.fabric.sdk.android.services.common.CommonUtils.e(r1)
            com.crashlytics.android.core.DevicePowerStateListener r4 = r0.devicePowerStateListener
            boolean r4 = r4.isPowerConnected()
            int r17 = io.fabric.sdk.android.services.common.CommonUtils.a((android.content.Context) r1, (boolean) r4)
            boolean r18 = io.fabric.sdk.android.services.common.CommonUtils.g(r1)
            android.content.res.Resources r4 = r1.getResources()
            android.content.res.Configuration r4 = r4.getConfiguration()
            int r13 = r4.orientation
            long r6 = io.fabric.sdk.android.services.common.CommonUtils.b()
            long r8 = io.fabric.sdk.android.services.common.CommonUtils.a((android.content.Context) r1)
            long r19 = r6 - r8
            java.io.File r4 = android.os.Environment.getDataDirectory()
            java.lang.String r4 = r4.getPath()
            long r21 = io.fabric.sdk.android.services.common.CommonUtils.a((java.lang.String) r4)
            java.lang.String r4 = r1.getPackageName()
            android.app.ActivityManager$RunningAppProcessInfo r12 = io.fabric.sdk.android.services.common.CommonUtils.a((java.lang.String) r4, (android.content.Context) r1)
            java.util.LinkedList r9 = new java.util.LinkedList
            r9.<init>()
            java.lang.StackTraceElement[] r7 = r5.stacktrace
            com.crashlytics.android.core.AppData r4 = r0.appData
            java.lang.String r15 = r4.buildId
            io.fabric.sdk.android.services.common.IdManager r4 = r0.idManager
            java.lang.String r14 = r4.d()
            r4 = 0
            if (r30 == 0) goto L_0x00a1
            java.util.Map r8 = java.lang.Thread.getAllStackTraces()
            int r10 = r8.size()
            java.lang.Thread[] r10 = new java.lang.Thread[r10]
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
        L_0x0078:
            boolean r11 = r8.hasNext()
            if (r11 == 0) goto L_0x009e
            java.lang.Object r11 = r8.next()
            java.util.Map$Entry r11 = (java.util.Map.Entry) r11
            java.lang.Object r23 = r11.getKey()
            java.lang.Thread r23 = (java.lang.Thread) r23
            r10[r4] = r23
            com.crashlytics.android.core.StackTraceTrimmingStrategy r6 = r0.stackTraceTrimmingStrategy
            java.lang.Object r11 = r11.getValue()
            java.lang.StackTraceElement[] r11 = (java.lang.StackTraceElement[]) r11
            java.lang.StackTraceElement[] r6 = r6.getTrimmedStackTrace(r11)
            r9.add(r6)
            r6 = 1
            int r4 = r4 + r6
            goto L_0x0078
        L_0x009e:
            r6 = 1
            r8 = r10
            goto L_0x00a5
        L_0x00a1:
            r6 = 1
            java.lang.Thread[] r4 = new java.lang.Thread[r4]
            r8 = r4
        L_0x00a5:
            java.lang.String r4 = "com.crashlytics.CollectCustomKeys"
            boolean r1 = io.fabric.sdk.android.services.common.CommonUtils.a((android.content.Context) r1, (java.lang.String) r4, (boolean) r6)
            if (r1 != 0) goto L_0x00b3
            java.util.TreeMap r1 = new java.util.TreeMap
            r1.<init>()
            goto L_0x00c8
        L_0x00b3:
            com.crashlytics.android.core.CrashlyticsCore r1 = r0.crashlyticsCore
            java.util.Map r1 = r1.getAttributes()
            if (r1 == 0) goto L_0x00c8
            int r4 = r1.size()
            if (r4 <= r6) goto L_0x00c8
            java.util.TreeMap r4 = new java.util.TreeMap
            r4.<init>(r1)
            r10 = r4
            goto L_0x00c9
        L_0x00c8:
            r10 = r1
        L_0x00c9:
            com.crashlytics.android.core.LogFileManager r11 = r0.logFileManager
            r1 = r25
            r4 = r29
            r6 = r27
            com.crashlytics.android.core.SessionProtobufHelper.writeSessionEvent(r1, r2, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r21)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.core.CrashlyticsController.writeSessionEvent(com.crashlytics.android.core.CodedOutputStream, java.util.Date, java.lang.Thread, java.lang.Throwable, java.lang.String, boolean):void");
    }

    private void writeSessionOS(String str) {
        final boolean m = CommonUtils.m(this.crashlyticsCore.getContext());
        writeSessionPartFile(str, SESSION_OS_TAG, new CodedOutputStreamWriteAction() {
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeSessionOS(codedOutputStream, Build.VERSION.RELEASE, Build.VERSION.CODENAME, m);
            }
        });
        writeFile(str, "SessionOS.json", new FileOutputStreamWriteAction() {
            public void writeTo(FileOutputStream fileOutputStream) {
                fileOutputStream.write(new JSONObject(new HashMap<String, Object>() {
                    {
                        put("version", Build.VERSION.RELEASE);
                        put("build_version", Build.VERSION.CODENAME);
                        put("is_rooted", Boolean.valueOf(m));
                    }
                }).toString().getBytes());
            }
        });
    }

    private void writeSessionPartFile(String str, String str2, CodedOutputStreamWriteAction codedOutputStreamWriteAction) {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream = null;
        try {
            clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), str + str2);
            try {
                codedOutputStream = CodedOutputStream.newInstance((OutputStream) clsFileOutputStream);
                codedOutputStreamWriteAction.writeTo(codedOutputStream);
                CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to session " + str2 + " file.");
                CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close session " + str2 + " file.");
            } catch (Throwable th) {
                th = th;
                CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to session " + str2 + " file.");
                CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close session " + str2 + " file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
            CommonUtils.a((Flushable) codedOutputStream, "Failed to flush to session " + str2 + " file.");
            CommonUtils.a((Closeable) clsFileOutputStream, "Failed to close session " + str2 + " file.");
            throw th;
        }
    }

    private void writeSessionPartsToSessionFile(File file, String str, int i2) {
        o e2 = e.a.a.a.f.e();
        e2.d(CrashlyticsCore.TAG, "Collecting session parts for ID " + str);
        File[] listFilesMatching = listFilesMatching((FilenameFilter) new FileNameContainsFilter(str + SESSION_FATAL_TAG));
        boolean z = listFilesMatching != null && listFilesMatching.length > 0;
        e.a.a.a.f.e().d(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has fatal exception: %s", new Object[]{str, Boolean.valueOf(z)}));
        File[] listFilesMatching2 = listFilesMatching((FilenameFilter) new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
        boolean z2 = listFilesMatching2 != null && listFilesMatching2.length > 0;
        e.a.a.a.f.e().d(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has non-fatal exceptions: %s", new Object[]{str, Boolean.valueOf(z2)}));
        if (z || z2) {
            synthesizeSessionFile(file, str, getTrimmedNonFatalFiles(str, listFilesMatching2, i2), z ? listFilesMatching[0] : null);
        } else {
            o e3 = e.a.a.a.f.e();
            e3.d(CrashlyticsCore.TAG, "No events present for session ID " + str);
        }
        o e4 = e.a.a.a.f.e();
        e4.d(CrashlyticsCore.TAG, "Removing session part files for ID " + str);
        deleteSessionPartFilesFor(str);
    }

    private void writeSessionUser(String str) {
        final UserMetaData userMetaData = getUserMetaData(str);
        writeSessionPartFile(str, SESSION_USER_TAG, new CodedOutputStreamWriteAction() {
            public void writeTo(CodedOutputStream codedOutputStream) {
                UserMetaData userMetaData = userMetaData;
                SessionProtobufHelper.writeSessionUser(codedOutputStream, userMetaData.id, userMetaData.name, userMetaData.email);
            }
        });
    }

    public static void writeToCosFromFile(CodedOutputStream codedOutputStream, File file) {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            e.a.a.a.f.e().b(CrashlyticsCore.TAG, "Tried to include a file that doesn't exist: " + file.getName(), null);
            return;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                copyToCodedOutputStream(fileInputStream, codedOutputStream, (int) file.length());
                CommonUtils.a((Closeable) fileInputStream, "Failed to close file input stream.");
            } catch (Throwable th) {
                th = th;
                CommonUtils.a((Closeable) fileInputStream, "Failed to close file input stream.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            CommonUtils.a((Closeable) fileInputStream, "Failed to close file input stream.");
            throw th;
        }
    }

    public void cacheKeyData(final Map<String, String> map) {
        this.backgroundWorker.submit(new Callable<Void>() {
            public Void call() {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeKeyData(CrashlyticsController.this.getCurrentSessionId(), map);
                return null;
            }
        });
    }

    public void cacheUserData(final String str, final String str2, final String str3) {
        this.backgroundWorker.submit(new Callable<Void>() {
            public Void call() {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeUserData(CrashlyticsController.this.getCurrentSessionId(), new UserMetaData(str, str2, str3));
                return null;
            }
        });
    }

    public void cleanInvalidTempFiles() {
        this.backgroundWorker.submit((Runnable) new Runnable() {
            public void run() {
                CrashlyticsController crashlyticsController = CrashlyticsController.this;
                crashlyticsController.doCleanInvalidTempFiles(crashlyticsController.listFilesMatching((FilenameFilter) new InvalidPartFileFilter()));
            }
        });
    }

    public void doCleanInvalidTempFiles(File[] fileArr) {
        final HashSet hashSet = new HashSet();
        for (File sessionIdFromSessionFile : fileArr) {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Found invalid session part file: " + sessionIdFromSessionFile);
            hashSet.add(getSessionIdFromSessionFile(sessionIdFromSessionFile));
        }
        if (!hashSet.isEmpty()) {
            File invalidFilesDir = getInvalidFilesDir();
            if (!invalidFilesDir.exists()) {
                invalidFilesDir.mkdir();
            }
            for (File file : listFilesMatching((FilenameFilter) new FilenameFilter() {
                public boolean accept(File file, String str) {
                    if (str.length() < 35) {
                        return false;
                    }
                    return hashSet.contains(str.substring(0, 35));
                }
            })) {
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Moving session file: " + file);
                if (!file.renameTo(new File(invalidFilesDir, file.getName()))) {
                    e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Could not move session file. Deleting " + file);
                    file.delete();
                }
            }
            trimInvalidSessionFiles();
        }
    }

    public void doCloseSessions(q qVar) {
        doCloseSessions(qVar, false);
    }

    public void enableExceptionHandling(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, boolean z) {
        openSession();
        this.crashHandler = new CrashlyticsUncaughtExceptionHandler(new CrashlyticsUncaughtExceptionHandler.CrashListener() {
            public void onUncaughtException(CrashlyticsUncaughtExceptionHandler.SettingsDataProvider settingsDataProvider, Thread thread, Throwable th, boolean z) {
                CrashlyticsController.this.handleUncaughtException(settingsDataProvider, thread, th, z);
            }
        }, new DefaultSettingsDataProvider(), z, uncaughtExceptionHandler);
        Thread.setDefaultUncaughtExceptionHandler(this.crashHandler);
    }

    public boolean finalizeNativeReport(final CrashlyticsNdkData crashlyticsNdkData) {
        if (crashlyticsNdkData == null) {
            return true;
        }
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() {
            public Boolean call() {
                TreeSet<File> treeSet = crashlyticsNdkData.timestampedDirectories;
                String access$1600 = CrashlyticsController.this.getPreviousSessionId();
                if (access$1600 != null && !treeSet.isEmpty()) {
                    File first = treeSet.first();
                    if (first != null) {
                        CrashlyticsController crashlyticsController = CrashlyticsController.this;
                        crashlyticsController.finalizeMostRecentNativeCrash(crashlyticsController.crashlyticsCore.getContext(), first, access$1600);
                    }
                }
                CrashlyticsController.this.recursiveDelete((Set<File>) treeSet);
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    public boolean finalizeSessions(final q qVar) {
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() {
            public Boolean call() {
                if (CrashlyticsController.this.isHandlingException()) {
                    e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Skipping session finalization because a crash has already occurred.");
                    return Boolean.FALSE;
                }
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Finalizing previously open sessions.");
                CrashlyticsController.this.doCloseSessions(qVar, true);
                e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Closed all previously open sessions");
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    public File getFatalSessionFilesDir() {
        return new File(getFilesDir(), FATAL_SESSION_DIR);
    }

    public File getFilesDir() {
        return this.fileStore.a();
    }

    public File getInvalidFilesDir() {
        return new File(getFilesDir(), INVALID_CLS_CACHE_DIR);
    }

    public File getNonFatalSessionFilesDir() {
        return new File(getFilesDir(), NONFATAL_SESSION_DIR);
    }

    public synchronized void handleUncaughtException(CrashlyticsUncaughtExceptionHandler.SettingsDataProvider settingsDataProvider, Thread thread, Throwable th, boolean z) {
        o e2 = e.a.a.a.f.e();
        e2.d(CrashlyticsCore.TAG, "Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        this.devicePowerStateListener.dispose();
        final Date date = new Date();
        CrashlyticsBackgroundWorker crashlyticsBackgroundWorker = this.backgroundWorker;
        final Thread thread2 = thread;
        final Throwable th2 = th;
        final CrashlyticsUncaughtExceptionHandler.SettingsDataProvider settingsDataProvider2 = settingsDataProvider;
        final boolean z2 = z;
        AnonymousClass7 r1 = new Callable<Void>() {
            public Void call() {
                n nVar;
                q qVar;
                CrashlyticsController.this.crashlyticsCore.createCrashMarker();
                CrashlyticsController.this.writeFatal(date, thread2, th2);
                u settingsData = settingsDataProvider2.getSettingsData();
                if (settingsData != null) {
                    qVar = settingsData.f13846b;
                    nVar = settingsData.f13848d;
                } else {
                    qVar = null;
                    nVar = null;
                }
                boolean z = false;
                if ((nVar == null || nVar.f13821e) || z2) {
                    CrashlyticsController.this.recordFatalFirebaseEvent(date.getTime());
                }
                CrashlyticsController.this.doCloseSessions(qVar);
                CrashlyticsController.this.doOpenSession();
                if (qVar != null) {
                    CrashlyticsController.this.trimSessionFiles(qVar.f13839g);
                }
                if (e.a.a.a.a.b.n.a(CrashlyticsController.this.crashlyticsCore.getContext()).a() && !CrashlyticsController.this.shouldPromptUserBeforeSendingCrashReports(settingsData)) {
                    z = true;
                }
                if (z) {
                    CrashlyticsController.this.sendSessionReports(settingsData);
                }
                return null;
            }
        };
        crashlyticsBackgroundWorker.submitAndWait(r1);
    }

    public boolean hasOpenSession() {
        return listSessionBeginFiles().length > 0;
    }

    public boolean isHandlingException() {
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = this.crashHandler;
        return crashlyticsUncaughtExceptionHandler != null && crashlyticsUncaughtExceptionHandler.isHandlingException();
    }

    public File[] listCompleteSessionFiles() {
        LinkedList linkedList = new LinkedList();
        Collections.addAll(linkedList, listFilesMatching(getFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(linkedList, listFilesMatching(getNonFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(linkedList, listFilesMatching(getFilesDir(), SESSION_FILE_FILTER));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    public File[] listNativeSessionFileDirectories() {
        return listFilesMatching(SESSION_DIRECTORY_FILTER);
    }

    public File[] listSessionBeginFiles() {
        return listFilesMatching(SESSION_BEGIN_FILE_FILTER);
    }

    public void openSession() {
        this.backgroundWorker.submit(new Callable<Void>() {
            public Void call() {
                CrashlyticsController.this.doOpenSession();
                return null;
            }
        });
    }

    public void registerAnalyticsEventListener(u uVar) {
        if (uVar.f13848d.f13821e) {
            boolean register = this.appMeasurementEventListenerRegistrar.register();
            o e2 = e.a.a.a.f.e();
            e2.d(CrashlyticsCore.TAG, "Registered Firebase Analytics event listener for breadcrumbs: " + register);
        }
    }

    public void registerDevicePowerStateListener() {
        this.devicePowerStateListener.initialize();
    }

    public void submitAllReports(float f2, u uVar) {
        if (uVar == null) {
            e.a.a.a.f.e().a(CrashlyticsCore.TAG, "Could not send reports. Settings are not available.");
            return;
        }
        e eVar = uVar.f13845a;
        new ReportUploader(this.appData.apiKey, getCreateReportSpiCall(eVar.f13802d, eVar.f13803e), this.reportFilesProvider, this.handlingExceptionCheck).uploadReports(f2, shouldPromptUserBeforeSendingCrashReports(uVar) ? new PrivacyDialogCheck(this.crashlyticsCore, this.preferenceManager, uVar.f13847c) : new ReportUploader.AlwaysSendCheck());
    }

    public void trimSessionFiles(int i2) {
        int capFileCount = i2 - Utils.capFileCount(getFatalSessionFilesDir(), i2, SMALLEST_FILE_NAME_FIRST);
        Utils.capFileCount(getFilesDir(), SESSION_FILE_FILTER, capFileCount - Utils.capFileCount(getNonFatalSessionFilesDir(), capFileCount, SMALLEST_FILE_NAME_FIRST), SMALLEST_FILE_NAME_FIRST);
    }

    public void writeNonFatalException(final Thread thread, final Throwable th) {
        final Date date = new Date();
        this.backgroundWorker.submit((Runnable) new Runnable() {
            public void run() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.doWriteNonFatal(date, thread, th);
                }
            }
        });
    }

    public void writeToLog(final long j2, final String str) {
        this.backgroundWorker.submit(new Callable<Void>() {
            public Void call() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.logFileManager.writeToLog(j2, str);
                }
                return null;
            }
        });
    }

    /* JADX WARNING: type inference failed for: r5v0, types: [int, boolean] */
    /* access modifiers changed from: private */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void doCloseSessions(e.a.a.a.a.g.q r4, boolean r5) {
        /*
            r3 = this;
            int r0 = r5 + 8
            r3.trimOpenSessions(r0)
            java.io.File[] r0 = r3.listSortedSessionBeginFiles()
            int r1 = r0.length
            java.lang.String r2 = "CrashlyticsCore"
            if (r1 > r5) goto L_0x0018
            e.a.a.a.o r4 = e.a.a.a.f.e()
            java.lang.String r5 = "No open sessions to be closed."
            r4.d(r2, r5)
            return
        L_0x0018:
            r1 = r0[r5]
            java.lang.String r1 = getSessionIdFromSessionFile(r1)
            r3.writeSessionUser(r1)
            if (r4 != 0) goto L_0x002d
            e.a.a.a.o r4 = e.a.a.a.f.e()
            java.lang.String r5 = "Unable to close session. Settings are not loaded."
            r4.d(r2, r5)
            return
        L_0x002d:
            int r4 = r4.f13835c
            r3.closeOpenSessions(r0, r5, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.core.CrashlyticsController.doCloseSessions(e.a.a.a.a.g.q, boolean):void");
    }

    /* access modifiers changed from: private */
    public File[] listFilesMatching(FilenameFilter filenameFilter) {
        return listFilesMatching(getFilesDir(), filenameFilter);
    }

    private File[] listFilesMatching(File file, FilenameFilter filenameFilter) {
        return ensureFileArrayNotNull(file.listFiles(filenameFilter));
    }

    private void recursiveDelete(File file) {
        if (file.isDirectory()) {
            for (File recursiveDelete : file.listFiles()) {
                recursiveDelete(recursiveDelete);
            }
        }
        file.delete();
    }
}
