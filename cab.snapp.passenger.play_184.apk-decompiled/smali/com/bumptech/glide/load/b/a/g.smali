.class public final Lcom/bumptech/glide/load/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/a/a<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getArrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/a/g;->getArrayLength([B)I

    move-result p1

    return p1
.end method

.method public final getArrayLength([B)I
    .locals 0

    .line 17
    array-length p1, p1

    return p1
.end method

.method public final getElementSizeInBytes()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public final bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/a/g;->newArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[B
    .locals 0

    .line 22
    new-array p1, p1, [B

    return-object p1
.end method
