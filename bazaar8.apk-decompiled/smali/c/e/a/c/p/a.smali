.class public Lc/e/a/c/p/a;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# static fields
.field public static final a:Z

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lc/e/a/c/p/a;->a:Z

    .line 2
    new-array v0, v1, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    sput-object v0, Lc/e/a/c/p/a;->b:[I

    const/4 v0, 0x2

    .line 3
    new-array v3, v0, [I

    fill-array-data v3, :array_0

    sput-object v3, Lc/e/a/c/p/a;->c:[I

    .line 4
    new-array v3, v1, [I

    const v4, 0x101009c

    aput v4, v3, v2

    sput-object v3, Lc/e/a/c/p/a;->d:[I

    .line 5
    new-array v3, v1, [I

    const v4, 0x1010367

    aput v4, v3, v2

    sput-object v3, Lc/e/a/c/p/a;->e:[I

    .line 6
    new-array v3, v0, [I

    fill-array-data v3, :array_1

    sput-object v3, Lc/e/a/c/p/a;->f:[I

    const/4 v3, 0x3

    .line 7
    new-array v3, v3, [I

    fill-array-data v3, :array_2

    sput-object v3, Lc/e/a/c/p/a;->g:[I

    .line 8
    new-array v3, v0, [I

    fill-array-data v3, :array_3

    sput-object v3, Lc/e/a/c/p/a;->h:[I

    .line 9
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lc/e/a/c/p/a;->i:[I

    .line 10
    new-array v0, v1, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Lc/e/a/c/p/a;->j:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    :array_3
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    :array_4
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data
.end method

.method public static a(I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 32
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 33
    invoke-static {p0, v0}, Lb/i/c/a;->c(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/res/ColorStateList;[I)I
    .locals 1

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    sget-boolean p1, Lc/e/a/c/p/a;->a:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lc/e/a/c/p/a;->a(I)I

    move-result p0

    :cond_1
    return p0
.end method

.method public static a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6

    .line 1
    sget-boolean v0, Lc/e/a/c/p/a;->a:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-array v0, v1, [[I

    .line 3
    new-array v1, v1, [I

    .line 4
    sget-object v4, Lc/e/a/c/p/a;->j:[I

    aput-object v4, v0, v3

    .line 5
    sget-object v4, Lc/e/a/c/p/a;->f:[I

    invoke-static {p0, v4}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v1, v3

    .line 6
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v0, v2

    .line 7
    sget-object v3, Lc/e/a/c/p/a;->b:[I

    invoke-static {p0, v3}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v1, v2

    .line 8
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :cond_0
    const/16 v0, 0xa

    .line 9
    new-array v4, v0, [[I

    .line 10
    new-array v0, v0, [I

    .line 11
    sget-object v5, Lc/e/a/c/p/a;->f:[I

    aput-object v5, v4, v3

    .line 12
    invoke-static {p0, v5}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v0, v3

    .line 13
    sget-object v5, Lc/e/a/c/p/a;->g:[I

    aput-object v5, v4, v2

    .line 14
    invoke-static {p0, v5}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v0, v2

    .line 15
    sget-object v2, Lc/e/a/c/p/a;->h:[I

    aput-object v2, v4, v1

    .line 16
    invoke-static {p0, v2}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 17
    sget-object v2, Lc/e/a/c/p/a;->i:[I

    aput-object v2, v4, v1

    .line 18
    invoke-static {p0, v2}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 19
    sget-object v2, Lc/e/a/c/p/a;->j:[I

    aput-object v2, v4, v1

    aput v3, v0, v1

    const/4 v1, 0x5

    .line 20
    sget-object v2, Lc/e/a/c/p/a;->b:[I

    aput-object v2, v4, v1

    .line 21
    invoke-static {p0, v2}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 22
    sget-object v2, Lc/e/a/c/p/a;->c:[I

    aput-object v2, v4, v1

    .line 23
    invoke-static {p0, v2}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 24
    sget-object v2, Lc/e/a/c/p/a;->d:[I

    aput-object v2, v4, v1

    .line 25
    invoke-static {p0, v2}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 26
    sget-object v2, Lc/e/a/c/p/a;->e:[I

    aput-object v2, v4, v1

    .line 27
    invoke-static {p0, v2}, Lc/e/a/c/p/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v0, v1

    const/16 p0, 0x9

    .line 28
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    aput-object v1, v4, p0

    aput v3, v0, p0

    .line 29
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method
