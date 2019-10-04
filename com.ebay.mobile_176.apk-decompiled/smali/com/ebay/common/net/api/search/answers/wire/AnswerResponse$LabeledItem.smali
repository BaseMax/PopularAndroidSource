.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LabeledItem"
.end annotation


# instance fields
.field public id:J

.field public item:Lcom/ebay/nautilus/domain/data/search/SearchItem;

.field public itemPivot:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;

.field public label:Ljava/lang/String;

.field public themesTracking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ThemesTracking;",
            ">;"
        }
    .end annotation
.end field

.field public tracking:Ljava/lang/String;

.field public trackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field

.field public typeLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
