.class public final Lc/e/a/a/l/o;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field public final a:I

.field public final b:[Lc/e/a/a/l/n;

.field public c:I


# direct methods
.method public varargs constructor <init>([Lc/e/a/a/l/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/l/o;->b:[Lc/e/a/a/l/n;

    .line 3
    array-length p1, p1

    iput p1, p0, Lc/e/a/a/l/o;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lc/e/a/a/l/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/o;->b:[Lc/e/a/a/l/n;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a()[Lc/e/a/a/l/n;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/l/o;->b:[Lc/e/a/a/l/n;

    invoke-virtual {v0}, [Lc/e/a/a/l/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/a/a/l/n;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lc/e/a/a/l/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/a/l/o;

    .line 3
    iget-object v0, p0, Lc/e/a/a/l/o;->b:[Lc/e/a/a/l/n;

    iget-object p1, p1, Lc/e/a/a/l/o;->b:[Lc/e/a/a/l/n;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/l/o;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lc/e/a/a/l/o;->b:[Lc/e/a/a/l/n;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iput v0, p0, Lc/e/a/a/l/o;->c:I

    .line 4
    :cond_0
    iget v0, p0, Lc/e/a/a/l/o;->c:I

    return v0
.end method
