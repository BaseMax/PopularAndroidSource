.class public final Lc/c/a/e/d/n/a/f;
.super Ljava/lang/Object;
.source "PlayedVideoEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/n/a/f$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/n/a/f$a;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;

.field public final h:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

.field public final i:Z

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/d/n/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/d/n/a/f$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/d/n/a/f;->a:Lc/c/a/e/d/n/a/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/n/a/f;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/d/n/a/f;->c:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/e/d/n/a/f;->d:Ljava/lang/String;

    iput-object p4, p0, Lc/c/a/e/d/n/a/f;->e:Ljava/lang/String;

    iput-object p5, p0, Lc/c/a/e/d/n/a/f;->f:Ljava/lang/Integer;

    iput-object p6, p0, Lc/c/a/e/d/n/a/f;->g:Ljava/lang/Integer;

    iput-object p7, p0, Lc/c/a/e/d/n/a/f;->h:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    iput-boolean p8, p0, Lc/c/a/e/d/n/a/f;->i:Z

    iput-wide p9, p0, Lc/c/a/e/d/n/a/f;->j:J

    iput-object p11, p0, Lc/c/a/e/d/n/a/f;->k:Ljava/lang/String;

    iput-object p12, p0, Lc/c/a/e/d/n/a/f;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/e/d/n/a/f;->j:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/e/d/n/a/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/e/d/n/a/f;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->b:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/n/a/f;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->c:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/n/a/f;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->d:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/n/a/f;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->e:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/n/a/f;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lc/c/a/e/d/n/a/f;->f:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->g:Ljava/lang/Integer;

    iget-object v3, p1, Lc/c/a/e/d/n/a/f;->g:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->h:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    iget-object v3, p1, Lc/c/a/e/d/n/a/f;->h:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/c/a/e/d/n/a/f;->i:Z

    iget-boolean v3, p1, Lc/c/a/e/d/n/a/f;->i:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-wide v3, p0, Lc/c/a/e/d/n/a/f;->j:J

    iget-wide v5, p1, Lc/c/a/e/d/n/a/f;->j:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->k:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/n/a/f;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->l:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/n/a/f;->l:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/n/a/f;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/n/a/f;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/n/a/f;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/n/a/f;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/n/a/f;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/n/a/f;->h:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lc/c/a/e/d/n/a/f;->i:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lc/c/a/e/d/n/a/f;->j:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/n/a/f;->k:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/n/a/f;->l:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/farsitel/bazaar/common/model/PlayedVideoType;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/f;->h:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/e/d/n/a/f;->i:Z

    return v0
.end method

.method public final l()Lcom/farsitel/bazaar/common/model/page/ListItem;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lc/c/a/e/d/n/a/f;->h:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    sget-object v2, Lc/c/a/e/d/n/a/g;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    .line 3
    new-instance v6, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    .line 4
    iget-object v5, v0, Lc/c/a/e/d/n/a/f;->e:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v7, v0, Lc/c/a/e/d/n/a/f;->b:Ljava/lang/String;

    iget-object v8, v0, Lc/c/a/e/d/n/a/f;->f:Ljava/lang/Integer;

    iget-object v9, v0, Lc/c/a/e/d/n/a/f;->g:Ljava/lang/Integer;

    iget-object v10, v0, Lc/c/a/e/d/n/a/f;->d:Ljava/lang/String;

    iget-object v11, v0, Lc/c/a/e/d/n/a/f;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 5
    new-instance v2, Lcom/farsitel/bazaar/common/model/ShortInfo;

    move-object/from16 v17, v2

    iget-object v13, v0, Lc/c/a/e/d/n/a/f;->k:Ljava/lang/String;

    iget-object v14, v0, Lc/c/a/e/d/n/a/f;->l:Ljava/lang/String;

    invoke-direct {v2, v13, v14}, Lcom/farsitel/bazaar/common/model/ShortInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lc/c/a/c/d/c$i;

    invoke-direct {v2}, Lc/c/a/c/d/c$i;-><init>()V

    invoke-static {v2, v4, v3, v4}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x2000

    const/16 v21, 0x0

    move-object v2, v5

    move-object v5, v6

    move-object v3, v6

    move-object v6, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 7
    invoke-direct/range {v5 .. v21}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLcom/farsitel/bazaar/common/model/ShortInfo;Ljava/lang/String;ZILh/f/b/f;)V

    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;-><init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;Z)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4

    .line 10
    :cond_1
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 11
    :cond_2
    new-instance v1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    .line 12
    new-instance v2, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    .line 13
    iget-object v6, v0, Lc/c/a/e/d/n/a/f;->b:Ljava/lang/String;

    .line 14
    iget-object v7, v0, Lc/c/a/e/d/n/a/f;->c:Ljava/lang/String;

    .line 15
    iget-object v8, v0, Lc/c/a/e/d/n/a/f;->k:Ljava/lang/String;

    .line 16
    iget-object v9, v0, Lc/c/a/e/d/n/a/f;->l:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 17
    iget-boolean v14, v0, Lc/c/a/e/d/n/a/f;->i:Z

    .line 18
    iget-object v15, v0, Lc/c/a/e/d/n/a/f;->d:Ljava/lang/String;

    .line 19
    new-instance v5, Lc/c/a/c/d/c$i;

    invoke-direct {v5}, Lc/c/a/c/d/c$i;-><init>()V

    invoke-static {v5, v4, v3, v4}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x800

    const/16 v19, 0x0

    move-object v5, v2

    .line 20
    invoke-direct/range {v5 .. v19}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZILh/f/b/f;)V

    const/4 v3, 0x0

    .line 21
    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;-><init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;Z)V

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayedVideoEntity(entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seasonIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->h:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/n/a/f;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/e/d/n/a/f;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", seasonEpisodeTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/n/a/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
