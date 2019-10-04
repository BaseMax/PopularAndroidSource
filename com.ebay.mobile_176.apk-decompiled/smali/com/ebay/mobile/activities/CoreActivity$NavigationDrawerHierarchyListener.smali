.class public final Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;
.super Ljava/lang/Object;
.source "CoreActivity.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationDrawerHierarchyListener"
.end annotation


# static fields
.field private static final navigationIds:Landroid/util/SparseIntArray;


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
.method static constructor <clinit>()V
    .locals 1

    .line 2569
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 1

    .line 2575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->activityReference:Ljava/lang/ref/WeakReference;

    .line 2577
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->resetNavigationIds()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 2658
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/google/android/material/internal/NavigationMenuItemView;

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2662
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/activities/CoreActivity;

    if-eqz v0, :cond_4

    .line 2663
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2666
    :cond_1
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 2670
    :cond_2
    iget-boolean v0, v0, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 2671
    :goto_0
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/NavigationMenuView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 2672
    sget-object v1, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    add-int/2addr p1, v0

    const/4 v0, -0x1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    return-void

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method resetNavigationIds()V
    .locals 12

    .line 2583
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 2584
    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->wallet:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    .line 2585
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$App$B;->ebayPlusMemberHub:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    .line 2587
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 2595
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    const v4, 0x7f0a09d6

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2596
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    const v4, 0x7f0a09da

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2597
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    const v4, 0x7f0a09d8

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2602
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    const v4, 0x7f0a09d9

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2603
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    const v4, 0x7f0a09e2

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2605
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v2

    sget-object v3, Lcom/ebay/mobile/dcs/Dcs$App$B;->heartSave:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const v3, 0x7f0a09de

    const v4, 0x7f0a09d0

    const/16 v5, 0xa

    const v6, 0x7f0a09dc

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    if-eqz v2, :cond_0

    .line 2607
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const v10, 0x7f0a09dd

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2608
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2609
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2610
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2614
    :cond_0
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2615
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2616
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2617
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const v3, 0x7f0a09d4

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    const/16 v2, 0xc

    .line 2623
    sget-object v3, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/16 v4, 0xd

    const v5, 0x7f0a09d1

    invoke-virtual {v3, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2625
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v2

    sget-object v3, Lcom/ebay/mobile/dcs/Dcs$App$S;->browseInterests:Lcom/ebay/mobile/dcs/Dcs$App$S;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v2

    .line 2626
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f0a09d5

    const v5, 0x7f0a09df

    const v6, 0x7f0a09db

    const v7, 0x7f0a09d3

    const v8, 0x7f0a09d2

    const/16 v9, 0xf

    const/16 v10, 0xe

    if-nez v2, :cond_3

    .line 2628
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const v11, 0x7f0a09d7

    invoke-virtual {v2, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2629
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz v0, :cond_1

    .line 2631
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v0, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_1
    const/16 v2, 0xf

    :goto_1
    if-eqz v1, :cond_2

    .line 2633
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2634
    :goto_2
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2635
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 2639
    :cond_3
    sget-object v2, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz v0, :cond_4

    .line 2641
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :cond_4
    const/16 v9, 0xe

    :goto_3
    if-eqz v1, :cond_5

    .line 2643
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    :cond_5
    move v1, v9

    .line 2644
    :goto_4
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2645
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2651
    :goto_5
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const v2, 0x7f0a09e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2652
    sget-object v0, Lcom/ebay/mobile/activities/CoreActivity$NavigationDrawerHierarchyListener;->navigationIds:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f0a09e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
