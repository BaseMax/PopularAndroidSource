.class public final Lcom/mapbox/android/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final MAPBOX_CRASH_REPORTER_PREFERENCES:Ljava/lang/String; = "MapboxCrashReporterPrefs"

.field public static final MAPBOX_PREF_ENABLE_CRASH_REPORTER:Ljava/lang/String; = "mapbox.crash.enable"


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mapbox/android/a/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/mapbox/android/a/a/c;->b:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/mapbox/android/a/a/c;->d:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/mapbox/android/a/a/c;->e:Ljava/lang/String;

    const/4 p1, 0x2

    .line 57
    iput p1, p0, Lcom/mapbox/android/a/a/c;->f:I

    .line 58
    iput-object p5, p0, Lcom/mapbox/android/a/a/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1204
    :try_start_0
    iget-object p1, p0, Lcom/mapbox/android/a/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p3, "mapbox.crash.enable"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :catch_0
    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Invalid package name: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " or version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 151
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5174
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapbox/android/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static install(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    move-object v1, p0

    .line 84
    new-instance p0, Lcom/mapbox/android/a/a/c;

    const/4 v0, 0x0

    const-string v2, "MapboxCrashReporterPrefs"

    .line 85
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 86
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mapbox/android/a/a/c;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 84
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "mapbox.crash.enable"

    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 125
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/mapbox/android/a/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10

    .line 94
    iget-object v0, p0, Lcom/mapbox/android/a/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2162
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, p2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_2

    add-int/2addr v3, v4

    .line 2178
    iget v5, p0, Lcom/mapbox/android/a/a/c;->f:I

    if-lt v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 2166
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2168
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 2170
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-direct {p0, v0}, Lcom/mapbox/android/a/a/c;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/mapbox/android/a/a/c;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mapbox/android/a/a/c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/mapbox/android/a/a/c;->e:Ljava/lang/String;

    .line 3050
    new-instance v6, Lcom/mapbox/android/a/a/b;

    invoke-direct {v6, v2, v3, v5}, Lcom/mapbox/android/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    iput-object p1, v6, Lcom/mapbox/android/a/a/b;->e:Ljava/lang/Thread;

    .line 4059
    iget-object v2, v6, Lcom/mapbox/android/a/a/b;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4069
    new-instance v0, Lcom/mapbox/android/a/a/a;

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-direct {v0, v2}, Lcom/mapbox/android/a/a/a;-><init>(Ljava/util/Calendar;)V

    const-string v2, "sdkIdentifier"

    .line 4070
    iget-object v3, v6, Lcom/mapbox/android/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdkVersion"

    .line 4071
    iget-object v3, v6, Lcom/mapbox/android/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "osVersion"

    const-string v3, "Android-%s"

    new-array v5, v4, [Ljava/lang/Object;

    .line 4072
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v7, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "model"

    .line 4073
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device"

    .line 4074
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isSilent"

    .line 4075
    iget-boolean v3, v6, Lcom/mapbox/android/a/a/b;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "stackTraceHash"

    .line 4076
    iget-object v3, v6, Lcom/mapbox/android/a/a/b;->d:Ljava/util/List;

    invoke-static {v3}, Lcom/mapbox/android/a/a/b;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "stackTrace"

    .line 4077
    iget-object v3, v6, Lcom/mapbox/android/a/a/b;->d:Ljava/util/List;

    invoke-virtual {v6, v3}, Lcom/mapbox/android/a/a/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4078
    iget-object v2, v6, Lcom/mapbox/android/a/a/b;->e:Ljava/lang/Thread;

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    const-string v2, "threadDetails"

    const-string v5, "tid:%s|name:%s|priority:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 4079
    iget-object v8, v6, Lcom/mapbox/android/a/a/b;->e:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, v6, Lcom/mapbox/android/a/a/b;->e:Ljava/lang/Thread;

    .line 4080
    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, v6, Lcom/mapbox/android/a/a/b;->e:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 4079
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "appId"

    .line 4082
    iget-object v5, v6, Lcom/mapbox/android/a/a/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appVersion"

    .line 4083
    iget-object v5, v6, Lcom/mapbox/android/a/a/b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mapbox/android/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/mapbox/android/a/a/c;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/mapbox/android/a/a/c;->d:Ljava/lang/String;

    .line 4183
    invoke-static {v2, v5}, Lcom/mapbox/android/a/a;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4184
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4185
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 4189
    :cond_4
    invoke-static {v2}, Lcom/mapbox/android/a/a;->listAllFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 4190
    array-length v5, v2

    const/16 v6, 0xa

    if-lt v5, v6, :cond_5

    .line 4191
    new-instance v5, Lcom/mapbox/android/a/a$a;

    invoke-direct {v5}, Lcom/mapbox/android/a/a$a;-><init>()V

    const/16 v6, 0x9

    invoke-static {v2, v5, v6}, Lcom/mapbox/android/a/a;->deleteFirst([Ljava/io/File;Ljava/util/Comparator;I)V

    .line 103
    :cond_5
    iget-object v2, p0, Lcom/mapbox/android/a/a/c;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/mapbox/android/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mapbox/android/a/a/a;->getDateString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s/%s.crash"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    aput-object v6, v3, v4

    .line 4199
    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v2, v1}, Lcom/mapbox/android/a/a;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Lcom/mapbox/android/a/a/a;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mapbox/android/a/a;->writeToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 111
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/mapbox/android/a/a/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    .line 112
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method
