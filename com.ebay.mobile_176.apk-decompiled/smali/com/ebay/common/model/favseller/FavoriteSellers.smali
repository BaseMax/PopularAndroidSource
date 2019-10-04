.class public Lcom/ebay/common/model/favseller/FavoriteSellers;
.super Ljava/lang/Object;
.source "FavoriteSellers.java"


# instance fields
.field public favSellersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/favseller/FavoriteSeller;",
            ">;"
        }
    .end annotation
.end field

.field public timestamp:Ljava/util/Date;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
