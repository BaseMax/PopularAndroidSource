.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LandingPageAnswer"
.end annotation


# instance fields
.field public action:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;",
            ">;"
        }
    .end annotation
.end field

.field public id:J

.field public impressionTracking:Ljava/lang/String;

.field public trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
