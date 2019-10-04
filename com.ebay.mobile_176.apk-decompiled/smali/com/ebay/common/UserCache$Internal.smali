.class final Lcom/ebay/common/UserCache$Internal;
.super Ljava/lang/Object;
.source "UserCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/UserCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Internal"
.end annotation


# static fields
.field private static single:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ebay/common/UserCache$Internal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flagUserDetailsState:I

.field private final leftFeedbackItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final paidStatusAndTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ebay/common/UserCache$PaidStatusAndTime;",
            ">;"
        }
    .end annotation
.end field

.field private final priceRevealedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final runHandler:Landroid/os/Handler;

.field private final shippedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threadUserDetails:Ljava/lang/Thread;

.field private volatile userDetails:Lcom/ebay/common/model/UserDetail;

.field private final userDetailsHandlers:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/UserCache$Internal;->runHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/UserCache$Internal;->shippedItems:Ljava/util/HashSet;

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/UserCache$Internal;->leftFeedbackItems:Ljava/util/HashSet;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/UserCache$Internal;->priceRevealedItems:Ljava/util/HashSet;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/UserCache$Internal;->paidStatusAndTime:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/UserCache$Internal;->userDetailsHandlers:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/common/UserCache$Internal;)Ljava/lang/Object;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/ebay/common/UserCache$Internal;->userDetailsHandlers:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/common/UserCache$Internal;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    return p0
.end method

.method static synthetic access$202(Lcom/ebay/common/UserCache$Internal;I)I
    .locals 0

    .line 157
    iput p1, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    return p1
.end method

.method static synthetic access$302(Lcom/ebay/common/UserCache$Internal;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/ebay/common/UserCache$Internal;->threadUserDetails:Ljava/lang/Thread;

    return-object p1
.end method

.method private generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p2, "any"

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static declared-synchronized get()Lcom/ebay/common/UserCache$Internal;
    .locals 3

    const-class v0, Lcom/ebay/common/UserCache$Internal;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v1, Lcom/ebay/common/UserCache$Internal;->single:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ebay/common/UserCache$Internal;->single:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/UserCache$Internal;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 177
    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lcom/ebay/common/UserCache$Internal;

    invoke-direct {v2}, Lcom/ebay/common/UserCache$Internal;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/ebay/common/UserCache$Internal;->single:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 178
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 174
    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getIfExists()Lcom/ebay/common/UserCache$Internal;
    .locals 2

    const-class v0, Lcom/ebay/common/UserCache$Internal;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v1, Lcom/ebay/common/UserCache$Internal;->single:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ebay/common/UserCache$Internal;->single:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/UserCache$Internal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method addToLeftFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object p2, p0, Lcom/ebay/common/UserCache$Internal;->leftFeedbackItems:Ljava/util/HashSet;

    monitor-enter p2

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->leftFeedbackItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method addToPaidStatus(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/UserCache$PaidStatusAndTime;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->paidStatusAndTime:Ljava/util/HashMap;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->paidStatusAndTime:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final clearAll()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/ebay/common/UserCache$Internal;->clearPaid()V

    .line 189
    invoke-virtual {p0}, Lcom/ebay/common/UserCache$Internal;->clearPriceRevealed()V

    .line 190
    invoke-virtual {p0}, Lcom/ebay/common/UserCache$Internal;->clearUserDetails()V

    return-void
.end method

.method clearLeftFeedback()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->leftFeedbackItems:Ljava/util/HashSet;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->leftFeedbackItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 293
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearPaid()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->paidStatusAndTime:Ljava/util/HashMap;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->paidStatusAndTime:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearPriceRevealed()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->priceRevealedItems:Ljava/util/HashSet;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->priceRevealedItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 312
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final clearUserDetails()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->userDetailsHandlers:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->threadUserDetails:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 350
    :try_start_1
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->threadUserDetails:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/ebay/common/UserCache$Internal;->threadUserDetails:Ljava/lang/Thread;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/ebay/common/UserCache$Internal;->threadUserDetails:Ljava/lang/Thread;

    .line 358
    throw v1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 360
    iput v1, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    .line 361
    iput-object v2, p0, Lcom/ebay/common/UserCache$Internal;->userDetails:Lcom/ebay/common/model/UserDetail;

    .line 362
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method getPaidStatusAndTime(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/UserCache$PaidStatusAndTime;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->paidStatusAndTime:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/UserCache$PaidStatusAndTime;

    return-object p1
.end method

.method public final getUserDetails()Lcom/ebay/common/model/UserDetail;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->userDetails:Lcom/ebay/common/model/UserDetail;

    return-object v0
.end method

.method hasLeftFeedback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->leftFeedbackItems:Ljava/util/HashSet;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->leftFeedbackItems:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 282
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isPriceRevealed(Ljava/lang/String;)Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->priceRevealedItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isShipped(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->shippedItems:Ljava/util/HashSet;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->shippedItems:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 253
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final refreshUserDetails(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->userDetailsHandlers:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/UserCache$Internal;->threadUserDetails:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 321
    new-instance v1, Lcom/ebay/common/UserCache$TUpdateUserDetails;

    invoke-direct {v1, p0, p1, p2}, Lcom/ebay/common/UserCache$TUpdateUserDetails;-><init>(Lcom/ebay/common/UserCache$Internal;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;)V

    iput-object v1, p0, Lcom/ebay/common/UserCache$Internal;->threadUserDetails:Ljava/lang/Thread;

    .line 322
    iget p1, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    .line 323
    iget-object p1, p0, Lcom/ebay/common/UserCache$Internal;->threadUserDetails:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 325
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setPriceRevealed(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->priceRevealedItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setShipped(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    .line 230
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/UserCache$Internal;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    iget-object p2, p0, Lcom/ebay/common/UserCache$Internal;->shippedItems:Ljava/util/HashSet;

    monitor-enter p2

    if-eqz p3, :cond_1

    .line 235
    :try_start_0
    iget-object p3, p0, Lcom/ebay/common/UserCache$Internal;->shippedItems:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 239
    :cond_1
    iget-object p3, p0, Lcom/ebay/common/UserCache$Internal;->shippedItems:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public final setUserDetails(Lcom/ebay/common/model/UserDetail;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->userDetailsHandlers:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iput-object p1, p0, Lcom/ebay/common/UserCache$Internal;->userDetails:Lcom/ebay/common/model/UserDetail;

    .line 333
    iget p1, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    .line 334
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final updateUserDetails(Lcom/ebay/common/model/UserDetail;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/ebay/common/UserCache$Internal;->userDetailsHandlers:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    iput-object p1, p0, Lcom/ebay/common/UserCache$Internal;->userDetails:Lcom/ebay/common/model/UserDetail;

    const/4 p1, 0x1

    .line 370
    iput p1, p0, Lcom/ebay/common/UserCache$Internal;->flagUserDetailsState:I

    .line 371
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
