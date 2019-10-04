.class public Lir/cafebazaar/inline/ui/Theme;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Lf/a/a/d/a;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ui/Theme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/e/w;

    invoke-direct {v0}, Lf/a/a/e/w;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ui/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/high16 v0, -0x1000000

    const v1, -0x111112

    const v2, -0xbdbdbe

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lir/cafebazaar/inline/ui/Theme;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lir/cafebazaar/inline/ui/Theme;->a:I

    .line 4
    iput p2, p0, Lir/cafebazaar/inline/ui/Theme;->b:I

    .line 5
    iput p3, p0, Lir/cafebazaar/inline/ui/Theme;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lir/cafebazaar/inline/ui/Theme;->a:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lir/cafebazaar/inline/ui/Theme;->b:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lir/cafebazaar/inline/ui/Theme;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, Lir/cafebazaar/inline/ui/Theme;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lir/cafebazaar/inline/ui/Theme;->b:I

    return-void
.end method

.method public b()I
    .locals 5

    .line 2
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v0

    invoke-static {v0}, Lb/i/c/a;->a(I)D

    move-result-wide v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lir/cafebazaar/inline/ui/Theme;->a:I

    return-void
.end method

.method public c()I
    .locals 5

    .line 2
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v0

    invoke-static {v0}, Lb/i/c/a;->a(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const v0, -0x50506

    return v0

    :cond_0
    const v0, -0xd9cdc8

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lir/cafebazaar/inline/ui/Theme;->c:I

    return-void
.end method

.method public d()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v0

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x18

    const/16 v3, 0xff

    .line 5
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x18

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x18

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v0

    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v0

    invoke-static {v0}, Lb/i/c/a;->a(I)D

    move-result-wide v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/Theme;->a:I

    return v0
.end method

.method public i()I
    .locals 6

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [F

    .line 2
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 3
    aget v2, v0, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ui/Theme;->c:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lir/cafebazaar/inline/ui/Theme;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lir/cafebazaar/inline/ui/Theme;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lir/cafebazaar/inline/ui/Theme;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
