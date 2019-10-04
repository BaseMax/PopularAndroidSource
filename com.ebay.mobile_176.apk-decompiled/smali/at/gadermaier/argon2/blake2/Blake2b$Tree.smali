.class public Lat/gadermaier/argon2/blake2/Blake2b$Tree;
.super Ljava/lang/Object;
.source "Blake2b.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/blake2/Blake2b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tree"
.end annotation


# instance fields
.field final depth:I

.field final digest_length:I

.field final fanout:I

.field final inner_length:I

.field final leaf_length:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->fanout:I

    .line 223
    iput p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->depth:I

    .line 224
    iput p3, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->leaf_length:I

    .line 225
    iput p4, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->inner_length:I

    .line 226
    iput p5, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->digest_length:I

    return-void
.end method

.method private treeParam()Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 2

    .line 229
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    iget v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->depth:I

    .line 230
    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setDepth(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    iget v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->fanout:I

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setFanout(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    iget v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->leaf_length:I

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setLeafLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    iget v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->inner_length:I

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setInnerLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getNode(II)Lat/gadermaier/argon2/blake2/Blake2b$Digest;
    .locals 2

    .line 234
    invoke-direct {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->treeParam()Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setNodeDepth(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setNodeOffset(J)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p1

    iget p2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->inner_length:I

    invoke-virtual {p1, p2}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setDigestLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p1

    .line 235
    invoke-static {p1}, Lat/gadermaier/argon2/blake2/Blake2b$Digest;->newInstance(Lat/gadermaier/argon2/blake2/Blake2b$Param;)Lat/gadermaier/argon2/blake2/Blake2b$Digest;

    move-result-object p1

    return-object p1
.end method

.method public final getRoot()Lat/gadermaier/argon2/blake2/Blake2b$Digest;
    .locals 3

    .line 239
    iget v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->depth:I

    add-int/lit8 v0, v0, -0x1

    .line 240
    invoke-direct {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->treeParam()Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setNodeDepth(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setNodeOffset(J)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    iget v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Tree;->digest_length:I

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setDigestLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Digest;->newInstance(Lat/gadermaier/argon2/blake2/Blake2b$Param;)Lat/gadermaier/argon2/blake2/Blake2b$Digest;

    move-result-object v0

    return-object v0
.end method
