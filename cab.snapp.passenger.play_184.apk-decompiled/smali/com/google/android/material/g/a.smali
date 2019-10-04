.class public final Lcom/google/android/material/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final USE_FRAMEWORK_RIPPLE:Z

.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
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
    sput-boolean v0, Lcom/google/android/material/g/a;->USE_FRAMEWORK_RIPPLE:Z

    new-array v0, v1, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    .line 38
    sput-object v0, Lcom/google/android/material/g/a;->a:[I

    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 41
    fill-array-data v3, :array_0

    sput-object v3, Lcom/google/android/material/g/a;->b:[I

    new-array v3, v1, [I

    const v4, 0x101009c

    aput v4, v3, v2

    .line 44
    sput-object v3, Lcom/google/android/material/g/a;->c:[I

    new-array v3, v1, [I

    const v4, 0x1010367

    aput v4, v3, v2

    .line 47
    sput-object v3, Lcom/google/android/material/g/a;->d:[I

    new-array v3, v0, [I

    .line 51
    fill-array-data v3, :array_1

    sput-object v3, Lcom/google/android/material/g/a;->e:[I

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 54
    fill-array-data v3, :array_2

    sput-object v3, Lcom/google/android/material/g/a;->f:[I

    new-array v3, v0, [I

    .line 57
    fill-array-data v3, :array_3

    sput-object v3, Lcom/google/android/material/g/a;->g:[I

    new-array v0, v0, [I

    .line 60
    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/material/g/a;->h:[I

    new-array v0, v1, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    .line 63
    sput-object v0, Lcom/google/android/material/g/a;->i:[I

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

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 2

    .line 189
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/res/ColorStateList;[I)I
    .locals 1

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 179
    :goto_0
    sget-boolean p1, Lcom/google/android/material/g/a;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/google/android/material/g/a;->a(I)I

    move-result p0

    :cond_1
    return p0
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6

    .line 95
    sget-boolean v0, Lcom/google/android/material/g/a;->USE_FRAMEWORK_RIPPLE:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [[I

    new-array v1, v1, [I

    .line 108
    sget-object v4, Lcom/google/android/material/g/a;->i:[I

    aput-object v4, v0, v3

    .line 109
    sget-object v4, Lcom/google/android/material/g/a;->e:[I

    invoke-static {p0, v4}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v1, v3

    .line 113
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v0, v2

    .line 114
    sget-object v3, Lcom/google/android/material/g/a;->a:[I

    invoke-static {p0, v3}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v1, v2

    .line 117
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :cond_0
    const/16 v0, 0xa

    new-array v4, v0, [[I

    new-array v0, v0, [I

    .line 125
    sget-object v5, Lcom/google/android/material/g/a;->e:[I

    aput-object v5, v4, v3

    .line 126
    invoke-static {p0, v5}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v0, v3

    .line 129
    sget-object v5, Lcom/google/android/material/g/a;->f:[I

    aput-object v5, v4, v2

    .line 130
    invoke-static {p0, v5}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v0, v2

    .line 133
    sget-object v2, Lcom/google/android/material/g/a;->g:[I

    aput-object v2, v4, v1

    .line 134
    invoke-static {p0, v2}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    .line 137
    sget-object v1, Lcom/google/android/material/g/a;->h:[I

    const/4 v2, 0x3

    aput-object v1, v4, v2

    .line 138
    invoke-static {p0, v1}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    aput v1, v0, v2

    .line 142
    sget-object v1, Lcom/google/android/material/g/a;->i:[I

    const/4 v2, 0x4

    aput-object v1, v4, v2

    aput v3, v0, v2

    .line 146
    sget-object v1, Lcom/google/android/material/g/a;->a:[I

    const/4 v2, 0x5

    aput-object v1, v4, v2

    .line 147
    invoke-static {p0, v1}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    aput v1, v0, v2

    .line 150
    sget-object v1, Lcom/google/android/material/g/a;->b:[I

    const/4 v2, 0x6

    aput-object v1, v4, v2

    .line 151
    invoke-static {p0, v1}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    aput v1, v0, v2

    .line 154
    sget-object v1, Lcom/google/android/material/g/a;->c:[I

    const/4 v2, 0x7

    aput-object v1, v4, v2

    .line 155
    invoke-static {p0, v1}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    aput v1, v0, v2

    .line 158
    sget-object v1, Lcom/google/android/material/g/a;->d:[I

    const/16 v2, 0x8

    aput-object v1, v4, v2

    .line 159
    invoke-static {p0, v1}, Lcom/google/android/material/g/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v0, v2

    .line 163
    sget-object p0, Landroid/util/StateSet;->NOTHING:[I

    const/16 v1, 0x9

    aput-object p0, v4, v1

    aput v3, v0, v1

    .line 167
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method
