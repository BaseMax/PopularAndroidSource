.class public final Lcom/google/android/material/i/d$d;
.super Lcom/google/android/material/i/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public controlX:F

.field public controlY:F

.field public endX:F

.field public endY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/google/android/material/i/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/google/android/material/i/d$d;->c:Landroid/graphics/Matrix;

    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 161
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 162
    iget v0, p0, Lcom/google/android/material/i/d$d;->controlX:F

    iget v1, p0, Lcom/google/android/material/i/d$d;->controlY:F

    iget v2, p0, Lcom/google/android/material/i/d$d;->endX:F

    iget v3, p0, Lcom/google/android/material/i/d$d;->endY:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 163
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
