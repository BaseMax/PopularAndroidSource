.class public final Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;
.super Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager$SimpleObserver;
.source "CoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShoppingCartCountChangeObserver"
.end annotation


# instance fields
.field private final menuItemReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ebay/mobile/activities/CoreActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/MenuItem;)V
    .locals 0

    .line 2690
    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager$SimpleObserver;-><init>()V

    .line 2691
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;->menuItemReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private updateShoppingCartBadge()V
    .locals 4

    .line 2704
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;->menuItemReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 2705
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2708
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;->getBuyableItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2711
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a003b

    .line 2712
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 2715
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ebay/mobile/util/Util;->countAsString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 2716
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2717
    iget-object v2, p0, Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-static {v2, v0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->access$200(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onShoppingCartSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager$Action;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;",
            "Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager$Action;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/shopcart/ShoppingCartSession;",
            ">;)V"
        }
    .end annotation

    .line 2699
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity$ShoppingCartCountChangeObserver;->updateShoppingCartBadge()V

    return-void
.end method
