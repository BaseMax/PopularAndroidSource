.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LandingPageAction"
.end annotation


# instance fields
.field public clickTracking:Ljava/lang/String;

.field public deeplink:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public overlay:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;

.field public queryAction:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;

.field public trackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
