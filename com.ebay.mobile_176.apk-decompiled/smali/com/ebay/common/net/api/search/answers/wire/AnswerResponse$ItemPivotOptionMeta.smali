.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemPivotOptionMeta"
.end annotation


# instance fields
.field public optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

.field public optionType:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
