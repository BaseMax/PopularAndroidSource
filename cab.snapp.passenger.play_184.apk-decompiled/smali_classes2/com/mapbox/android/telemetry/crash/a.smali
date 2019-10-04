.class final Lcom/mapbox/android/telemetry/crash/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/mapbox/android/telemetry/x;

.field final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:[Ljava/io/File;

.field d:I

.field e:Z

.field private final f:Landroid/content/SharedPreferences;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mapbox/android/telemetry/CrashEvent;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lcom/mapbox/android/telemetry/x;[Ljava/io/File;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/crash/a;->b:Ljava/util/HashSet;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/crash/a;->g:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Lcom/mapbox/android/telemetry/crash/a;->f:Landroid/content/SharedPreferences;

    .line 45
    iput-object p2, p0, Lcom/mapbox/android/telemetry/crash/a;->a:Lcom/mapbox/android/telemetry/x;

    .line 46
    iput-object p3, p0, Lcom/mapbox/android/telemetry/crash/a;->c:[Ljava/io/File;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/mapbox/android/telemetry/crash/a;->d:I

    .line 48
    iput-boolean p1, p0, Lcom/mapbox/android/telemetry/crash/a;->e:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/mapbox/android/telemetry/CrashEvent;
    .locals 2

    .line 161
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    .line 163
    :try_start_0
    const-class v1, Lcom/mapbox/android/telemetry/CrashEvent;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mapbox/android/telemetry/CrashEvent;
    :try_end_0
    .catch Lcom/google/gson/p; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 166
    :catch_0
    new-instance p0, Lcom/mapbox/android/telemetry/CrashEvent;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/mapbox/android/telemetry/CrashEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method final a()Z
    .locals 3

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/crash/a;->f:Landroid/content/SharedPreferences;

    const-string v1, "mapbox.crash.enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method final a(Lcom/mapbox/android/telemetry/CrashEvent;)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mapbox/android/telemetry/crash/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final a(Lcom/mapbox/android/telemetry/CrashEvent;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)Z
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/mapbox/android/telemetry/crash/a;->a:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/android/telemetry/crash/a$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/mapbox/android/telemetry/crash/a$1;-><init>(Lcom/mapbox/android/telemetry/crash/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/x;->addTelemetryListener(Lcom/mapbox/android/telemetry/aj;)Z

    .line 126
    iget-object v0, p0, Lcom/mapbox/android/telemetry/crash/a;->a:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/x;->push(Lcom/mapbox/android/telemetry/Event;)Z

    const-wide/16 v0, 0xa

    .line 128
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 133
    iget-object p3, p0, Lcom/mapbox/android/telemetry/crash/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/CrashEvent;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p3

    .line 132
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 133
    iget-object p2, p0, Lcom/mapbox/android/telemetry/crash/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/CrashEvent;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    throw p3

    :catch_0
    nop

    .line 132
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 133
    iget-object p2, p0, Lcom/mapbox/android/telemetry/crash/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/CrashEvent;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final b()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/mapbox/android/telemetry/crash/a;->d:I

    iget-object v1, p0, Lcom/mapbox/android/telemetry/crash/a;->c:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c()Lcom/mapbox/android/telemetry/CrashEvent;
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/mapbox/android/telemetry/crash/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/crash/a;->c:[Ljava/io/File;

    iget v1, p0, Lcom/mapbox/android/telemetry/crash/a;->d:I

    aget-object v0, v0, v1

    .line 97
    invoke-static {v0}, Lcom/mapbox/android/a/a;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/android/telemetry/crash/a;->a(Ljava/lang/String;)Lcom/mapbox/android/telemetry/CrashEvent;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/mapbox/android/telemetry/CrashEvent;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/mapbox/android/telemetry/crash/a;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    iget v0, p0, Lcom/mapbox/android/telemetry/crash/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapbox/android/telemetry/crash/a;->d:I

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File cannot be read: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    iget v1, p0, Lcom/mapbox/android/telemetry/crash/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapbox/android/telemetry/crash/a;->d:I

    .line 106
    throw v0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more events can be read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
