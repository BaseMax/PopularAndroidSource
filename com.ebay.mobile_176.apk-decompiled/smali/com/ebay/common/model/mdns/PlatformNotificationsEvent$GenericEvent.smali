.class public Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;
.super Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericEvent"
.end annotation


# instance fields
.field private testConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 456
    invoke-direct {p0}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;-><init>()V

    const/4 v0, 0x0

    .line 453
    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->testConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    const-string v0, "GENERIC"

    .line 457
    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;->eventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setConfiguration(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 527
    iput-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->testConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    return-void
.end method

.method public setInfo(Lcom/ebay/nautilus/domain/data/notification/GenericNotification;)V
    .locals 2

    if-eqz p1, :cond_6

    .line 468
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->action:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAction;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 471
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->action:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAction;->click:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->click:Ljava/lang/String;

    .line 472
    iget-boolean v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->canStack:Z

    iput-boolean v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->canStack:Z

    .line 473
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->imageUrl:Ljava/lang/String;

    .line 474
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->action:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAction;->buttons:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->buttons:Ljava/util/List;

    .line 475
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->action:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAction;->actionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->actionId:Ljava/lang/String;

    .line 476
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->sound:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->soundBucket:Ljava/lang/String;

    .line 480
    iget-boolean v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->canStack:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;->event:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;->event:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->genericMdnsName:Ljava/lang/String;

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->evt:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->genericMdnsName:Ljava/lang/String;

    .line 489
    :goto_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 491
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;->click:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;->click:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->stackClick:Ljava/lang/String;

    goto :goto_1

    .line 494
    :cond_2
    iput-boolean v1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->canStack:Z

    .line 498
    :goto_1
    :try_start_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;->count:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->stackCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :catch_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;->alert:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;->alert:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;->body:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->stackBody:Ljava/lang/String;

    .line 508
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->stack:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationStack;->alert:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->stackTitle:Ljava/lang/String;

    goto :goto_2

    .line 511
    :cond_3
    iput-boolean v1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->canStack:Z

    goto :goto_2

    .line 514
    :cond_4
    iput-boolean v1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->canStack:Z

    .line 517
    :goto_2
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->alert:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;

    if-eqz v0, :cond_5

    .line 519
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->alert:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->title:Ljava/lang/String;

    .line 520
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification;->alert:Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/notification/GenericNotification$NotificationAlert;->body:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$GenericEvent;->content:Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    :goto_3
    return-void
.end method
