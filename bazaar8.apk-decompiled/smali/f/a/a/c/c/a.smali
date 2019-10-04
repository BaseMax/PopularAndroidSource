.class public Lf/a/a/c/c/a;
.super Ljava/lang/Thread;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/c/c/a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/os/PowerManager$WakeLock;

.field public c:Landroid/net/wifi/WifiManager$WifiLock;

.field public d:Ljava/lang/String;

.field public e:Landroid/net/Uri;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:Lf/a/a/c/c/a$a;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lf/a/a/c/c/a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/c/c/a;->b:Landroid/os/PowerManager$WakeLock;

    .line 3
    iput-object v0, p0, Lf/a/a/c/c/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    .line 4
    iput-object p1, p0, Lf/a/a/c/c/a;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lf/a/a/c/c/a;->d:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FILE_UPLOADER__"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/c/c/a;->f:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lf/a/a/c/c/a;->e:Landroid/net/Uri;

    .line 8
    iput-object p4, p0, Lf/a/a/c/c/a;->i:Lf/a/a/c/c/a$a;

    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lf/a/a/c/c/a;->g:J

    const-wide/16 p1, 0x1

    .line 10
    iput-wide p1, p0, Lf/a/a/c/c/a;->h:J

    const/4 p1, 0x4

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lf/a/a/c/c/a;->f:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    const-string p4, "//TODO"

    aput-object p4, p1, p2

    iget-object p4, p0, Lf/a/a/c/c/a;->e:Landroid/net/Uri;

    .line 12
    invoke-virtual {p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    aput-object p4, p1, v0

    iget-object p4, p0, Lf/a/a/c/c/a;->e:Landroid/net/Uri;

    invoke-virtual {p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x3

    aput-object p4, p1, v0

    const-string p4, "--%s\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\nContent-Transfer-Encoding: binary\r\n\r\n"

    .line 13
    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/c/c/a;->j:Ljava/lang/String;

    .line 14
    new-array p1, p2, [Ljava/lang/Object;

    iget-object p2, p0, Lf/a/a/c/c/a;->f:Ljava/lang/String;

    aput-object p2, p1, p3

    const-string p2, "\r\n\r\n--%s--\r\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/c/c/a;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lf/a/a/c/c/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/c/c/a;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lf/a/a/c/c/a;->h:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v1, 0x4000

    .line 4
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lf/a/a/c/c/a;->b()Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lf/a/a/c/c/a;->j:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    :cond_0
    :goto_0
    if-lez v6, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    .line 10
    invoke-virtual {v4, v1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 11
    iget-wide v7, p0, Lf/a/a/c/c/a;->g:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    iput-wide v7, p0, Lf/a/a/c/c/a;->g:J

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 13
    :cond_2
    iget-object v0, p0, Lf/a/a/c/c/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 14
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    return v5

    :cond_3
    return v2

    :catch_0
    move-exception v0

    .line 16
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return v2

    :catch_1
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return v2

    :catch_2
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 19
    throw v0

    :catch_3
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 21
    throw v0

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b()Ljava/net/HttpURLConnection;
    .locals 7

    .line 1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lf/a/a/c/c/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 4
    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 5
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v2, v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 10
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 11
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "POST"

    .line 12
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Host"

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data;boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/a/a/c/c/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7530

    .line 16
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/a/a/c/c/a;->h:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/a/a/c/c/a;->g:J

    return-wide v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/c/c/a;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/c/c/a;->a:Landroid/content/Context;

    const-string v2, "power"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "FILE_UPLOADER_Installable"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/c/c/a;->b:Landroid/os/PowerManager$WakeLock;

    .line 5
    iget-object v0, p0, Lf/a/a/c/c/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lf/a/a/c/c/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7
    iget-object v0, p0, Lf/a/a/c/c/a;->a:Landroid/content/Context;

    const-string v2, "wifi"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 9
    iget-object v2, p0, Lf/a/a/c/c/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "FILE_UPLOADER_Installable_Wifi"

    .line 10
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/c/c/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    .line 11
    iget-object v0, p0, Lf/a/a/c/c/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 12
    :cond_1
    iget-object v0, p0, Lf/a/a/c/c/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/c/c/a;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/c/c/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3
    :cond_0
    iget-object v0, p0, Lf/a/a/c/c/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/a/a/c/c/a;->c:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/a/a/c/c/a;->e()V

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lf/a/a/c/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/a/a/c/c/a;->i:Lf/a/a/c/c/a$a;

    const-string v1, "PEDARSAG"

    invoke-interface {v0, v1}, Lf/a/a/c/c/a$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lf/a/a/c/c/a;->f()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 6
    :goto_1
    :try_start_1
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 7
    iget-object v1, p0, Lf/a/a/c/c/a;->i:Lf/a/a/c/c/a$a;

    invoke-interface {v1, v0}, Lf/a/a/c/c/a$a;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 8
    :goto_3
    invoke-virtual {p0}, Lf/a/a/c/c/a;->f()V

    .line 9
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
