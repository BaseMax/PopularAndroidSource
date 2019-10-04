.class public Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;
.super Ljava/util/GregorianCalendar;
.source "PersianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;
    }
.end annotation


# static fields
.field public static a:[I = null

.field public static b:[I = null

.field public static final serialVersionUID:J = 0x4ce71659993092feL


# instance fields
.field public delimiter:Ljava/lang/String;

.field public persianDay:I

.field public persianMonth:I

.field public persianYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a:[I

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x1f
        0x1f
        0x1f
        0x1f
        0x1f
        0x1f
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const-string v0, "/"

    .line 5
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    const-string v0, "/"

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->delimiter:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static a(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;
    .locals 7

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b()I

    move-result v0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b()I

    move-result v0

    const/16 v2, -0xb

    if-lt v0, v2, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v0

    add-int/lit16 v0, v0, -0x640

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b(I)V

    .line 9
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->a()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->a(I)V

    .line 10
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x16d

    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v0, v3

    .line 11
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x63

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v0, v3

    .line 12
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v3

    add-int/lit16 v3, v3, 0x18f

    int-to-float v3, v3

    const/high16 v4, 0x43c80000    # 400.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v0, v3

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 14
    sget-object v5, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b()I

    move-result v0

    if-le v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v0

    rem-int/lit16 v0, v0, 0x190

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->a()I

    move-result p0

    add-int/2addr v4, p0

    add-int/lit8 v4, v4, -0x4f

    int-to-float p0, v4

    const v0, 0x463c5400    # 12053.0f

    div-float/2addr p0, v0

    float-to-double v5, p0

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int p0, v5

    .line 19
    rem-int/lit16 v4, v4, 0x2f15

    mul-int/lit8 p0, p0, 0x21

    add-int/lit16 p0, p0, 0x3d3

    .line 20
    div-int/lit16 v0, v4, 0x5b5

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr p0, v0

    .line 21
    rem-int/lit16 v4, v4, 0x5b5

    const/16 v0, 0x16e

    if-lt v4, v0, :cond_4

    add-int/lit8 v4, v4, -0x1

    int-to-float v0, v4

    const v5, 0x43b68000    # 365.0f

    div-float/2addr v0, v5

    float-to-double v5, v0

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    add-int/2addr p0, v0

    .line 23
    rem-int/lit16 v4, v4, 0x16d

    :cond_4
    :goto_1
    if-ge v3, v1, :cond_5

    .line 24
    sget-object v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->b:[I

    aget v5, v0, v3

    if-lt v4, v5, :cond_5

    .line 25
    aget v0, v0, v3

    sub-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v4, v2

    .line 26
    new-instance v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;

    invoke-direct {v0, p0, v3, v4}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;-><init>(III)V

    return-object v0

    .line 27
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static b(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b()I

    move-result v0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b()I

    move-result v0

    const/16 v1, -0xb

    if-lt v0, v1, :cond_7

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v0

    add-int/lit16 v0, v0, -0x3d3

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b(I)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->a(I)V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v0

    const/16 v2, 0x16d

    mul-int/lit16 v0, v0, 0x16d

    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x21

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42040000    # 33.0f

    rem-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v0, v3

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 7
    sget-object v5, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->b:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->a()I

    move-result p0

    add-int/2addr v4, p0

    add-int/lit8 v4, v4, 0x4f

    int-to-float p0, v4

    const v0, 0x480eac40    # 146097.0f

    div-float/2addr p0, v0

    float-to-double v5, p0

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int p0, v5

    mul-int/lit16 p0, p0, 0x190

    add-int/lit16 p0, p0, 0x640

    const v0, 0x23ab1

    .line 10
    rem-int/2addr v4, v0

    const v0, 0x8ead

    if-lt v4, v0, :cond_2

    add-int/lit8 v4, v4, -0x1

    int-to-float v0, v4

    const v5, 0x470eac00    # 36524.0f

    div-float/2addr v0, v5

    float-to-double v5, v0

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p0, v0

    const v0, 0x8eac

    .line 12
    rem-int/2addr v4, v0

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    int-to-float v5, v4

    const v6, 0x44b6a000    # 1461.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr p0, v5

    .line 14
    rem-int/lit16 v4, v4, 0x5b5

    const/16 v5, 0x16e

    if-lt v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    int-to-float v0, v4

    const v5, 0x43b68000    # 365.0f

    div-float/2addr v0, v5

    float-to-double v5, v0

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    add-int/2addr p0, v0

    .line 16
    rem-int/2addr v4, v2

    const/4 v0, 0x0

    :cond_3
    const/4 v2, 0x0

    .line 17
    :goto_3
    sget-object v5, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a:[I

    aget v5, v5, v2

    if-ne v2, v1, :cond_4

    if-ne v0, v1, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    add-int/2addr v5, v6

    if-lt v4, v5, :cond_6

    .line 18
    sget-object v5, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a:[I

    aget v5, v5, v2

    if-ne v2, v1, :cond_5

    if-ne v0, v1, :cond_5

    move v6, v2

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    add-int/2addr v4, v1

    .line 19
    new-instance v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;

    invoke-direct {v0, p0, v2, v4}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;-><init>(III)V

    return-object v0

    .line 20
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(III)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianYear:I

    .line 2
    iput p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianMonth:I

    .line 3
    iput p3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianDay:I

    .line 4
    new-instance p2, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;

    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianMonth:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p2, p1, v0, p3}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;-><init>(III)V

    invoke-static {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->b(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->a(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)I

    move-result p2

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)I

    move-result p3

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Ljava/util/GregorianCalendar;->set(III)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 4

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 4
    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;-><init>(III)V

    .line 5
    invoke-static {v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->a(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)I

    move-result v1

    iput v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianYear:I

    .line 7
    invoke-static {v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->b(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)I

    move-result v1

    iput v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianMonth:I

    .line 8
    invoke-static {v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;->c(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar$a;)I

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianDay:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianDay:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianMonth:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/util/GregorianCalendar;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianYear:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->h()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianDay:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->persianYear:I

    return v0
.end method

.method public set(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->f()V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->f()V

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->f()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/util/GregorianCalendar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",PersianDate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
