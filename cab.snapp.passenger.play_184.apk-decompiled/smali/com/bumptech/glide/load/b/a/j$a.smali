.class final Lcom/bumptech/glide/load/b/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/bumptech/glide/load/b/a/j$b;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/a/j$b;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/j$a;->b:Lcom/bumptech/glide/load/b/a/j$b;

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 250
    iput p1, p0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    .line 251
    iput-object p2, p0, Lcom/bumptech/glide/load/b/a/j$a;->c:Ljava/lang/Class;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 256
    instance-of v0, p1, Lcom/bumptech/glide/load/b/a/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    check-cast p1, Lcom/bumptech/glide/load/b/a/j$a;

    .line 258
    iget v0, p0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j$a;->c:Ljava/lang/Class;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/a/j$a;->c:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 275
    iget v0, p0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 276
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/j$a;->c:Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final offer()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j$a;->b:Lcom/bumptech/glide/load/b/a/j$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/b/a/j$b;->offer(Lcom/bumptech/glide/load/b/a/m;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/j$a;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
