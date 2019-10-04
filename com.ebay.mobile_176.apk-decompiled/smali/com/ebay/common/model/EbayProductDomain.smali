.class public Lcom/ebay/common/model/EbayProductDomain;
.super Ljava/lang/Object;
.source "EbayProductDomain.java"


# instance fields
.field public count:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ebay/common/model/EbayProductDomain;->name:Ljava/lang/String;

    return-object v0
.end method
