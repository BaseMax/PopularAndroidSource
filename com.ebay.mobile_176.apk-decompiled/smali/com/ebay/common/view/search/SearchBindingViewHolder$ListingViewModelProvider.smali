.class public interface abstract Lcom/ebay/common/view/search/SearchBindingViewHolder$ListingViewModelProvider;
.super Ljava/lang/Object;
.source "SearchBindingViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/search/SearchBindingViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListingViewModelProvider"
.end annotation


# virtual methods
.method public abstract getListingViewModel()Lcom/ebay/mobile/search/answers/v1/ListingViewModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setListingViewModel(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/mobile/search/refine/SearchConfiguration;)V
.end method
