.class public final Lcom/ebay/mobile/analytics/InstallTracking$InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/analytics/InstallTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallReceiver"
.end annotation


# static fields
.field public static final EXTRA_MPPID:Ljava/lang/String; = "mppid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {p1}, Lcom/ebay/mobile/analytics/InstallTracking;->access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "install_tracking_preinstall"

    .line 228
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/ebay/mobile/analytics/InstallTracking;->getCarrierIdRoverUrl(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 231
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 232
    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->epJobService:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-static {p1}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationJobService;->isScheduled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    invoke-static {p1, v1}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationJobService;->start(Landroid/content/Context;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    :cond_1
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    invoke-static {}, Lcom/ebay/mobile/analytics/InstallTracking;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 240
    invoke-static {}, Lcom/ebay/mobile/analytics/InstallTracking;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    invoke-static {v0, v3}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 245
    invoke-static {}, Lcom/ebay/mobile/analytics/InstallTracking;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "referrer"

    .line 248
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 249
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "mppid"

    .line 252
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "="

    .line 255
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 256
    array-length v0, p2

    if-ne v0, v2, :cond_5

    .line 258
    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/install/?mppid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&custom=true"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/analytics/InstallTracking;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 263
    invoke-static {p1, p2}, Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;->start(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    const-string v0, "+"

    const-string v1, "%20"

    .line 269
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/analytics/InstallTracking;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;->start(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    const-string v1, "com.ebay.mobile.INSTALL_REFERRER"

    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "mppid"

    .line 274
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/install/?mppid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&custom=true"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/analytics/InstallTracking;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 278
    invoke-static {p1, p2}, Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;->start(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method
