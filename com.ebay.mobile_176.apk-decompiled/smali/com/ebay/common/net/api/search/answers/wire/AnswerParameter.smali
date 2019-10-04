.class public Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;
.super Ljava/lang/Object;
.source "AnswerParameter.java"


# instance fields
.field public final answerProviderName:Ljava/lang/String;

.field public final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;->answerProviderName:Ljava/lang/String;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;->parameters:Ljava/util/Map;

    return-void
.end method
