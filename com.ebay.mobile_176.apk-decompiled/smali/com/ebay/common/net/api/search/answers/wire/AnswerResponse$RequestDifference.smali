.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestDifference"
.end annotation


# instance fields
.field public categoryId:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Differences;

.field public keyword:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Difference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
