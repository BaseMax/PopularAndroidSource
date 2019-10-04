.class public Lc/b/a/c/b/v;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lc/b/a/c/c;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Lc/b/a/c/c;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final h:Lc/b/a/c/f;

.field public i:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lc/b/a/c/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lc/b/a/c/c;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/i<",
            "*>;>;",
            "Ljava/lang/Class<",
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
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/b/a/c/b/v;->a:Ljava/lang/Object;

    const-string p1, "Signature must not be null"

    .line 3
    invoke-static {p2, p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lc/b/a/c/c;

    iput-object p2, p0, Lc/b/a/c/b/v;->f:Lc/b/a/c/c;

    .line 4
    iput p3, p0, Lc/b/a/c/b/v;->b:I

    .line 5
    iput p4, p0, Lc/b/a/c/b/v;->c:I

    .line 6
    invoke-static {p5}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Ljava/util/Map;

    iput-object p5, p0, Lc/b/a/c/b/v;->g:Ljava/util/Map;

    const-string p1, "Resource class must not be null"

    .line 7
    invoke-static {p6, p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Ljava/lang/Class;

    iput-object p6, p0, Lc/b/a/c/b/v;->d:Ljava/lang/Class;

    const-string p1, "Transcode class must not be null"

    .line 8
    invoke-static {p7, p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p7, Ljava/lang/Class;

    iput-object p7, p0, Lc/b/a/c/b/v;->e:Ljava/lang/Class;

    .line 9
    invoke-static {p8}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p8, Lc/b/a/c/f;

    iput-object p8, p0, Lc/b/a/c/b/v;->h:Lc/b/a/c/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lc/b/a/c/b/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/b/a/c/b/v;

    .line 3
    iget-object v0, p0, Lc/b/a/c/b/v;->a:Ljava/lang/Object;

    iget-object v2, p1, Lc/b/a/c/b/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/v;->f:Lc/b/a/c/c;

    iget-object v2, p1, Lc/b/a/c/b/v;->f:Lc/b/a/c/c;

    .line 4
    invoke-interface {v0, v2}, Lc/b/a/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/b/a/c/b/v;->c:I

    iget v2, p1, Lc/b/a/c/b/v;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lc/b/a/c/b/v;->b:I

    iget v2, p1, Lc/b/a/c/b/v;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/v;->g:Ljava/util/Map;

    iget-object v2, p1, Lc/b/a/c/b/v;->g:Ljava/util/Map;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/v;->d:Ljava/lang/Class;

    iget-object v2, p1, Lc/b/a/c/b/v;->d:Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/v;->e:Ljava/lang/Class;

    iget-object v2, p1, Lc/b/a/c/b/v;->e:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/c/b/v;->h:Lc/b/a/c/f;

    iget-object p1, p1, Lc/b/a/c/b/v;->h:Lc/b/a/c/f;

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
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/c/b/v;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lc/b/a/c/b/v;->i:I

    .line 3
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/b/a/c/b/v;->f:Lc/b/a/c/c;

    invoke-interface {v1}, Lc/b/a/c/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lc/b/a/c/b/v;->i:I

    .line 4
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/b/a/c/b/v;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/b/a/c/b/v;->i:I

    .line 5
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/b/a/c/b/v;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/b/a/c/b/v;->i:I

    .line 6
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/b/a/c/b/v;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lc/b/a/c/b/v;->i:I

    .line 7
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/b/a/c/b/v;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lc/b/a/c/b/v;->i:I

    .line 8
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/b/a/c/b/v;->e:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lc/b/a/c/b/v;->i:I

    .line 9
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/b/a/c/b/v;->h:Lc/b/a/c/f;

    invoke-virtual {v1}, Lc/b/a/c/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lc/b/a/c/b/v;->i:I

    .line 10
    :cond_0
    iget v0, p0, Lc/b/a/c/b/v;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineKey{model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/b/a/c/b/v;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/b/a/c/b/v;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/v;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/v;->e:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/v;->f:Lc/b/a/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/b/a/c/b/v;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/v;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/c/b/v;->h:Lc/b/a/c/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
