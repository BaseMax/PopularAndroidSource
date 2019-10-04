.class final Lcom/bumptech/glide/load/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# static fields
.field private static final a:Lcom/bumptech/glide/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/g<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/a/b;

.field private final c:Lcom/bumptech/glide/load/d;

.field private final d:Lcom/bumptech/glide/load/d;

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/g;

.field private final i:Lcom/bumptech/glide/load/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/bumptech/glide/g/g;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/g/g;-><init>(J)V

    sput-object v0, Lcom/bumptech/glide/load/b/x;->a:Lcom/bumptech/glide/g/g;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;IILcom/bumptech/glide/load/j;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/d;",
            "II",
            "Lcom/bumptech/glide/load/j<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/b/x;->b:Lcom/bumptech/glide/load/b/a/b;

    .line 37
    iput-object p2, p0, Lcom/bumptech/glide/load/b/x;->c:Lcom/bumptech/glide/load/d;

    .line 38
    iput-object p3, p0, Lcom/bumptech/glide/load/b/x;->d:Lcom/bumptech/glide/load/d;

    .line 39
    iput p4, p0, Lcom/bumptech/glide/load/b/x;->e:I

    .line 40
    iput p5, p0, Lcom/bumptech/glide/load/b/x;->f:I

    .line 41
    iput-object p6, p0, Lcom/bumptech/glide/load/b/x;->i:Lcom/bumptech/glide/load/j;

    .line 42
    iput-object p7, p0, Lcom/bumptech/glide/load/b/x;->g:Ljava/lang/Class;

    .line 43
    iput-object p8, p0, Lcom/bumptech/glide/load/b/x;->h:Lcom/bumptech/glide/load/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 48
    instance-of v0, p1, Lcom/bumptech/glide/load/b/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/bumptech/glide/load/b/x;

    .line 50
    iget v0, p0, Lcom/bumptech/glide/load/b/x;->f:I

    iget v2, p1, Lcom/bumptech/glide/load/b/x;->f:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/b/x;->e:I

    iget v2, p1, Lcom/bumptech/glide/load/b/x;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/x;->i:Lcom/bumptech/glide/load/j;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/x;->i:Lcom/bumptech/glide/load/j;

    .line 51
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/x;->g:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/x;->g:Ljava/lang/Class;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/x;->c:Lcom/bumptech/glide/load/d;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/x;->c:Lcom/bumptech/glide/load/d;

    .line 53
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/x;->d:Lcom/bumptech/glide/load/d;

    iget-object v2, p1, Lcom/bumptech/glide/load/b/x;->d:Lcom/bumptech/glide/load/d;

    .line 54
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/x;->h:Lcom/bumptech/glide/load/g;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/x;->h:Lcom/bumptech/glide/load/g;

    .line 55
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/load/b/x;->c:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget v1, p0, Lcom/bumptech/glide/load/b/x;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget v1, p0, Lcom/bumptech/glide/load/b/x;->f:I

    add-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->i:Lcom/bumptech/glide/load/j;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->g:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->h:Lcom/bumptech/glide/load/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->c:Lcom/bumptech/glide/load/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->d:Lcom/bumptech/glide/load/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/x;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/x;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->i:Lcom/bumptech/glide/load/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->h:Lcom/bumptech/glide/load/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/load/b/x;->b:Lcom/bumptech/glide/load/b/a/b;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/b/a/b;->getExact(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 78
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/b/x;->e:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/b/x;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 79
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->d:Lcom/bumptech/glide/load/d;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/d;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 80
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->c:Lcom/bumptech/glide/load/d;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/d;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 81
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 82
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->i:Lcom/bumptech/glide/load/j;

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/j;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->h:Lcom/bumptech/glide/load/g;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/g;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 1091
    sget-object v1, Lcom/bumptech/glide/load/b/x;->a:Lcom/bumptech/glide/g/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/x;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/bumptech/glide/load/b/x;->g:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/b/x;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 1094
    sget-object v2, Lcom/bumptech/glide/load/b/x;->a:Lcom/bumptech/glide/g/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/x;->g:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Lcom/bumptech/glide/g/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 87
    iget-object p1, p0, Lcom/bumptech/glide/load/b/x;->b:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/b/a/b;->put(Ljava/lang/Object;)V

    return-void
.end method
