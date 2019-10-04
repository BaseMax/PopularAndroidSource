.class Lcom/ebay/mobile/camera/RotationCalculator;
.super Ljava/lang/Object;
.source "RotationCalculator.java"


# instance fields
.field private oldAngle:I

.field private spinCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/ebay/mobile/camera/RotationCalculator;->oldAngle:I

    .line 15
    iput v0, p0, Lcom/ebay/mobile/camera/RotationCalculator;->spinCount:I

    return-void
.end method


# virtual methods
.method public rotate(I)I
    .locals 2

    mul-int/lit8 p1, p1, -0x1

    .line 26
    iget v0, p0, Lcom/ebay/mobile/camera/RotationCalculator;->oldAngle:I

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, -0x3c4c0000    # -360.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 28
    iget v0, p0, Lcom/ebay/mobile/camera/RotationCalculator;->spinCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ebay/mobile/camera/RotationCalculator;->spinCount:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 30
    iget v0, p0, Lcom/ebay/mobile/camera/RotationCalculator;->spinCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ebay/mobile/camera/RotationCalculator;->spinCount:I

    .line 32
    :cond_1
    :goto_0
    iput p1, p0, Lcom/ebay/mobile/camera/RotationCalculator;->oldAngle:I

    .line 34
    iget v0, p0, Lcom/ebay/mobile/camera/RotationCalculator;->spinCount:I

    mul-int/lit16 v0, v0, 0x168

    add-int/2addr v0, p1

    return v0
.end method
