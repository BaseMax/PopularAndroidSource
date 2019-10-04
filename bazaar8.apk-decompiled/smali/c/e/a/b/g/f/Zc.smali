.class public final Lc/e/a/b/g/f/Zc;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[F

.field public static final d:[D

.field public static final e:[Z

.field public static final f:[Ljava/lang/String;

.field public static final g:[[B

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [I

    sput-object v1, Lc/e/a/b/g/f/Zc;->a:[I

    .line 2
    new-array v1, v0, [J

    sput-object v1, Lc/e/a/b/g/f/Zc;->b:[J

    .line 3
    new-array v1, v0, [F

    sput-object v1, Lc/e/a/b/g/f/Zc;->c:[F

    .line 4
    new-array v1, v0, [D

    sput-object v1, Lc/e/a/b/g/f/Zc;->d:[D

    .line 5
    new-array v1, v0, [Z

    sput-object v1, Lc/e/a/b/g/f/Zc;->e:[Z

    .line 6
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lc/e/a/b/g/f/Zc;->f:[Ljava/lang/String;

    .line 7
    new-array v1, v0, [[B

    sput-object v1, Lc/e/a/b/g/f/Zc;->g:[[B

    .line 8
    new-array v0, v0, [B

    sput-object v0, Lc/e/a/b/g/f/Zc;->h:[B

    return-void
.end method

.method public static final a(Lc/e/a/b/g/f/Pc;I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->a()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Pc;->c(I)Z

    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lc/e/a/b/g/f/Pc;->c()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Pc;->c(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p1}, Lc/e/a/b/g/f/Pc;->b(II)V

    return v1
.end method
