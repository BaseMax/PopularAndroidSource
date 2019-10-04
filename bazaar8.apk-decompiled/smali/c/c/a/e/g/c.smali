.class public final Lc/c/a/e/g/c;
.super Ljava/lang/Object;
.source "DownloadModel.kt"

# interfaces
.implements Li/a/H;


# instance fields
.field public final a:Z

.field public b:Z

.field public final c:Li/a/ra;

.field public d:I

.field public final e:Lc/c/a/e/g/d;

.field public f:Lcom/farsitel/bazaar/common/model/DownloadStatus;

.field public final g:Li/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Li/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field public final j:Lcom/farsitel/bazaar/data/entity/EntityType;

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/math/BigInteger;

.field public final n:Ljava/math/BigInteger;

.field public final o:Z

.field public final p:Ljavax/crypto/Cipher;

.field public final q:I

.field public r:Lcom/farsitel/bazaar/common/model/DownloadStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjavax/crypto/Cipher;ILcom/farsitel/bazaar/common/model/DownloadStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/data/entity/EntityType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Z",
            "Ljavax/crypto/Cipher;",
            "I",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ")V"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_downloadUrls"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_status"

    invoke-static {p10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/g/c;->i:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/g/c;->j:Lcom/farsitel/bazaar/data/entity/EntityType;

    iput-object p3, p0, Lc/c/a/e/g/c;->k:Ljava/util/List;

    iput-object p4, p0, Lc/c/a/e/g/c;->l:Ljava/util/List;

    iput-object p5, p0, Lc/c/a/e/g/c;->m:Ljava/math/BigInteger;

    iput-object p6, p0, Lc/c/a/e/g/c;->n:Ljava/math/BigInteger;

    iput-boolean p7, p0, Lc/c/a/e/g/c;->o:Z

    iput-object p8, p0, Lc/c/a/e/g/c;->p:Ljavax/crypto/Cipher;

    iput p9, p0, Lc/c/a/e/g/c;->q:I

    iput-object p10, p0, Lc/c/a/e/g/c;->r:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 2
    iget-object p1, p0, Lc/c/a/e/g/c;->l:Ljava/util/List;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/c/a/e/g/c;->n:Ljava/math/BigInteger;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lc/c/a/e/g/c;->a:Z

    .line 3
    iget-boolean p1, p0, Lc/c/a/e/g/c;->a:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lc/c/a/e/g/c;->b:Z

    const/4 p1, 0x0

    .line 4
    invoke-static {p1, p2, p1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/g/c;->c:Li/a/ra;

    .line 5
    new-instance p1, Lc/c/a/e/g/d;

    invoke-direct {p1}, Lc/c/a/e/g/d;-><init>()V

    iput-object p1, p0, Lc/c/a/e/g/c;->e:Lc/c/a/e/g/d;

    .line 6
    iget-object p1, p0, Lc/c/a/e/g/c;->r:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    iput-object p1, p0, Lc/c/a/e/g/c;->f:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 7
    new-instance p1, Li/a/b/p;

    .line 8
    new-instance p2, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-direct {p2}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;-><init>()V

    .line 9
    invoke-direct {p1, p2}, Li/a/b/p;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lc/c/a/e/g/c;->g:Li/a/b/p;

    .line 10
    new-instance p1, Li/a/b/p;

    .line 11
    sget-object p2, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 12
    invoke-direct {p1, p2}, Li/a/b/p;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lc/c/a/e/g/c;->h:Li/a/b/p;

    .line 13
    iget-object p1, p0, Lc/c/a/e/g/c;->f:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {p0, p1}, Lc/c/a/e/g/c;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjavax/crypto/Cipher;ILcom/farsitel/bazaar/common/model/DownloadStatus;ILh/f/b/f;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p8

    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v11, p9

    :goto_1
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Lcom/farsitel/bazaar/common/model/DownloadStatus;->PENDING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    move-object v12, v0

    goto :goto_2

    :cond_2
    move-object/from16 v12, p10

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v12}, Lc/c/a/e/g/c;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjavax/crypto/Cipher;ILcom/farsitel/bazaar/common/model/DownloadStatus;)V

    return-void
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/e/g/c;->c:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V
    .locals 7

    const-string v0, "status"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v4, Lcom/farsitel/bazaar/data/model/DownloadInfoModel$sendStatus$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/data/model/DownloadInfoModel$sendStatus$1;-><init>(Lc/c/a/e/g/c;Lcom/farsitel/bazaar/common/model/DownloadStatus;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final b()Ljava/math/BigInteger;
    .locals 1

    .line 3
    iget-boolean v0, p0, Lc/c/a/e/g/c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/c;->m:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/e/g/c;->n:Ljava/math/BigInteger;

    :goto_0
    return-object v0
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lc/c/a/e/g/c;->f:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/e/g/c;->a(Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/g/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c/a/e/g/c;->d:I

    return-void
.end method

.method public final d()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->m:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/c/a/e/g/c;->b:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/c/a/e/g/c;->d:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lc/c/a/e/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/c;->i:Ljava/lang/String;

    check-cast p1, Lc/c/a/e/g/c;

    iget-object p1, p1, Lc/c/a/e/g/c;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()Ljavax/crypto/Cipher;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->p:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lc/c/a/e/g/c;->d:I

    iget-object v1, p0, Lc/c/a/e/g/c;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 2
    iget v0, p0, Lc/c/a/e/g/c;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/c/a/e/g/c;->e:Lc/c/a/e/g/d;

    invoke-virtual {v0}, Lc/c/a/e/g/d;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lc/c/a/e/g/c;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v1, p0, Lc/c/a/e/g/c;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lc/c/a/e/g/c;->e()V

    .line 5
    invoke-virtual {p0}, Lc/c/a/e/g/c;->j()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/g/c;->b:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lc/c/a/e/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->e:Lc/c/a/e/g/d;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/g/c;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/e/g/c;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/c/a/e/g/c;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lc/c/a/e/g/c;->d:I

    iget-object v1, p0, Lc/c/a/e/g/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/c;->k:Ljava/util/List;

    iget v1, p0, Lc/c/a/e/g/c;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/g/c;->q:I

    return v0
.end method

.method public final n()Li/a/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->g:Li/a/b/p;

    return-object v0
.end method

.method public final o()Lcom/farsitel/bazaar/common/model/DownloadStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->f:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    return-object v0
.end method

.method public final p()Li/a/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->h:Li/a/b/p;

    return-object v0
.end method

.method public final q()Lcom/farsitel/bazaar/data/entity/EntityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/c;->j:Lcom/farsitel/bazaar/data/entity/EntityType;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/g/c;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadInfoModel(entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/c;->j:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _downloadUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/c;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _downloadDiffUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/c;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _downloadHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/c;->m:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _downloadDiffHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/c;->n:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInInternalStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/g/c;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cipher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/c;->p:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/g/c;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", _status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/c;->r:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
