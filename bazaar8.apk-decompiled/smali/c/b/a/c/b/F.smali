.class public final Lc/b/a/c/b/F;
.super Ljava/lang/Object;
.source "ResourceCacheKey.java"

# interfaces
.implements Lc/b/a/c/c;


# static fields
.field public static final a:Lc/b/a/i/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/i/f<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lc/b/a/c/b/a/b;

.field public final c:Lc/b/a/c/c;

.field public final d:Lc/b/a/c/c;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Lc/b/a/c/f;

.field public final i:Lc/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc/b/a/i/f;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lc/b/a/i/f;-><init>(J)V

    sput-object v0, Lc/b/a/c/b/F;->a:Lc/b/a/i/f;

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/b/a/b;Lc/b/a/c/c;Lc/b/a/c/c;IILc/b/a/c/i;Ljava/lang/Class;Lc/b/a/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/a/b;",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/c;",
            "II",
            "Lc/b/a/c/i<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/b/F;->b:Lc/b/a/c/b/a/b;

    .line 3
    iput-object p2, p0, Lc/b/a/c/b/F;->c:Lc/b/a/c/c;

    .line 4
    iput-object p3, p0, Lc/b/a/c/b/F;->d:Lc/b/a/c/c;

    .line 5
    iput p4, p0, Lc/b/a/c/b/F;->e:I

    .line 6
    iput p5, p0, Lc/b/a/c/b/F;->f:I

    .line 7
    iput-object p6, p0, Lc/b/a/c/b/F;->i:Lc/b/a/c/i;

    .line 8
    iput-object p7, p0, Lc/b/a/c/b/F;->g:Ljava/lang/Class;

    .line 9
    iput-object p8, p0, Lc/b/a/c/b/F;->h:Lc/b/a/c/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/F;->b:Lc/b/a/c/b/a/b;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lc/b/a/c/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lc/b/a/c/b/F;->e:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lc/b/a/c/b/F;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 3
    iget-object v1, p0, Lc/b/a/c/b/F;->d:Lc/b/a/c/c;

    invoke-interface {v1, p1}, Lc/b/a/c/c;->a(Ljava/security/MessageDigest;)V

    .line 4
    iget-object v1, p0, Lc/b/a/c/b/F;->c:Lc/b/a/c/c;

    invoke-interface {v1, p1}, Lc/b/a/c/c;->a(Ljava/security/MessageDigest;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    iget-object v1, p0, Lc/b/a/c/b/F;->i:Lc/b/a/c/i;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Lc/b/a/c/c;->a(Ljava/security/MessageDigest;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lc/b/a/c/b/F;->h:Lc/b/a/c/f;

    invoke-virtual {v1, p1}, Lc/b/a/c/f;->a(Ljava/security/MessageDigest;)V

    .line 9
    invoke-virtual {p0}, Lc/b/a/c/b/F;->a()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    iget-object p1, p0, Lc/b/a/c/b/F;->b:Lc/b/a/c/b/a/b;

    invoke-interface {p1, v0}, Lc/b/a/c/b/a/b;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()[B
    .locals 3

    .line 11
    sget-object v0, Lc/b/a/c/b/F;->a:Lc/b/a/i/f;

    iget-object v1, p0, Lc/b/a/c/b/F;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lc/b/a/i/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lc/b/a/c/b/F;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/b/a/c/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 13
    sget-object v1, Lc/b/a/c/b/F;->a:Lc/b/a/i/f;

    iget-object v2, p0, Lc/b/a/c/b/F;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lc/b/a/i/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lc/b/a/c/b/F;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/b/a/c/b/F;

    .line 3
    iget v0, p0, Lc/b/a/c/b/F;->f:I

    iget v2, p1, Lc/b/a/c/b/F;->f:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lc/b/a/c/b/F;->e:I

    iget v2, p1, Lc/b/a/c/b/F;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/F;->i:Lc/b/a/c/i;

    iget-object v2, p1, Lc/b/a/c/b/F;->i:Lc/b/a/c/i;

    .line 4
    invoke-static {v0, v2}, Lc/b/a/i/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/F;->g:Ljava/lang/Class;

    iget-object v2, p1, Lc/b/a/c/b/F;->g:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/F;->c:Lc/b/a/c/c;

    iget-object v2, p1, Lc/b/a/c/b/F;->c:Lc/b/a/c/c;

    .line 6
    invoke-interface {v0, v2}, Lc/b/a/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/F;->d:Lc/b/a/c/c;

    iget-object v2, p1, Lc/b/a/c/b/F;->d:Lc/b/a/c/c;

    .line 7
    invoke-interface {v0, v2}, Lc/b/a/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/F;->h:Lc/b/a/c/f;

    iget-object p1, p1, Lc/b/a/c/b/F;->h:Lc/b/a/c/f;

    .line 8
    invoke-virtual {v0, p1}, Lc/b/a/c/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/F;->c:Lc/b/a/c/c;

    invoke-interface {v0}, Lc/b/a/c/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/b/a/c/b/F;->d:Lc/b/a/c/c;

    invoke-interface {v1}, Lc/b/a/c/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lc/b/a/c/b/F;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lc/b/a/c/b/F;->f:I

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lc/b/a/c/b/F;->i:Lc/b/a/c/i;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lc/b/a/c/b/F;->g:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lc/b/a/c/b/F;->h:Lc/b/a/c/f;

    invoke-virtual {v1}, Lc/b/a/c/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/F;->c:Lc/b/a/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/F;->d:Lc/b/a/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/b/a/c/b/F;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/b/a/c/b/F;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/F;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/F;->i:Lc/b/a/c/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/F;->h:Lc/b/a/c/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
