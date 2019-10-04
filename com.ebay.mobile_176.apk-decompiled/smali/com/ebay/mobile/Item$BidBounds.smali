.class public Lcom/ebay/mobile/Item$BidBounds;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BidBounds"
.end annotation


# instance fields
.field public allowLowerBound:Z

.field public lowerBound:Lcom/ebay/nautilus/domain/data/CurrencyAmount;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1860
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string v1, "USD"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(DLjava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/Item$BidBounds;-><init>(Lcom/ebay/nautilus/domain/data/CurrencyAmount;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/CurrencyAmount;Z)V
    .locals 0

    .line 1864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1865
    iput-object p1, p0, Lcom/ebay/mobile/Item$BidBounds;->lowerBound:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    .line 1866
    iput-boolean p2, p0, Lcom/ebay/mobile/Item$BidBounds;->allowLowerBound:Z

    return-void
.end method
