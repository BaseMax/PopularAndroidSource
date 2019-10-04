.class public final Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;
.super Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager$SimpleObserver;
.source "CoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SymbanUpdateListener"
.end annotation


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/activities/CoreActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 1

    .line 2518
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager$SimpleObserver;-><init>()V

    .line 2519
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSymbanCountChanged(Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;I)V
    .locals 2

    .line 2539
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/activities/CoreActivity;

    if-eqz p1, :cond_1

    .line 2540
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2543
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ebay/mobile/activities/CoreActivity;->access$100(ILandroid/content/Context;)V

    .line 2545
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    const v1, 0x7f0a0a58

    invoke-virtual {p1, p2, v0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->updateMenuBadge(ILcom/google/android/material/navigation/NavigationView;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onSymbanListChanged(Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager$SymbanContent;)V
    .locals 2

    .line 2525
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/activities/CoreActivity;

    if-eqz v0, :cond_2

    .line 2526
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2530
    :cond_0
    sget-object v1, Lcom/ebay/nautilus/kernel/content/ResultStatus;->SUCCESS:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager$SymbanContent;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2531
    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;->getCountOrDefault(I)I

    move-result v1

    .line 2533
    :cond_1
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object p1

    const p2, 0x7f0a0a58

    invoke-virtual {v0, v1, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->updateMenuBadge(ILcom/google/android/material/navigation/NavigationView;I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onSymbanUpdatedCompleted(Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;Lcom/ebay/nautilus/domain/data/SymbanNotification;Lcom/ebay/nautilus/domain/data/SymbanNotification$StatusEnum;)V
    .locals 1

    .line 2552
    iget-object p2, p0, Lcom/ebay/mobile/activities/CoreActivity$SymbanUpdateListener;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/mobile/activities/CoreActivity;

    if-eqz p2, :cond_1

    .line 2553
    invoke-virtual {p2}, Lcom/ebay/mobile/activities/CoreActivity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/ebay/mobile/activities/CoreActivity;->isDestroyed()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2556
    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;->getCountOrDefault(I)I

    move-result p1

    .line 2557
    invoke-virtual {p2}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object p3

    const v0, 0x7f0a0a58

    invoke-virtual {p2, p1, p3, v0}, Lcom/ebay/mobile/activities/CoreActivity;->updateMenuBadge(ILcom/google/android/material/navigation/NavigationView;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
