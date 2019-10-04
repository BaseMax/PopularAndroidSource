.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final rate:F

.field public final rate1:I

.field public final rate1Count:I

.field public final rate2:I

.field public final rate2Count:I

.field public final rate3:I

.field public final rate3Count:I

.field public final rate4:I

.field public final rate4Count:I

.field public final rate5:I

.field public final rate5Count:I

.field public final reviewCount:Ljava/lang/String;

.field public final sumRate:I

.field public final viewType:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;F)V
    .locals 1

    const-string v0, "reviewCount"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1Count:I

    iput p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2Count:I

    iput p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3Count:I

    iput p4, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4Count:I

    iput p5, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5Count:I

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->reviewCount:Ljava/lang/String;

    iput p7, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate:F

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REVIEW_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->viewType:I

    .line 3
    iget p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5Count:I

    iget p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4Count:I

    add-int p3, p1, p2

    iget p4, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3Count:I

    add-int/2addr p3, p4

    iget p5, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2Count:I

    add-int/2addr p3, p5

    iget p6, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1Count:I

    add-int/2addr p3, p6

    iput p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->sumRate:I

    int-to-float p3, p6

    .line 4
    iget p6, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->sumRate:I

    int-to-float p7, p6

    div-float/2addr p3, p7

    const/16 p7, 0x64

    int-to-float p7, p7

    mul-float p3, p3, p7

    float-to-int p3, p3

    iput p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1:I

    int-to-float p3, p5

    int-to-float p5, p6

    div-float/2addr p3, p5

    mul-float p3, p3, p7

    float-to-int p3, p3

    .line 5
    iput p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2:I

    int-to-float p3, p4

    int-to-float p4, p6

    div-float/2addr p3, p4

    mul-float p3, p3, p7

    float-to-int p3, p3

    .line 6
    iput p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3:I

    int-to-float p2, p2

    int-to-float p3, p6

    div-float/2addr p2, p3

    mul-float p2, p2, p7

    float-to-int p2, p2

    .line 7
    iput p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4:I

    int-to-float p1, p1

    int-to-float p2, p6

    div-float/2addr p1, p2

    mul-float p1, p1, p7

    float-to-int p1, p1

    .line 8
    iput p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5:I

    return-void
.end method

.method private final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1Count:I

    return v0
.end method

.method private final component2()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2Count:I

    return v0
.end method

.method private final component3()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3Count:I

    return v0
.end method

.method private final component4()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4Count:I

    return v0
.end method

.method private final component5()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5Count:I

    return v0
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;IIIIILjava/lang/String;FILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1Count:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2Count:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3Count:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4Count:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5Count:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->reviewCount:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate:F

    :cond_6
    move v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->copy(IIIIILjava/lang/String;F)Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->reviewCount:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()F
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate:F

    return v0
.end method

.method public final copy(IIIIILjava/lang/String;F)Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;
    .locals 9

    const-string v0, "reviewCount"

    move-object v7, p6

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;-><init>(IIIIILjava/lang/String;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1Count:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1Count:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2Count:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2Count:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3Count:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3Count:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4Count:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4Count:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5Count:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5Count:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->reviewCount:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->reviewCount:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate:F

    iget p1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public final getRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate:F

    return v0
.end method

.method public final getRate1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1:I

    return v0
.end method

.method public final getRate2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2:I

    return v0
.end method

.method public final getRate3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3:I

    return v0
.end method

.method public final getRate4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4:I

    return v0
.end method

.method public final getRate5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5:I

    return v0
.end method

.method public final getReviewCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->reviewCount:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1Count:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5Count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->reviewCount:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppReviewInfoItem(rate1Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate1Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate2Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate2Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate3Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate3Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate4Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate4Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate5Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate5Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reviewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->reviewCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;->rate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
