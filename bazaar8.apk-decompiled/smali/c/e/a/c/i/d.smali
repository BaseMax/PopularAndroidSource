.class public Lc/e/a/c/i/d;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/c/i/d$a;
    }
.end annotation


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    sput v0, Lc/e/a/c/i/d;->a:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    sput v0, Lc/e/a/c/i/d;->a:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    sput v0, Lc/e/a/c/i/d;->a:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(I)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(Lc/e/a/c/i/f$d;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public d()I
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public e()Lc/e/a/c/i/f$d;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public f()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method
