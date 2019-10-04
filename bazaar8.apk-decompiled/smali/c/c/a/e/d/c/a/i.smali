.class public final Lc/c/a/e/d/c/a/i;
.super Ljava/lang/Object;
.source "AppDetailResponseDto.kt"


# instance fields
.field public final installCountRange:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "installCountRange"
    .end annotation
.end field

.field public final rate:F
    .annotation runtime Lc/e/d/a/c;
        value = "rate"
    .end annotation
.end field

.field public final rate1Count:I
    .annotation runtime Lc/e/d/a/c;
        value = "rate1Count"
    .end annotation
.end field

.field public final rate2Count:I
    .annotation runtime Lc/e/d/a/c;
        value = "rate2Count"
    .end annotation
.end field

.field public final rate3Count:I
    .annotation runtime Lc/e/d/a/c;
        value = "rate3Count"
    .end annotation
.end field

.field public final rate4Count:I
    .annotation runtime Lc/e/d/a/c;
        value = "rate4Count"
    .end annotation
.end field

.field public final rate5Count:I
    .annotation runtime Lc/e/d/a/c;
        value = "rate5Count"
    .end annotation
.end field

.field public final reviewCount:I
    .annotation runtime Lc/e/d/a/c;
        value = "reviewCount"
    .end annotation
.end field

.field public final verboseInstallCountRange:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "verboseInstallCountRange"
    .end annotation
.end field

.field public final verboseInstallCountRangeDescription:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "verboseInstallCountRangeDescription"
    .end annotation
.end field

.field public final verboseInstallCountRangeLabel:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "verboseInstallCountRangeLabel"
    .end annotation
.end field

.field public final verboseReviewCount:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "verboseReviewCount"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;
    .locals 14

    .line 1
    new-instance v13, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    .line 2
    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate:F

    .line 3
    iget v2, p0, Lc/c/a/e/d/c/a/i;->rate1Count:I

    .line 4
    iget v3, p0, Lc/c/a/e/d/c/a/i;->rate2Count:I

    .line 5
    iget v4, p0, Lc/c/a/e/d/c/a/i;->rate3Count:I

    .line 6
    iget v5, p0, Lc/c/a/e/d/c/a/i;->rate4Count:I

    .line 7
    iget v6, p0, Lc/c/a/e/d/c/a/i;->rate5Count:I

    .line 8
    iget-object v7, p0, Lc/c/a/e/d/c/a/i;->installCountRange:Ljava/lang/String;

    .line 9
    iget-object v8, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRange:Ljava/lang/String;

    .line 10
    iget-object v9, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeLabel:Ljava/lang/String;

    .line 11
    iget-object v10, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeDescription:Ljava/lang/String;

    .line 12
    iget v11, p0, Lc/c/a/e/d/c/a/i;->reviewCount:I

    .line 13
    iget-object v12, p0, Lc/c/a/e/d/c/a/i;->verboseReviewCount:Ljava/lang/String;

    move-object v0, v13

    .line 14
    invoke-direct/range {v0 .. v12}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;-><init>(FIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_7

    instance-of v1, p1, Lc/c/a/e/d/c/a/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Lc/c/a/e/d/c/a/i;

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate:F

    iget v3, p1, Lc/c/a/e/d/c/a/i;->rate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate1Count:I

    iget v3, p1, Lc/c/a/e/d/c/a/i;->rate1Count:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate2Count:I

    iget v3, p1, Lc/c/a/e/d/c/a/i;->rate2Count:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate3Count:I

    iget v3, p1, Lc/c/a/e/d/c/a/i;->rate3Count:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate4Count:I

    iget v3, p1, Lc/c/a/e/d/c/a/i;->rate4Count:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate5Count:I

    iget v3, p1, Lc/c/a/e/d/c/a/i;->rate5Count:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->installCountRange:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/i;->installCountRange:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRange:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/i;->verboseInstallCountRange:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeLabel:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeDescription:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/c/a/i;->reviewCount:I

    iget v3, p1, Lc/c/a/e/d/c/a/i;->reviewCount:I

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseReviewCount:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/c/a/i;->verboseReviewCount:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    return v2

    :cond_7
    :goto_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lc/c/a/e/d/c/a/i;->rate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate1Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate2Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate3Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate4Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate5Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->installCountRange:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRange:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeLabel:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeDescription:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/c/a/i;->reviewCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseReviewCount:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDetailsStatsDto(rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rate1Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate1Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate2Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate2Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate3Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate3Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate4Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate4Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate5Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/i;->rate5Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", installCountRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->installCountRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseInstallCountRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseInstallCountRangeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseInstallCountRangeDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseInstallCountRangeDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reviewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/i;->reviewCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verboseReviewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/i;->verboseReviewCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
