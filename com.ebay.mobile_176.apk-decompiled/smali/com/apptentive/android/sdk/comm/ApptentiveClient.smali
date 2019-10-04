.class public Lcom/apptentive/android/sdk/comm/ApptentiveClient;
.super Ljava/lang/Object;
.source "ApptentiveClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 36
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    :try_start_1
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    :goto_0
    :try_start_2
    const-string p0, "UTF-8"

    .line 42
    invoke-static {v0, p0}, Lcom/apptentive/android/sdk/util/Util;->readStringFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public static getUserAgentString()Ljava/lang/String;
    .locals 4

    const-string v0, "Apptentive/%s (Android)"

    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Constants;->getApptentiveSdkVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
