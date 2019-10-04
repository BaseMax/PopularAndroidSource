.class public Lcom/webengage/sdk/android/ExecutorService;
.super Lcom/webengage/sdk/android/as;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/webengage/sdk/android/as;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "action_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p2

    invoke-virtual {p2}, Lcom/webengage/sdk/android/aa;->c()V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->b()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/webengage/sdk/android/ExecutorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "topic"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/webengage/sdk/android/af;

    if-eqz v2, :cond_1

    sget-object p1, Lcom/webengage/sdk/android/ExecutorService$1;->a:[I

    invoke-virtual {v2}, Lcom/webengage/sdk/android/af;->ordinal()I

    move-result v3

    aget p1, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const-string v4, "data"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object p1

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/ac;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/ExecutorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/ac;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/ac;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :pswitch_5
    :try_start_2
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :pswitch_6
    :try_start_3
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    return-void

    :pswitch_9
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/l;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    return-void

    :pswitch_a
    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/webengage/sdk/android/ExecutorService;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    invoke-virtual {v0, v1, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-super {p0, p1}, Lcom/webengage/sdk/android/as;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/webengage/sdk/android/as;->onCreate()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/webengage/sdk/android/as;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/webengage/sdk/android/as;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/webengage/sdk/android/as;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/webengage/sdk/android/as;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
