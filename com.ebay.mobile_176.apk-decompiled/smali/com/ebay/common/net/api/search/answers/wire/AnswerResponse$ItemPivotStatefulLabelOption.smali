.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotStatefulLabelOption;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemPivotStatefulLabelOption"
.end annotation


# instance fields
.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$StatefulLabel;",
            ">;"
        }
    .end annotation
.end field

.field public optionName:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
