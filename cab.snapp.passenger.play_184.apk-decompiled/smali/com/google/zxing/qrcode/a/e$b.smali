.class final Lcom/google/zxing/qrcode/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/qrcode/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput p1, p0, Lcom/google/zxing/qrcode/a/e$b;->a:F

    return-void
.end method

.method synthetic constructor <init>(FB)V
    .locals 0

    .line 658
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/a/e$b;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/zxing/qrcode/a/d;Lcom/google/zxing/qrcode/a/d;)I
    .locals 1

    .line 665
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/a/d;->getEstimatedModuleSize()F

    move-result p2

    iget v0, p0, Lcom/google/zxing/qrcode/a/e$b;->a:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 666
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/a/d;->getEstimatedModuleSize()F

    move-result p1

    iget v0, p0, Lcom/google/zxing/qrcode/a/e$b;->a:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 665
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 658
    check-cast p1, Lcom/google/zxing/qrcode/a/d;

    check-cast p2, Lcom/google/zxing/qrcode/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/a/e$b;->compare(Lcom/google/zxing/qrcode/a/d;Lcom/google/zxing/qrcode/a/d;)I

    move-result p1

    return p1
.end method
