.class public final Lcom/ebay/common/model/search/SellerOffer;
.super Ljava/lang/Object;
.source "SellerOffer.java"


# instance fields
.field public final legalText:Ljava/lang/String;

.field public final subTitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/common/model/search/SellerOffer;->title:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/ebay/common/model/search/SellerOffer;->subTitle:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/ebay/common/model/search/SellerOffer;->legalText:Ljava/lang/String;

    return-void
.end method
