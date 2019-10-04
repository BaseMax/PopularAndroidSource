.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# instance fields
.field public final inlineDemo:Lcom/farsitel/bazaar/common/model/appdetail/InlineDemo;

.field public final kashanID:Ljava/lang/String;

.field public final minInlinePlatformVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/farsitel/bazaar/common/model/appdetail/InlineDemo;)V
    .locals 1

    const-string v0, "kashanID"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->kashanID:Ljava/lang/String;

    iput p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->minInlinePlatformVersion:I

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->inlineDemo:Lcom/farsitel/bazaar/common/model/appdetail/InlineDemo;

    return-void
.end method


# virtual methods
.method public final getInlineDemo()Lcom/farsitel/bazaar/common/model/appdetail/InlineDemo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->inlineDemo:Lcom/farsitel/bazaar/common/model/appdetail/InlineDemo;

    return-object v0
.end method

.method public final getKashanID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->kashanID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinInlinePlatformVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->minInlinePlatformVersion:I

    return v0
.end method
