.class public final Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse$FitmentData;
.super Ljava/lang/Object;
.source "FitmentResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/wiremodel/FitmentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FitmentData"
.end annotation


# instance fields
.field public additionalProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field public fitmentProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
