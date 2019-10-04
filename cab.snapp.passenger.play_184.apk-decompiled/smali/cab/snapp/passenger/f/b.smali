.class public final Lcab/snapp/passenger/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcab/snapp/deeplink/models/a;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getDeepLink()Lcab/snapp/deeplink/models/a;
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/f/b;->a:Lcab/snapp/deeplink/models/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized handleDeepLink(Lcab/snapp/arch/protocol/BaseRouter;)V
    .locals 4

    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcab/snapp/passenger/f/b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/f/b;->a:Lcab/snapp/deeplink/models/a;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcab/snapp/passenger/f/b;->a:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/f/b;->a:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Open:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v0, v1}, Lcab/snapp/deeplink/models/types/Host;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/f/b;->a:Lcab/snapp/deeplink/models/a;

    .line 91
    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/f/b;->a:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcab/snapp/passenger/units/main/f;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/f/b;->a:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "Settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "Favorite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "favorite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "addcredit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_5
    const-string v2, "inbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "Inbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "Referral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "referral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "Addcredit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 127
    :pswitch_0
    check-cast p1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/f;->routeToAddCreditDialog()V

    .line 128
    invoke-virtual {p0, v3}, Lcab/snapp/passenger/f/b;->setHasPendingDeepLink(Z)V

    goto :goto_1

    .line 120
    :pswitch_1
    check-cast p1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/f;->routeToFavoriteUnit()V

    .line 121
    invoke-virtual {p0, v3}, Lcab/snapp/passenger/f/b;->setHasPendingDeepLink(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 113
    :pswitch_2
    :try_start_1
    check-cast p1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/f;->routeToInbox()V

    .line 114
    invoke-virtual {p0, v3}, Lcab/snapp/passenger/f/b;->setHasPendingDeepLink(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 106
    :pswitch_3
    :try_start_2
    check-cast p1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/f;->routeToReferralUnit()V

    .line 107
    invoke-virtual {p0, v3}, Lcab/snapp/passenger/f/b;->setHasPendingDeepLink(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 99
    :pswitch_4
    :try_start_3
    check-cast p1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/f;->routeToSettingUnit()V

    .line 100
    invoke-virtual {p0, v3}, Lcab/snapp/passenger/f/b;->setHasPendingDeepLink(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d557946 -> :sswitch_9
        -0x2b118463 -> :sswitch_8
        -0x27372043 -> :sswitch_7
        0x4383266 -> :sswitch_6
        0x5fb2286 -> :sswitch_5
        0x1b3866da -> :sswitch_4
        0x3ea1c99c -> :sswitch_3
        0x427c2dbc -> :sswitch_2
        0x5582bc23 -> :sswitch_1
        0x595d2043 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPendingDeepLink()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcab/snapp/passenger/f/b;->b:Z

    return v0
.end method

.method public final declared-synchronized setDeepLink(Lcab/snapp/deeplink/models/a;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    iput-object p1, p0, Lcab/snapp/passenger/f/b;->a:Lcab/snapp/deeplink/models/a;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcab/snapp/passenger/f/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final setHasPendingDeepLink(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcab/snapp/passenger/f/b;->b:Z

    return-void
.end method
