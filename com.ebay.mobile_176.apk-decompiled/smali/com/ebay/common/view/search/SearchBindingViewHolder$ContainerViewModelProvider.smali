.class public interface abstract Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;
.super Ljava/lang/Object;
.source "SearchBindingViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/search/SearchBindingViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContainerViewModelProvider"
.end annotation


# virtual methods
.method public abstract getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getContainerViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setContainerViewModel(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
.end method
