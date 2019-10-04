.class Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;
.super Ljava/lang/Object;
.source "GlanceBaseWrapper.java"

# interfaces
.implements Lnet/glance/android/VisitorListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/glancewrapper/GlanceBaseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlanceEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;


# direct methods
.method constructor <init>(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlanceVisitorEvent(Lnet/glance/android/Event;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 429
    invoke-virtual {p1}, Lnet/glance/android/Event;->getCode()Lnet/glance/android/EventCode;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lnet/glance/android/EventCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "EventInvalidState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "EventGuestCountChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "EventInvalidParameter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v1, "EventConnectedToSession"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "EventSessionEnded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "EventLoginFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "EventInvalidWebserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v1, "EventStartSessionFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "EventLoginSucceeded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v1, "EventConnectionWarning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v1, "EventPrivilegeViolation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 465
    :pswitch_0
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-virtual {v0, p1}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->sessionFail(Lnet/glance/android/Event;)V

    goto/16 :goto_2

    .line 455
    :pswitch_1
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;->onAuthSucceeded()V

    goto/16 :goto_2

    .line 451
    :pswitch_2
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;->onAuthFailed()V

    goto :goto_2

    .line 442
    :pswitch_3
    invoke-static {}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 443
    invoke-static {}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session Ended Reason is  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "reason"

    invoke-virtual {p1, v7}, Lnet/glance/android/Event;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "reason"

    .line 444
    invoke-virtual {p1, v0}, Lnet/glance/android/Event;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-virtual {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->agentEnd()V

    goto :goto_2

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-virtual {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->userEnd()V

    goto :goto_2

    .line 438
    :pswitch_4
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;->onAgentConnected()V

    goto :goto_2

    .line 434
    :pswitch_5
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$000(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceListener;->onSessionConnected()V

    .line 469
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {v0}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$200(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 471
    invoke-virtual {p1}, Lnet/glance/android/Event;->getCode()Lnet/glance/android/EventCode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/glance/android/EventCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v7, -0x263d7d8b

    if-eq v1, v7, :cond_7

    const v5, -0x22510260

    if-eq v1, v5, :cond_6

    const v3, 0x179e1e53

    if-eq v1, v3, :cond_5

    const v3, 0x2950a0f4

    if-eq v1, v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, "EventPresenceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_5
    const-string v1, "EventPresenceConnectFail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    goto :goto_4

    :cond_6
    const-string v1, "EventVisitorInitialized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const-string v1, "EventPresenceShowTerms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x3

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, -0x1

    :goto_4
    packed-switch v2, :pswitch_data_1

    goto :goto_5

    .line 484
    :pswitch_6
    iget-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {p1}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$500(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)V

    goto :goto_5

    .line 480
    :pswitch_7
    invoke-static {}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_9

    .line 481
    invoke-static {}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presence connection failed (will retry):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/glance/android/Event;->getMessageString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 477
    :pswitch_8
    iget-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {p1}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$400(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)V

    goto :goto_5

    .line 474
    :pswitch_9
    iget-object p1, p0, Lcom/ebay/glancewrapper/GlanceBaseWrapper$GlanceEventCallback;->this$0:Lcom/ebay/glancewrapper/GlanceBaseWrapper;

    invoke-static {p1}, Lcom/ebay/glancewrapper/GlanceBaseWrapper;->access$300(Lcom/ebay/glancewrapper/GlanceBaseWrapper;)Lcom/ebay/glancewrapper/PresenceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/glancewrapper/PresenceListener;->onPresenceInitialized()V

    :cond_9
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x575caa72 -> :sswitch_a
        -0x37304c7c -> :sswitch_9
        -0x346955ee -> :sswitch_8
        -0x213f56b5 -> :sswitch_7
        -0x1cdfce06 -> :sswitch_6
        -0x18b5cdd4 -> :sswitch_5
        0x2ab4755e -> :sswitch_4
        0x3219b6ac -> :sswitch_3
        0x65d3ba0c -> :sswitch_2
        0x6a947f41 -> :sswitch_1
        0x73d07474 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
