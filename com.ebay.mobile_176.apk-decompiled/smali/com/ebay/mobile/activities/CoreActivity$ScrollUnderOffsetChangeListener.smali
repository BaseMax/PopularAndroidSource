.class public final Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;
.super Ljava/lang/Object;
.source "CoreActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrollUnderOffsetChangeListener"
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

.field private isHiding:Z


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 1

    .line 2478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2475
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;->isHiding:Z

    .line 2479
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    .line 2485
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/activities/CoreActivity;

    if-eqz p1, :cond_3

    .line 2486
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2490
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;->isHiding:Z

    const v1, 0x7f0a068b

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    const/4 p2, 0x1

    .line 2492
    iput-boolean p2, p0, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;->isHiding:Z

    .line 2493
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p2, :cond_2

    .line 2496
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070439

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 2497
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->invalidate()V

    goto :goto_0

    .line 2500
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;->isHiding:Z

    if-eqz v0, :cond_2

    if-ltz p2, :cond_2

    const/4 p2, 0x0

    .line 2502
    iput-boolean p2, p0, Lcom/ebay/mobile/activities/CoreActivity$ScrollUnderOffsetChangeListener;->isHiding:Z

    .line 2503
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/activities/CoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 2506
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 2507
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->invalidate()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
