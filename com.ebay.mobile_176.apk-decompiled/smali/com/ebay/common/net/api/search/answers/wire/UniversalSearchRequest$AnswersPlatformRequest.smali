.class public final Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;
.super Ljava/lang/Object;
.source "UniversalSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnswersPlatformRequest"
.end annotation


# instance fields
.field public answerParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/AnswerParameter;",
            ">;"
        }
    .end annotation
.end field

.field public appName:Ljava/lang/String;

.field public requestedPageLayoutsForMultiLayoutRegion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;",
            ">;"
        }
    .end annotation
.end field

.field public supportedNavDestinationTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/answers/NavDestinationType;",
            ">;"
        }
    .end annotation
.end field

.field public supportedUXComponentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
