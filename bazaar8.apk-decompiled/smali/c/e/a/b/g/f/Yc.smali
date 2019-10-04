.class public final Lc/e/a/b/g/f/Yc;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/b/g/f/Yc;->a:I

    .line 3
    iput-object p2, p0, Lc/e/a/b/g/f/Yc;->b:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lc/e/a/b/g/f/Yc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/b/g/f/Yc;

    .line 3
    iget v1, p0, Lc/e/a/b/g/f/Yc;->a:I

    iget v3, p1, Lc/e/a/b/g/f/Yc;->a:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lc/e/a/b/g/f/Yc;->b:[B

    iget-object p1, p1, Lc/e/a/b/g/f/Yc;->b:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/Yc;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/e/a/b/g/f/Yc;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
