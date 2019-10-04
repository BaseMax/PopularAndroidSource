.class Lcom/ebay/android/widget/ViewToVisibilityFunction;
.super Ljava/lang/Object;
.source "ViewToVisibilityFunction.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final IS_VISIBLE:Lcom/codahale/metrics/Timer;

.field private static final LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private final viewRect:Landroid/graphics/Rect;

.field private final visibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "ViewToVisibility"

    const-string v2, "View visibility detection function"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 32
    sget-object v0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "isVisible"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->timer(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->IS_VISIBLE:Lcom/codahale/metrics/Timer;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->visibleRect:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->viewRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    sget-object v0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->IS_VISIBLE:Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 45
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    return-object p1

    .line 53
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 54
    iget-object v2, p0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->visibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 55
    iget-object p1, p0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->visibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ebay/android/widget/ViewToVisibilityFunction;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    return-object p1

    .line 61
    :catch_0
    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    return-object p1

    :goto_0
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    .line 67
    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 23
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/ViewToVisibilityFunction;->apply(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
