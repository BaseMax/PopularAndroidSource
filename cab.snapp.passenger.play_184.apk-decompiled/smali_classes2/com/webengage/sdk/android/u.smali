.class public Lcom/webengage/sdk/android/u;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/u;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/webengage/sdk/android/u;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const-string v0, "message_action"

    const-string v1, "source"

    const-string v2, "amplified"

    const-string v3, "message_data"

    const-string v4, "Error while closing push-amp input stream"

    const-string v5, "WebEngage"

    check-cast p1, Lcom/webengage/sdk/android/utils/a/g;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    new-instance v6, Lorg/a/c;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/webengage/sdk/android/utils/f;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    const-string v7, "status"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "success"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v7, Lorg/a/c;->NULL:Ljava/lang/Object;

    if-eq v6, v7, :cond_2

    const-string v7, "next"

    const-wide/16 v8, 0xb4

    invoke-virtual {v6, v7, v8, v9}, Lorg/a/c;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    mul-long v7, v7, v9

    invoke-virtual {p0, v7, v8}, Lcom/webengage/sdk/android/u;->a(J)V

    const-string v7, "pushPayloads"

    invoke-virtual {v6, v7}, Lorg/a/c;->optJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/a/a;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/a/a;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v6, v7}, Lorg/a/a;->getJSONObject(I)Lorg/a/c;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8, v1}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lcom/webengage/sdk/android/utils/k;->c(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/webengage/sdk/android/u;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v9

    sget-object v10, Lcom/webengage/sdk/android/af;->c:Lcom/webengage/sdk/android/af;

    invoke-virtual {v9, v10, v8}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-static {v5, v4, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Exception while parsing push amplification data"

    invoke-static {v5, v1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/u;->d(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-static {v5, v4, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/u;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/webengage/sdk/android/utils/a/f$a;

    sget-object v1, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v2, p0, Lcom/webengage/sdk/android/u;->b:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v2}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f;->i()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
