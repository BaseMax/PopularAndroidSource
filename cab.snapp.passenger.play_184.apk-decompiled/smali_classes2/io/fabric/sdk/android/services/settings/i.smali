.class final Lio/fabric/sdk/android/services/settings/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/g;


# instance fields
.field private final a:Lio/fabric/sdk/android/i;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/i;->a:Lio/fabric/sdk/android/i;

    return-void
.end method


# virtual methods
.method public final readCachedSettings()Lorg/a/c;
    .locals 7

    const-string v0, "Error while closing settings cache file."

    .line 46
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Reading cached settings..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 52
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Lio/fabric/sdk/android/services/c/b;

    iget-object v5, p0, Lio/fabric/sdk/android/services/settings/i;->a:Lio/fabric/sdk/android/i;

    invoke-direct {v4, v5}, Lio/fabric/sdk/android/services/c/b;-><init>(Lio/fabric/sdk/android/i;)V

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/c/b;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "com.crashlytics.settings.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-static {v4}, Lio/fabric/sdk/android/services/common/i;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v5, Lorg/a/c;

    invoke-direct {v5, v3}, Lorg/a/c;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    .line 61
    :cond_0
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "No cached settings found."

    invoke-interface {v3, v2, v4}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v1

    .line 66
    :goto_0
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v4, v1

    .line 64
    :goto_1
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v5

    const-string v6, "Failed to fetch cached settings"

    invoke-interface {v5, v2, v6, v3}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    invoke-static {v4, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_2
    return-object v1

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v4

    :goto_3
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2
.end method

.method public final writeCachedSettings(JLorg/a/c;)V
    .locals 5

    const-string v0, "Failed to close settings writer."

    .line 74
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Writing settings to cache file..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "expires_at"

    .line 80
    invoke-virtual {p3, v3, p1, p2}, Lorg/a/c;->put(Ljava/lang/String;J)Lorg/a/c;

    .line 82
    new-instance p1, Ljava/io/FileWriter;

    new-instance p2, Ljava/io/File;

    new-instance v3, Lio/fabric/sdk/android/services/c/b;

    iget-object v4, p0, Lio/fabric/sdk/android/services/settings/i;->a:Lio/fabric/sdk/android/i;

    invoke-direct {v3, v4}, Lio/fabric/sdk/android/services/c/b;-><init>(Lio/fabric/sdk/android/i;)V

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/c/b;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "com.crashlytics.settings.json"

    invoke-direct {p2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    invoke-virtual {p3}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 87
    :goto_0
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string p3, "Failed to cache settings"

    invoke-interface {p1, v2, p3, p2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2

    :cond_0
    return-void
.end method
