.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# instance fields
.field public final installCountRange:Ljava/lang/String;

.field public final rate:F

.field public final rate1Count:I

.field public final rate2Count:I

.field public final rate3Count:I

.field public final rate4Count:I

.field public final rate5Count:I

.field public final reviewCount:I

.field public final verboseInstallCountRange:Ljava/lang/String;

.field public final verboseInstallCountRangeDescription:Ljava/lang/String;

.field public final verboseInstallCountRangeLabel:Ljava/lang/String;

.field public final verboseReviewCount:Ljava/lang/String;


# direct methods
.method public constructor <init>(FIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "installCountRange"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verboseInstallCountRange"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verboseInstallCountRangeDescription"

    invoke-static {p10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verboseReviewCount"

    invoke-static {p12, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate:F

    iput p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate1Count:I

    iput p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate2Count:I

    iput p4, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate3Count:I

    iput p5, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate4Count:I

    iput p6, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate5Count:I

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->installCountRange:Ljava/lang/String;

    iput-object p8, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->verboseInstallCountRange:Ljava/lang/String;

    iput-object p9, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->verboseInstallCountRangeLabel:Ljava/lang/String;

    iput-object p10, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->verboseInstallCountRangeDescription:Ljava/lang/String;

    iput p11, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->reviewCount:I

    iput-object p12, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->verboseReviewCount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getInstallCountRange()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->installCountRange:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate:F

    return v0
.end method

.method public final getRate1Count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate1Count:I

    return v0
.end method

.method public final getRate2Count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate2Count:I

    return v0
.end method

.method public final getRate3Count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate3Count:I

    return v0
.end method

.method public final getRate4Count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate4Count:I

    return v0
.end method

.method public final getRate5Count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->rate5Count:I

    return v0
.end method

.method public final getReviewCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->reviewCount:I

    return v0
.end method

.method public final getVerboseInstallCountRange()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->verboseInstallCountRange:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerboseInstallCountRangeDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->verboseInstallCountRangeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerboseInstallCountRangeLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->verboseInstallCountRangeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerboseReviewCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->verboseReviewCount:Ljava/lang/String;

    return-object v0
.end method
