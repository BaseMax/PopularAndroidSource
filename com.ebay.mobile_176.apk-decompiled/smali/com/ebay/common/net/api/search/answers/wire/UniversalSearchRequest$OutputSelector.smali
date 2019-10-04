.class public final Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$OutputSelector;
.super Ljava/lang/Object;
.source "UniversalSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputSelector"
.end annotation


# instance fields
.field public browseAnswerTemplate:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$BrowseAnswerTemplate;

.field public labeledAnswerTemplate:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$LabeledAnswerTemplate;

.field public landingPageTemplate:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$LandingPageTemplate;

.field public queryAnswerTemplate:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$QueryAnswerTemplate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
