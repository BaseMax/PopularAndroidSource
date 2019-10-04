.class Lcom/ebay/android/widget/RemoteImageViewDirectLoader;
.super Ljava/lang/Object;
.source "RemoteImageViewDirectLoader.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoader;
.implements Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$Observer;


# static fields
.field private static final ASYNC:Lcom/codahale/metrics/Timer;

.field private static final CANCELED:Lcom/codahale/metrics/Counter;

.field private static final FAILED:Lcom/codahale/metrics/Counter;

.field private static final IMMEDIATE:Lcom/codahale/metrics/Counter;

.field private static final LOAD:Lcom/codahale/metrics/Timer;

.field private static final LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static final RESET:Lcom/codahale/metrics/Counter;

.field private static final TOTAL:Lcom/codahale/metrics/Counter;


# instance fields
.field private asyncTimeContext:Lcom/codahale/metrics/Timer$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

.field private final destinationVisibility:Lcom/ebay/android/widget/ViewVisibility;

.field private dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private failed:Z

.field private final height:I

.field private final imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private loadTimeContext:Lcom/codahale/metrics/Timer$Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private loadToken:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final use565Decode:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "RemoteImageView"

    const-string v2, "RemoteImageView Image Strategy"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 36
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "load"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->timer(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOAD:Lcom/codahale/metrics/Timer;

    .line 42
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "async"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->timer(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->ASYNC:Lcom/codahale/metrics/Timer;

    .line 48
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v1, "total"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->TOTAL:Lcom/codahale/metrics/Counter;

    .line 53
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->RESET:Lcom/codahale/metrics/Counter;

    .line 58
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "immediate"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->IMMEDIATE:Lcom/codahale/metrics/Counter;

    .line 63
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "failed"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->FAILED:Lcom/codahale/metrics/Counter;

    .line 68
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "canceled"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->counter(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->CANCELED:Lcom/codahale/metrics/Counter;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V
    .locals 1
    .param p1    # Lcom/ebay/android/widget/ImageViewLoaderCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/android/widget/ViewVisibility;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/image/ImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "destination may not be null"

    .line 111
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    const-string/jumbo p1, "viewVisibility may not be null"

    .line 112
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ViewVisibility;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->destinationVisibility:Lcom/ebay/android/widget/ViewVisibility;

    .line 113
    iput-object p3, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 114
    iput-object p4, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    .line 115
    iput p5, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->width:I

    .line 116
    iput p6, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->height:I

    .line 117
    iput-boolean p7, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->use565Decode:Z

    .line 118
    sget-object p1, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->TOTAL:Lcom/codahale/metrics/Counter;

    invoke-virtual {p1}, Lcom/codahale/metrics/Counter;->inc()V

    return-void
.end method

.method private checkAndSetDataManager()Z
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    sget-object v1, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$KeyParams;

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLoadable()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/image/ImageData;->isValid(Lcom/ebay/nautilus/domain/data/image/ImageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyFailure()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    invoke-interface {v0, p0}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V

    return-void
.end method

.method private notifySuccess()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->destination:Lcom/ebay/android/widget/ImageViewLoaderCallbacks;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    invoke-interface {v0, p0, v1}, Lcom/ebay/android/widget/ImageViewLoaderCallbacks;->onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V

    return-void
.end method

.method private startAsyncTimer()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->asyncTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-nez v0, :cond_0

    .line 303
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->ASYNC:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->asyncTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private startLoadTimer()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-nez v0, :cond_0

    .line 282
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->LOAD:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private stopAsyncTimer()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->asyncTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->asyncTimeContext:Lcom/codahale/metrics/Timer$Context;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->asyncTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method

.method private stopLoadTimer()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadTimeContext:Lcom/codahale/metrics/Timer$Context;

    .line 198
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->asyncTimeContext:Lcom/codahale/metrics/Timer$Context;

    .line 200
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadToken:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    sget-object v1, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->CANCELED:Lcom/codahale/metrics/Counter;

    invoke-virtual {v1}, Lcom/codahale/metrics/Counter;->inc()V

    .line 204
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadToken:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->cancelLoadImage(Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;)V

    .line 205
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    invoke-virtual {v1, p0}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->unregisterObserver(Ljava/lang/Object;)V

    .line 206
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadToken:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatch()V
    .locals 9

    .line 230
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->isLoadable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->failed:Z

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->notifyFailure()V

    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    if-eqz v0, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->notifySuccess()V

    return-void

    .line 248
    :cond_2
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->startLoadTimer()V

    .line 251
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadToken:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;

    if-eqz v0, :cond_3

    return-void

    .line 255
    :cond_3
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->checkAndSetDataManager()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v2, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->width:I

    iget v3, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->loadImageImmediate(Lcom/ebay/nautilus/domain/data/image/ImageData;II)Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 260
    iget-object v1, v0, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;->image:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 262
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->stopLoadTimer()V

    .line 263
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    .line 264
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->IMMEDIATE:Lcom/codahale/metrics/Counter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Counter;->inc()V

    .line 265
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->notifySuccess()V

    return-void

    .line 270
    :cond_5
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->startAsyncTimer()V

    .line 271
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->destinationVisibility:Lcom/ebay/android/widget/ViewVisibility;

    invoke-virtual {v0}, Lcom/ebay/android/widget/ViewVisibility;->isVisible()Z

    move-result v7

    .line 273
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v4, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->width:I

    iget v5, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->height:I

    const/4 v6, 0x0

    iget-boolean v8, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->use565Decode:Z

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->loadImage(Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$Observer;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZZZ)Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadToken:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;

    return-void
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    return-object v0
.end method

.method public bridge synthetic getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    return-object v0
.end method

.method public isAppropriateForDecode(Z)Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->use565Decode:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAppropriateForDimension(II)Z
    .locals 1

    .line 131
    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->width:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->height:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/image/LoadImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 143
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageData:Lcom/ebay/nautilus/domain/data/image/ImageData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFailed()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->failed:Z

    return v0
.end method

.method public onLoadImageComplete(Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->stopAsyncTimer()V

    .line 341
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;->unregisterObserver(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 342
    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager;

    .line 343
    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->loadToken:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$LoadToken;

    if-nez p2, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    :goto_0
    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    .line 347
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->stopLoadTimer()V

    .line 356
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->notifySuccess()V

    goto :goto_2

    .line 349
    :cond_2
    :goto_1
    sget-object p1, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->FAILED:Lcom/codahale/metrics/Counter;

    invoke-virtual {p1}, Lcom/codahale/metrics/Counter;->inc()V

    const/4 p1, 0x1

    .line 350
    iput-boolean p1, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->failed:Z

    .line 351
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->notifyFailure()V

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 1

    .line 216
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->RESET:Lcom/codahale/metrics/Counter;

    invoke-virtual {v0}, Lcom/codahale/metrics/Counter;->inc()V

    .line 217
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->cancel()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->imageInfo:Lcom/ebay/nautilus/domain/content/dm/ImageDataManager$ImageInfo;

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;->failed:Z

    return-void
.end method
