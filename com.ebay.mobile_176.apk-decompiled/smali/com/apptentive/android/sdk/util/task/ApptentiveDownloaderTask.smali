.class public Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;
.super Landroid/os/AsyncTask;
.source "ApptentiveDownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static FILE_DOWNLOAD_REDIRECTION_ENABLED:Z = false


# instance fields
.field download:Z

.field private final listener:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->download:Z

    .line 56
    iput-object p2, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->listener:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;

    return-void
.end method

.method private downloadBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 126
    :cond_0
    sget-boolean v2, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->FILE_DOWNLOAD_REDIRECTION_ENABLED:Z

    .line 129
    new-instance v4, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;

    invoke-direct {v4}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;-><init>()V

    const/4 v5, 0x0

    move v6, v2

    move-object v7, v3

    move-object v8, v7

    move-object/from16 v2, p1

    .line 134
    :goto_0
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    :try_start_1
    const-string v6, "User-Agent"

    .line 137
    invoke-static {}, Lcom/apptentive/android/sdk/comm/ApptentiveClient;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Authorization"

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OAuth "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "X-API-Version"

    const/16 v7, 0x9

    .line 139
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    :cond_1
    move-object/from16 v8, p3

    if-eqz v7, :cond_2

    const-string v6, "Cookie"

    .line 141
    invoke-virtual {v10, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const v6, 0xafc8

    .line 144
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 145
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    .line 146
    invoke-virtual {v10, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept"

    const-string v7, "application/json"

    .line 147
    invoke-virtual {v10, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "GET"

    .line 149
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v10, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 152
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v6, "Location"

    .line 157
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v7, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Set-Cookie"

    .line 162
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v10

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 171
    :goto_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 172
    invoke-virtual {v4, v2}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->setCode(I)V

    .line 173
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->setReason(Ljava/lang/String;)V

    .line 175
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Status Line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 179
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 180
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 184
    :cond_3
    invoke-virtual {v4, v2}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->setHeaders(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->isSuccessful()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_9

    .line 191
    :try_start_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 194
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 195
    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 197
    :try_start_4
    new-array v3, v8, [B

    const-wide/16 v8, 0x0

    .line 201
    :cond_4
    :goto_4
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-eq v11, v12, :cond_7

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 204
    iput-boolean v5, v1, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->download:Z

    goto :goto_6

    .line 206
    :cond_5
    iget-boolean v12, v1, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->download:Z

    if-eqz v12, :cond_4

    int-to-long v14, v11

    add-long/2addr v8, v14

    if-lez v2, :cond_6

    .line 210
    new-array v12, v13, [Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v13, 0x64

    mul-long v13, v13, v8

    move-object/from16 v16, v6

    int-to-long v5, v2

    :try_start_5
    div-long/2addr v13, v5

    long-to-int v5, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v12, v6

    invoke-virtual {v1, v12}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v16, v6

    .line 212
    :goto_5
    invoke-virtual {v7, v3, v5, v11}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v6, v16

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    :goto_6
    move-object/from16 v16, v6

    .line 216
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 217
    iget-boolean v2, v1, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->download:Z

    if-nez v2, :cond_8

    .line 218
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 220
    new-array v0, v13, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_7

    .line 222
    :cond_8
    new-array v0, v13, [Ljava/lang/Integer;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    :goto_7
    :try_start_6
    invoke-static {v7}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    .line 227
    invoke-static/range {v16 .. v16}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    move-object v7, v3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v7, v3

    move-object/from16 v16, v7

    .line 226
    :goto_8
    invoke-static {v7}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    .line 227
    invoke-static/range {v16 .. v16}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v10, v8

    .line 240
    :goto_9
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "ClientProtocolException"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 243
    :try_start_7
    invoke-virtual {v4}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->isZipped()Z

    move-result v0

    invoke-static {v10, v0}, Lcom/apptentive/android/sdk/comm/ApptentiveClient;->getErrorResponse(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->setContent(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 245
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Can\'t read error stream."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-static {v2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    .line 237
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "ClientProtocolException"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v6, 0x0

    .line 234
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Timeout communicating with server."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_5
    move-exception v0

    const/4 v6, 0x0

    .line 231
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Error communicating with server."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_9
    :goto_a
    return-object v4

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;
    .locals 5

    .line 68
    new-instance v0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;-><init>()V

    const/4 v1, 0x0

    .line 70
    :try_start_0
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v2, v3, p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->downloadBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Error downloading bitmap"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v3, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->doInBackground([Ljava/lang/Object;)Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 81
    new-instance v0, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;-><init>()V

    .line 82
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->onCancelled(Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;)V

    return-void
.end method

.method protected onCancelled(Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;)V
    .locals 3

    .line 87
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveDownloaderTask onCancelled, response code:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->download:Z

    .line 89
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->listener:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;

    invoke-interface {p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;->onDownloadCancel()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->onCancelled(Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;)V

    return-void
.end method

.method protected onPostExecute(Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;)V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 96
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->setCode(I)V

    .line 98
    :cond_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApptentiveDownloaderTask onPostExecute, response code:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->listener:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;

    invoke-interface {p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;->onDownloadComplete()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->listener:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;

    invoke-interface {p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;->onDownloadError()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->onPostExecute(Lcom/apptentive/android/sdk/comm/ApptentiveHttpResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->download:Z

    .line 63
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->listener:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;->onDownloadStart()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->listener:Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask$FileDownloadListener;->onProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/task/ApptentiveDownloaderTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
