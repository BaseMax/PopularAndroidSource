.class public abstract Lcom/raizlabs/android/dbflow/structure/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindBlobOrNull(I[B)V
    .locals 0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindBlob(I[B)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindNull(I)V

    return-void
.end method

.method public bindDoubleOrNull(ILjava/lang/Double;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindDouble(ID)V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindNull(I)V

    return-void
.end method

.method public bindFloatOrNull(ILjava/lang/Float;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindDouble(ID)V

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindNull(I)V

    return-void
.end method

.method public bindNumber(ILjava/lang/Number;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindNumberOrNull(ILjava/lang/Number;)V

    return-void
.end method

.method public bindNumberOrNull(ILjava/lang/Number;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindLong(IJ)V

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindNull(I)V

    return-void
.end method

.method public bindStringOrNull(ILjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindString(ILjava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/d;->bindNull(I)V

    return-void
.end method
