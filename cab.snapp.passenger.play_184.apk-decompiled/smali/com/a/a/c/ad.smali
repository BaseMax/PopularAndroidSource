.class final Lcom/a/a/c/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/t;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private c:Lio/fabric/sdk/android/services/common/o;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/a/a/c/ad;->a:Ljava/io/File;

    .line 40
    iput p2, p0, Lcom/a/a/c/ad;->b:I

    return-void
.end method

.method private a()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    if-nez v0, :cond_0

    .line 105
    :try_start_0
    new-instance v0, Lio/fabric/sdk/android/services/common/o;

    iget-object v1, p0, Lcom/a/a/c/ad;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/o;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 107
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open log file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/a/c/ad;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    invoke-interface {v1, v3, v2, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final closeLogFile()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    return-void
.end method

.method public final deleteLogFile()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/a/a/c/ad;->closeLogFile()V

    .line 99
    iget-object v0, p0, Lcom/a/a/c/ad;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final getLogAsByteString()Lcom/a/a/c/b;
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/a/a/c/ad;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/a/a/c/ad;->a()V

    .line 58
    iget-object v0, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 68
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/o;->usedBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    new-instance v4, Lcom/a/a/c/ad$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/a/a/c/ad$1;-><init>(Lcom/a/a/c/ad;[B[I)V

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/common/o;->forEach(Lio/fabric/sdk/android/services/common/o$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 83
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v4, v5, v6, v3}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :goto_0
    aget v1, v1, v2

    invoke-static {v0, v2, v1}, Lcom/a/a/c/b;->copyFrom([BII)Lcom/a/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final writeToLog(JLjava/lang/String;)V
    .locals 4

    const-string v0, " "

    .line 45
    invoke-direct {p0}, Lcom/a/a/c/ad;->a()V

    .line 1114
    iget-object v1, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    const-string p3, "null"

    .line 1138
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/a/a/c/ad;->b:I

    div-int/lit8 v1, v1, 0x4

    .line 1140
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string v1, "\r"

    .line 1144
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "\n"

    .line 1145
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1147
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1148
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1150
    iget-object p2, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/services/common/o;->add([B)V

    .line 1153
    :goto_0
    iget-object p1, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/o;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/o;->usedBytes()I

    move-result p1

    iget p2, p0, Lcom/a/a/c/ad;->b:I

    if-le p1, p2, :cond_2

    .line 1154
    iget-object p1, p0, Lcom/a/a/c/ad;->c:Lio/fabric/sdk/android/services/common/o;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/o;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 1157
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string p3, "CrashlyticsCore"

    const-string v0, "There was a problem writing to the Crashlytics log."

    invoke-interface {p2, p3, v0, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
