.class final Lcom/a/a/c/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 44
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/a/a/c/x;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/a/a/c/x;->b:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/c/x;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "user.meta"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 170
    invoke-virtual {p0, p1}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/c/x;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "keys.meta"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p0}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    .line 156
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-virtual {v0}, Lorg/a/c;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    invoke-static {v0, v2}, Lcom/a/a/c/x;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final readKeyData(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Failed to close user metadata file."

    .line 113
    invoke-direct {p0, p1}, Lcom/a/a/c/x;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 120
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :try_start_1
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/c/x;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 123
    :goto_0
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Error deserializing user metadata."

    invoke-interface {v2, v3, v4, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 125
    :goto_1
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method public final readUserData(Ljava/lang/String;)Lcom/a/a/c/am;
    .locals 5

    const-string v0, "Failed to close user metadata file."

    .line 78
    invoke-direct {p0, p1}, Lcom/a/a/c/x;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    sget-object p1, Lcom/a/a/c/am;->EMPTY:Lcom/a/a/c/am;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 85
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 2139
    new-instance v1, Lorg/a/c;

    invoke-direct {v1, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    const-string p1, "userId"

    .line 2140
    invoke-static {v1, p1}, Lcom/a/a/c/x;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "userName"

    .line 2141
    invoke-static {v1, v3}, Lcom/a/a/c/x;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userEmail"

    .line 2142
    invoke-static {v1, v4}, Lcom/a/a/c/x;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2143
    new-instance v4, Lcom/a/a/c/am;

    invoke-direct {v4, p1, v3, v1}, Lcom/a/a/c/am;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 88
    :goto_0
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Error deserializing user metadata."

    invoke-interface {v2, v3, v4, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 92
    sget-object p1, Lcom/a/a/c/am;->EMPTY:Lcom/a/a/c/am;

    return-object p1

    .line 90
    :goto_1
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method public final writeKeyData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Failed to close key/value metadata file."

    .line 96
    invoke-direct {p0, p1}, Lcom/a/a/c/x;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    .line 2166
    :try_start_0
    new-instance v2, Lorg/a/c;

    invoke-direct {v2, p2}, Lorg/a/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p2

    .line 100
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/a/a/c/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 106
    :goto_0
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error serializing key/value metadata."

    invoke-interface {p2, v2, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method public final writeUserData(Ljava/lang/String;Lcom/a/a/c/am;)V
    .locals 5

    const-string v0, "Failed to close user metadata file."

    .line 61
    invoke-direct {p0, p1}, Lcom/a/a/c/x;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    .line 1147
    :try_start_0
    new-instance v2, Lcom/a/a/c/x$1;

    invoke-direct {v2, p2}, Lcom/a/a/c/x$1;-><init>(Lcom/a/a/c/am;)V

    .line 1151
    invoke-virtual {v2}, Lcom/a/a/c/x$1;->toString()Ljava/lang/String;

    move-result-object p2

    .line 65
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/a/a/c/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 71
    :goto_0
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p2

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error serializing user metadata."

    invoke-interface {p2, v2, v3, p1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method
