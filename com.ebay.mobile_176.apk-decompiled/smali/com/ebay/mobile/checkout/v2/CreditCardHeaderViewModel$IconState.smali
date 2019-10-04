.class public Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;
.super Ljava/lang/Object;
.source "CreditCardHeaderViewModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconState"
.end annotation


# instance fields
.field public accessibilityText:Ljava/lang/String;

.field public final isActive:Landroidx/databinding/ObservableBoolean;

.field public isSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    return-void
.end method
