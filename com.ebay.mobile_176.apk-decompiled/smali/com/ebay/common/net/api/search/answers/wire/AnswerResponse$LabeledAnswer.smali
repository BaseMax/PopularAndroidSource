.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LabeledAnswer"
.end annotation


# instance fields
.field public id:J

.field public impression:Ljava/lang/String;

.field public item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;",
            ">;"
        }
    .end annotation
.end field

.field public seeAllLabel:Ljava/lang/String;

.field public seeAllNavAction:Lcom/ebay/nautilus/domain/data/answers/NavAction;

.field public slot:I

.field public title:Ljava/lang/String;

.field public trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
