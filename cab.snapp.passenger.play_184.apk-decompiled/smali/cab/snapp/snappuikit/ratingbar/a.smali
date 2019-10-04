.class final Lcab/snapp/snappuikit/ratingbar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/text/DecimalFormat;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(FIF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    int-to-float p1, p1

    cmpl-float v1, p0, p1

    if-lez v1, :cond_1

    move p0, p1

    :cond_1
    rem-float p1, p0, p2

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    move p0, p2

    :cond_2
    return p0
.end method

.method static a(Lcab/snapp/snappuikit/ratingbar/PartialView;FF)F
    .locals 3

    .line 27
    invoke-static {}, Lcab/snapp/snappuikit/ratingbar/a;->a()Ljava/text/DecimalFormat;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    div-float/2addr p2, p1

    .line 29
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 30
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private static a()Ljava/text/DecimalFormat;
    .locals 3

    .line 49
    sget-object v0, Lcab/snapp/snappuikit/ratingbar/a;->a:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v1, 0x2e

    .line 51
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 52
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v1, Lcab/snapp/snappuikit/ratingbar/a;->a:Ljava/text/DecimalFormat;

    .line 54
    :cond_0
    sget-object v0, Lcab/snapp/snappuikit/ratingbar/a;->a:Ljava/text/DecimalFormat;

    return-object v0
.end method
