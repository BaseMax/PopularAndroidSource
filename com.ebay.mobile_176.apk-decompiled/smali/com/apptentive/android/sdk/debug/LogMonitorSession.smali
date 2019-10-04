.class Lcom/apptentive/android/sdk/debug/LogMonitorSession;
.super Ljava/lang/Object;
.source "LogMonitorSession.java"


# instance fields
.field emailRecipients:[Ljava/lang/String;

.field private oldLogLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

.field restored:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "support@apptentive.com"

    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->emailRecipients:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/debug/LogMonitorSession;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->getSystemInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSubject(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "%s (Android)"

    const/4 v1, 0x1

    .line 92
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v3, "%s (Android)"

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to load troubleshooting email status line"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getSystemInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 109
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :try_start_1
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v0

    :goto_0
    const-string v0, "Unable to get app version info"

    .line 112
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_1
    const/16 v2, 0x10

    .line 116
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "App Package Name"

    aput-object v4, v2, v1

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "App Version Name"

    const/4 v4, 0x2

    aput-object p1, v2, v4

    const/4 p1, 0x3

    aput-object v3, v2, p1

    const/4 p1, 0x4

    const-string v3, "App Version Code"

    aput-object v3, v2, p1

    const/4 p1, 0x5

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-string v0, "Apptentive SDK"

    aput-object v0, v2, p1

    const/4 p1, 0x7

    .line 120
    invoke-static {}, Lcom/apptentive/android/sdk/util/Constants;->getApptentiveSdkVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x8

    const-string v0, "Device Model"

    aput-object v0, v2, p1

    const/16 p1, 0x9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v0, v2, p1

    const/16 p1, 0xa

    const-string v0, "Android OS Version"

    aput-object v0, v2, p1

    const/16 p1, 0xb

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v0, v2, p1

    const/16 p1, 0xc

    const-string v0, "Android OS API Level"

    aput-object v0, v2, p1

    const/16 p1, 0xd

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0xe

    const-string v0, "Locale"

    aput-object v0, v2, p1

    const/16 p1, 0xf

    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This email may contain sensitive content. Please review before sending.\n\n"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_2
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\n"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    .line 135
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 137
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static listAttachments(Landroid/content/Context;)[Ljava/io/File;
    .locals 4

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveLog;->getLogsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "apptentive-engagement-manifest.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveLog;->getLogsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 149
    new-instance v1, Lcom/apptentive/android/sdk/debug/LogMonitorSession$2;

    invoke-direct {v1}, Lcom/apptentive/android/sdk/debug/LogMonitorSession$2;-><init>()V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    array-length v1, p0

    if-lez v1, :cond_0

    .line 156
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/io/File;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0
.end method

.method private showDebugNotification(Landroid/content/Context;)V
    .locals 4

    .line 75
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->getSubject(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->listAttachments(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v1

    .line 78
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v2

    new-instance v3, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/apptentive/android/sdk/debug/LogMonitorSession$1;-><init>(Lcom/apptentive/android/sdk/debug/LogMonitorSession;Landroid/content/Context;Ljava/lang/String;[Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method


# virtual methods
.method start(Landroid/content/Context;)V
    .locals 3

    .line 57
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper;->checkConversationQueue()V

    .line 59
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->TROUBLESHOOT:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overriding log level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveLog;->getLogLevel()Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->oldLogLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    .line 61
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->overrideLogLevel(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->showDebugNotification(Landroid/content/Context;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->oldLogLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->oldLogLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->oldLogLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->overrideLogLevel(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "recipients=%s restored=%s"

    const/4 v1, 0x2

    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->emailRecipients:[Ljava/lang/String;

    .line 167
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/apptentive/android/sdk/debug/LogMonitorSession;->restored:Z

    .line 168
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 166
    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
