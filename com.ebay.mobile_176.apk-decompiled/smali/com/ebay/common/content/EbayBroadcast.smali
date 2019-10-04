.class public final Lcom/ebay/common/content/EbayBroadcast;
.super Ljava/lang/Object;
.source "EbayBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_COUNTRY_CHANGED:Ljava/lang/String; = "com.ebay.common.intent.action.EBAY_COUNTRY_CHANGED"

.field public static final ACTION_DCS_CHANGED:Ljava/lang/String; = "com.ebay.common.intent.action.EBAY_DCS_CHANGED"

.field public static final ACTION_SITE_CHANGED:Ljava/lang/String; = "com.ebay.common.intent.action.EBAY_SITE_CHANGED"

.field public static final ACTION_SYMBAN_UPDATE:Ljava/lang/String; = "com.ebay.common.intent.action.EBAY_SYMBAN_UPDATE"

.field public static final ACTION_UI_INITIALIZED:Ljava/lang/String; = "com.ebay.common.intent.action.EBAY_UI_INITIALIZED"

.field public static final EXTRA_NEW_COUNTRY:Ljava/lang/String; = "com.ebay.common.content.EbayBroadcast.NEW_COUNTRY"

.field public static final EXTRA_NEW_SITE:Ljava/lang/String; = "com.ebay.common.content.EbayBroadcast.NEW_SITE"

.field public static final EXTRA_SENDING_PROCESS_ID:Ljava/lang/String; = "com.ebay.common.content.EbayBroadcast.SENDING_PROCESS_ID"

.field public static final PERMISSION:Ljava/lang/String; = ".permission.EBAY_USER_CONFIG"

.field public static final log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "EbayBroadcast"

    const-string v2, "Log eBay broadcast events"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 280
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    .line 282
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".permission.EBAY_USER_CONFIG"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3

    .line 336
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    .line 338
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".permission.EBAY_USER_CONFIG"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static registerSynchronousReceiver(Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;)V
    .locals 3

    .line 368
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for in-process synchronous delivery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    .line 371
    :cond_0
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 373
    :try_start_0
    sget-object v1, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 375
    sget-object v2, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 376
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;

    if-nez v2, :cond_1

    .line 378
    sget-object v2, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-ne v2, p0, :cond_2

    .line 380
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 382
    :cond_3
    sget-object v1, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static final sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.ebay.common.content.EbayBroadcast.SENDING_PROCESS_ID"

    .line 221
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending synchronous handlers for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    .line 225
    :cond_0
    invoke-static {p0, p1}, Lcom/ebay/common/content/EbayBroadcast;->sendSynchronous(Landroid/content/Context;Landroid/content/Intent;)V

    .line 227
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".permission.EBAY_USER_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendCountryChangedBroadcast(Landroid/content/Context;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 2

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ebay.common.intent.action.EBAY_COUNTRY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "com.ebay.common.content.EbayBroadcast.NEW_COUNTRY"

    .line 162
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    :cond_0
    invoke-static {p0, v0}, Lcom/ebay/common/content/EbayBroadcast;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static final sendDcsChangedBroadcast(Landroid/content/Context;)V
    .locals 2

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ebay.common.intent.action.EBAY_DCS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ebay/common/content/EbayBroadcast;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static final sendSiteChangedBroadcast(Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;)V
    .locals 2

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ebay.common.intent.action.EBAY_SITE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Lcom/ebay/common/content/EbayBroadcast;->toCompatibleSite(Lcom/ebay/nautilus/domain/EbaySite;)Lcom/ebay/common/model/EbaySite;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "com.ebay.common.content.EbayBroadcast.NEW_SITE"

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    :cond_0
    invoke-static {p0, v0}, Lcom/ebay/common/content/EbayBroadcast;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static sendSymbanUpdateBroadcast(Landroid/content/Context;)V
    .locals 2

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ebay.common.intent.action.EBAY_SYMBAN_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-static {p0, v0}, Lcom/ebay/common/content/EbayBroadcast;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static sendSynchronous(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 412
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 414
    :try_start_0
    sget-object v1, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    :goto_0
    sget-object v3, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 421
    sget-object v3, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 422
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;

    if-eqz v3, :cond_1

    .line 425
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_1
    sget-object v3, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 431
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;

    .line 434
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v1, p0, v2}, Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 431
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static final toCompatibleSite(Lcom/ebay/nautilus/domain/EbaySite;)Lcom/ebay/common/model/EbaySite;
    .locals 0

    if-eqz p0, :cond_0

    .line 134
    :try_start_0
    iget p0, p0, Lcom/ebay/nautilus/domain/EbaySite;->idInt:I

    invoke-static {p0}, Lcom/ebay/common/model/EbaySite;->getSiteFromId(I)Lcom/ebay/common/model/EbaySite;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 3

    .line 353
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static unregisterSynchronousReceiver(Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;)V
    .locals 3

    .line 394
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for in-process synchronous delivery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    .line 397
    :cond_0
    sget-object v0, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 399
    :try_start_0
    sget-object v1, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 401
    sget-object v2, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 402
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/content/EbayBroadcast$SynchronousReceiver;

    if-eqz v2, :cond_1

    if-ne v2, p0, :cond_2

    .line 404
    :cond_1
    sget-object v2, Lcom/ebay/common/content/EbayBroadcast;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 406
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
