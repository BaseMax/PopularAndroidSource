.class public final Lcom/mapbox/android/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/a/c;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mapbox/android/a/a/a;->a:Lorg/a/c;

    return-void
.end method

.method constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/a/a/a;->a:Lorg/a/c;

    const-string v0, "event"

    const-string v1, "mobile.crash"

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "created"

    invoke-virtual {p0, v0, p1}, Lcom/mapbox/android/a/a/a;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDateString()Ljava/lang/String;
    .locals 2

    .line 2075
    iget-object v0, p0, Lcom/mapbox/android/a/a/a;->a:Lorg/a/c;

    const-string v1, "created"

    invoke-virtual {v0, v1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    .line 1080
    :try_start_0
    iget-object p2, p0, Lcom/mapbox/android/a/a/a;->a:Lorg/a/c;

    const-string v0, "null"

    invoke-virtual {p2, p1, v0}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    monitor-exit p0

    return-void

    .line 42
    :catch_0
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mapbox/android/a/a/a;->a:Lorg/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_1
    .catch Lorg/a/b; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 48
    :catch_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed json encode value: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mapbox/android/a/a/a;->a:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
