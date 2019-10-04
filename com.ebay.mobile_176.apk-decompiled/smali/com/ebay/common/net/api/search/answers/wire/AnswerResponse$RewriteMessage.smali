.class public final Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewriteMessage"
.end annotation


# instance fields
.field public id:J

.field public parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$NameAndValue;",
            ">;"
        }
    .end annotation
.end field

.field public userMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
