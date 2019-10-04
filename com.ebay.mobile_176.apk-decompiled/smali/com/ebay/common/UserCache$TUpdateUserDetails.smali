.class final Lcom/ebay/common/UserCache$TUpdateUserDetails;
.super Ljava/lang/Thread;
.source "UserCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/UserCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TUpdateUserDetails"
.end annotation


# instance fields
.field private final api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final i:Lcom/ebay/common/UserCache$Internal;


# direct methods
.method public constructor <init>(Lcom/ebay/common/UserCache$Internal;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->i:Lcom/ebay/common/UserCache$Internal;

    .line 384
    iput-object p2, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 385
    iput-object p3, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/UserCache$TUpdateUserDetails;)Lcom/ebay/common/UserCache$Internal;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->i:Lcom/ebay/common/UserCache$Internal;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xa

    .line 394
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 402
    :try_start_1
    iget-object v1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v2, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->api:Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    invoke-static {v1, v2}, Lcom/ebay/common/net/api/trading/EbayTradingApiHelper;->getUser(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)Lcom/ebay/common/model/UserDetail;

    move-result-object v1

    .line 403
    new-instance v2, Lcom/ebay/common/UserCache$TUpdateUserDetails$1;

    invoke-direct {v2, p0, v1}, Lcom/ebay/common/UserCache$TUpdateUserDetails$1;-><init>(Lcom/ebay/common/UserCache$TUpdateUserDetails;Lcom/ebay/common/model/UserDetail;)V

    .line 414
    iget-object v1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->i:Lcom/ebay/common/UserCache$Internal;

    iget-object v1, v1, Lcom/ebay/common/UserCache$Internal;->runHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-static {v1, v0}, Lcom/ebay/common/UserCache$Internal;->access$302(Lcom/ebay/common/UserCache$Internal;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_1

    .line 415
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 419
    :catch_1
    :try_start_3
    iget-object v1, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-static {v1}, Lcom/ebay/common/UserCache$Internal;->access$100(Lcom/ebay/common/UserCache$Internal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    :try_start_4
    iget-object v2, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-static {v2}, Lcom/ebay/common/UserCache$Internal;->access$200(Lcom/ebay/common/UserCache$Internal;)I

    move-result v3

    and-int/lit8 v3, v3, -0x3

    invoke-static {v2, v3}, Lcom/ebay/common/UserCache$Internal;->access$202(Lcom/ebay/common/UserCache$Internal;I)I

    .line 422
    monitor-exit v1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 426
    :goto_2
    iget-object v2, p0, Lcom/ebay/common/UserCache$TUpdateUserDetails;->i:Lcom/ebay/common/UserCache$Internal;

    invoke-static {v2, v0}, Lcom/ebay/common/UserCache$Internal;->access$302(Lcom/ebay/common/UserCache$Internal;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 427
    throw v1
.end method
