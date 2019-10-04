.class public Lcom/webengage/sdk/android/aa;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/webengage/sdk/android/f;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/aa;->b:Lcom/webengage/sdk/android/f;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->b:Lcom/webengage/sdk/android/f;

    invoke-virtual {v1, v0}, Lcom/webengage/sdk/android/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "time_spent"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object p1

    sget-object p2, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    const-string v1, "user_increment"

    iget-object v2, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v3, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object p2

    sget-object v0, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {p2, v0, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public b()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "session_type"

    const-string v2, "background"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v2, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "visitor_new_session"

    invoke-static {v4, v0, v3, v3, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    iget-object v2, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public c()V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "visitor_session_close"

    invoke-static {v3, v2, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v1

    iget-object v2, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public d()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "session_type"

    const-string v2, "online"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    const-string v3, "visitor_new_session"

    iget-object v4, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v3, v0, v5, v5, v4}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public e()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "session_type"

    const-string v2, "background"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    const-string v3, "visitor_new_session"

    iget-object v4, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v3, v0, v5, v5, v4}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public f()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    const-string v2, "visitor_session_close"

    iget-object v3, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v4, v3}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public g()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->k:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public h()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->k:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/webengage/sdk/android/aa;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1, v2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
