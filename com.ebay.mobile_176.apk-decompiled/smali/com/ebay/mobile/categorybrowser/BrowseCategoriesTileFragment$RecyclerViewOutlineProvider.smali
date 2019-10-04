.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "BrowseCategoriesTileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RecyclerViewOutlineProvider"
.end annotation


# instance fields
.field private outline:Landroid/graphics/Outline;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    .line 620
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;->outline:Landroid/graphics/Outline;

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;->outline:Landroid/graphics/Outline;

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->set(Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public setOutline(Landroid/graphics/Outline;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment$RecyclerViewOutlineProvider;->outline:Landroid/graphics/Outline;

    return-void
.end method
