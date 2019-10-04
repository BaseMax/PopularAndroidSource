.class Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;
.super Ljava/lang/Object;
.source "PlBasicAdRateEditViewModel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    iget-object v1, v1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->userRate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    iget-object v0, v0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorViewVisibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    iget-object v0, v0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorViewVisibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    iget-object v0, v0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->setUserRate(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
