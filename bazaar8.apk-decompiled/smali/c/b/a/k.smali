.class public Lc/b/a/k;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lc/b/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lc/b/a/h<",
        "Lc/b/a/k<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/g/g;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lc/b/a/n;

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final e:Lc/b/a/g/g;

.field public final f:Lc/b/a/e;

.field public final g:Lc/b/a/g;

.field public h:Lc/b/a/g/g;

.field public i:Lc/b/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/o<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Object;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field public l:Lc/b/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public m:Lc/b/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public n:Ljava/lang/Float;

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/g/g;

    invoke-direct {v0}, Lc/b/a/g/g;-><init>()V

    sget-object v1, Lc/b/a/c/b/p;->c:Lc/b/a/c/b/p;

    .line 2
    invoke-virtual {v0, v1}, Lc/b/a/g/g;->a(Lc/b/a/c/b/p;)Lc/b/a/g/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/Priority;)Lc/b/a/g/g;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lc/b/a/g/g;->a(Z)Lc/b/a/g/g;

    move-result-object v0

    sput-object v0, Lc/b/a/k;->a:Lc/b/a/g/g;

    return-void
.end method

.method public constructor <init>(Lc/b/a/e;Lc/b/a/n;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/e;",
            "Lc/b/a/n;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/b/a/k;->o:Z

    .line 3
    iput-object p1, p0, Lc/b/a/k;->f:Lc/b/a/e;

    .line 4
    iput-object p2, p0, Lc/b/a/k;->c:Lc/b/a/n;

    .line 5
    iput-object p3, p0, Lc/b/a/k;->d:Ljava/lang/Class;

    .line 6
    invoke-virtual {p2}, Lc/b/a/n;->e()Lc/b/a/g/g;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/k;->e:Lc/b/a/g/g;

    .line 7
    iput-object p4, p0, Lc/b/a/k;->b:Landroid/content/Context;

    .line 8
    invoke-virtual {p2, p3}, Lc/b/a/n;->b(Ljava/lang/Class;)Lc/b/a/o;

    move-result-object p2

    iput-object p2, p0, Lc/b/a/k;->i:Lc/b/a/o;

    .line 9
    iget-object p2, p0, Lc/b/a/k;->e:Lc/b/a/g/g;

    iput-object p2, p0, Lc/b/a/k;->h:Lc/b/a/g/g;

    .line 10
    invoke-virtual {p1}, Lc/b/a/e;->g()Lc/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/k;->g:Lc/b/a/g;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/g/a/h;)Lc/b/a/g/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/b/a/g/a/h<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;)Lc/b/a/g/a/h;

    return-object p1
.end method

.method public a(Lc/b/a/g/a/h;Lc/b/a/g/f;)Lc/b/a/g/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/b/a/g/a/h<",
            "TTranscodeType;>;>(TY;",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;)TY;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lc/b/a/k;->a()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lc/b/a/k;->b(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;)Lc/b/a/g/a/h;

    return-object p1
.end method

.method public a(Landroid/widget/ImageView;)Lc/b/a/g/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lc/b/a/g/a/i<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 16
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lc/b/a/k;->h:Lc/b/a/g/g;

    .line 18
    invoke-virtual {v0}, Lc/b/a/g/g;->D()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    invoke-virtual {v0}, Lc/b/a/g/g;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    sget-object v1, Lc/b/a/j;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 22
    :pswitch_0
    invoke-virtual {v0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/g/g;->H()Lc/b/a/g/g;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_1
    invoke-virtual {v0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/g/g;->I()Lc/b/a/g/g;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_2
    invoke-virtual {v0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/g/g;->H()Lc/b/a/g/g;

    move-result-object v0

    goto :goto_0

    .line 25
    :pswitch_3
    invoke-virtual {v0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/g/g;->G()Lc/b/a/g/g;

    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    iget-object v1, p0, Lc/b/a/k;->g:Lc/b/a/g;

    iget-object v2, p0, Lc/b/a/k;->d:Ljava/lang/Class;

    .line 27
    invoke-virtual {v1, p1, v2}, Lc/b/a/g;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/b/a/g/a/i;

    move-result-object p1

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lc/b/a/k;->b(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;)Lc/b/a/g/a/h;

    check-cast p1, Lc/b/a/g/a/i;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(II)Lc/b/a/g/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc/b/a/g/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lc/b/a/g/e;

    iget-object v1, p0, Lc/b/a/k;->g:Lc/b/a/g;

    .line 30
    invoke-virtual {v1}, Lc/b/a/g;->e()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lc/b/a/g/e;-><init>(Landroid/os/Handler;II)V

    .line 31
    invoke-static {}, Lc/b/a/i/k;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lc/b/a/k;->g:Lc/b/a/g;

    invoke-virtual {p1}, Lc/b/a/g;->e()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lc/b/a/i;

    invoke-direct {p2, p0, v0}, Lc/b/a/i;-><init>(Lc/b/a/k;Lc/b/a/g/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, v0, v0}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;)Lc/b/a/g/a/h;

    :goto_0
    return-object v0
.end method

.method public final a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;IILc/b/a/g/g;)Lc/b/a/g/c;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "TTranscodeType;>;",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;",
            "Lc/b/a/g/d;",
            "Lc/b/a/o<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lc/b/a/g/g;",
            ")",
            "Lc/b/a/g/c;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 44
    iget-object v0, v9, Lc/b/a/k;->m:Lc/b/a/k;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lc/b/a/g/a;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lc/b/a/g/a;-><init>(Lc/b/a/g/d;)V

    move-object v3, v0

    move-object v15, v3

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v3, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 46
    invoke-virtual/range {v0 .. v8}, Lc/b/a/k;->b(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;IILc/b/a/g/g;)Lc/b/a/g/c;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    .line 47
    :cond_1
    iget-object v1, v9, Lc/b/a/k;->m:Lc/b/a/k;

    iget-object v1, v1, Lc/b/a/k;->h:Lc/b/a/g/g;

    invoke-virtual {v1}, Lc/b/a/g/g;->j()I

    move-result v1

    .line 48
    iget-object v2, v9, Lc/b/a/k;->m:Lc/b/a/k;

    iget-object v2, v2, Lc/b/a/k;->h:Lc/b/a/g/g;

    invoke-virtual {v2}, Lc/b/a/g/g;->i()I

    move-result v2

    .line 49
    invoke-static/range {p6 .. p7}, Lc/b/a/i/k;->b(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v9, Lc/b/a/k;->m:Lc/b/a/k;

    iget-object v3, v3, Lc/b/a/k;->h:Lc/b/a/g/g;

    .line 50
    invoke-virtual {v3}, Lc/b/a/g/g;->E()Z

    move-result v3

    if-nez v3, :cond_2

    .line 51
    invoke-virtual/range {p8 .. p8}, Lc/b/a/g/g;->j()I

    move-result v1

    .line 52
    invoke-virtual/range {p8 .. p8}, Lc/b/a/g/g;->i()I

    move-result v2

    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    .line 53
    iget-object v10, v9, Lc/b/a/k;->m:Lc/b/a/k;

    iget-object v14, v10, Lc/b/a/k;->i:Lc/b/a/o;

    iget-object v1, v10, Lc/b/a/k;->h:Lc/b/a/g/g;

    .line 54
    invoke-virtual {v1}, Lc/b/a/g/g;->q()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iget-object v2, v9, Lc/b/a/k;->m:Lc/b/a/k;

    iget-object v2, v2, Lc/b/a/k;->h:Lc/b/a/g/g;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v18, v2

    .line 55
    invoke-virtual/range {v10 .. v18}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;IILc/b/a/g/g;)Lc/b/a/g/c;

    move-result-object v1

    .line 56
    invoke-virtual {v3, v0, v1}, Lc/b/a/g/a;->a(Lc/b/a/g/c;Lc/b/a/g/c;)V

    return-object v3
.end method

.method public final a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;)Lc/b/a/g/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "TTranscodeType;>;",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;",
            "Lc/b/a/g/g;",
            ")",
            "Lc/b/a/g/c;"
        }
    .end annotation

    .line 39
    iget-object v4, p0, Lc/b/a/k;->i:Lc/b/a/o;

    .line 40
    invoke-virtual {p3}, Lc/b/a/g/g;->q()Lcom/bumptech/glide/Priority;

    move-result-object v5

    .line 41
    invoke-virtual {p3}, Lc/b/a/g/g;->j()I

    move-result v6

    .line 42
    invoke-virtual {p3}, Lc/b/a/g/g;->i()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    .line 43
    invoke-virtual/range {v0 .. v8}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;IILc/b/a/g/g;)Lc/b/a/g/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;II)Lc/b/a/g/c;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "TTranscodeType;>;",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;",
            "Lc/b/a/g/g;",
            "Lc/b/a/g/d;",
            "Lc/b/a/o<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lc/b/a/g/c;"
        }
    .end annotation

    move-object v0, p0

    .line 57
    iget-object v1, v0, Lc/b/a/k;->b:Landroid/content/Context;

    iget-object v2, v0, Lc/b/a/k;->g:Lc/b/a/g;

    iget-object v3, v0, Lc/b/a/k;->j:Ljava/lang/Object;

    iget-object v4, v0, Lc/b/a/k;->d:Ljava/lang/Class;

    iget-object v11, v0, Lc/b/a/k;->k:Ljava/util/List;

    .line 58
    invoke-virtual {v2}, Lc/b/a/g;->c()Lc/b/a/c/b/r;

    move-result-object v13

    .line 59
    invoke-virtual/range {p5 .. p5}, Lc/b/a/o;->a()Lc/b/a/g/b/c;

    move-result-object v14

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    .line 60
    invoke-static/range {v1 .. v14}, Lcom/bumptech/glide/request/SingleRequest;->b(Landroid/content/Context;Lc/b/a/g;Ljava/lang/Object;Ljava/lang/Class;Lc/b/a/g/g;IILcom/bumptech/glide/Priority;Lc/b/a/g/a/h;Lc/b/a/g/f;Ljava/util/List;Lc/b/a/g/d;Lc/b/a/c/b/r;Lc/b/a/g/b/c;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v1

    return-object v1
.end method

.method public a()Lc/b/a/g/g;
    .locals 2

    .line 3
    iget-object v0, p0, Lc/b/a/k;->e:Lc/b/a/g/g;

    iget-object v1, p0, Lc/b/a/k;->h:Lc/b/a/g/g;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public a(Landroid/net/Uri;)Lc/b/a/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lc/b/a/k;->b(Ljava/lang/Object;)Lc/b/a/k;

    return-object p0
.end method

.method public a(Lc/b/a/g/f;)Lc/b/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;)",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lc/b/a/k;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/a/k;->k:Ljava/util/List;

    .line 7
    :cond_0
    iget-object v0, p0, Lc/b/a/k;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public a(Lc/b/a/g/g;)Lc/b/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/g;",
            ")",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lc/b/a/k;->a()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->a(Lc/b/a/g/g;)Lc/b/a/g/g;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/k;->h:Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lc/b/a/k;)Lc/b/a/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/k<",
            "TTranscodeType;>;)",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lc/b/a/k;->l:Lc/b/a/k;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lc/b/a/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lc/b/a/k;->b(Ljava/lang/Object;)Lc/b/a/k;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lc/b/a/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lc/b/a/k;->b(Ljava/lang/Object;)Lc/b/a/k;

    return-object p0
.end method

.method public final a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 2

    .line 34
    sget-object v0, Lc/b/a/j;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/k;->h:Lc/b/a/g/g;

    invoke-virtual {v1}, Lc/b/a/g/g;->q()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 37
    :cond_2
    sget-object p1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 38
    :cond_3
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    return-object p1
.end method

.method public final a(Lc/b/a/g/g;Lc/b/a/g/c;)Z
    .locals 0

    .line 14
    invoke-virtual {p1}, Lc/b/a/g/g;->y()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lc/b/a/g/c;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;)Lc/b/a/g/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/b/a/g/a/h<",
            "TTranscodeType;>;>(TY;",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;",
            "Lc/b/a/g/g;",
            ")TY;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 6
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v0, p0, Lc/b/a/k;->p:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p3}, Lc/b/a/g/g;->a()Lc/b/a/g/g;

    move-result-object p3

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;)Lc/b/a/g/c;

    move-result-object p2

    .line 10
    invoke-interface {p1}, Lc/b/a/g/a/h;->getRequest()Lc/b/a/g/c;

    move-result-object v0

    .line 11
    invoke-interface {p2, v0}, Lc/b/a/g/c;->a(Lc/b/a/g/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0, p3, v0}, Lc/b/a/k;->a(Lc/b/a/g/g;Lc/b/a/g/c;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 13
    invoke-interface {p2}, Lc/b/a/g/c;->a()V

    .line 14
    invoke-static {v0}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v0

    check-cast p2, Lc/b/a/g/c;

    invoke-interface {p2}, Lc/b/a/g/c;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 15
    invoke-interface {v0}, Lc/b/a/g/c;->e()V

    :cond_0
    return-object p1

    .line 16
    :cond_1
    iget-object p3, p0, Lc/b/a/k;->c:Lc/b/a/n;

    invoke-virtual {p3, p1}, Lc/b/a/n;->a(Lc/b/a/g/a/h;)V

    .line 17
    invoke-interface {p1, p2}, Lc/b/a/g/a/h;->a(Lc/b/a/g/c;)V

    .line 18
    iget-object p3, p0, Lc/b/a/k;->c:Lc/b/a/n;

    invoke-virtual {p3, p1, p2}, Lc/b/a/n;->a(Lc/b/a/g/a/h;Lc/b/a/g/c;)V

    return-object p1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lc/b/a/g/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/g/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 20
    invoke-virtual {p0, v0, v0}, Lc/b/a/k;->a(II)Lc/b/a/g/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;IILc/b/a/g/g;)Lc/b/a/g/c;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/a/h<",
            "TTranscodeType;>;",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;",
            "Lc/b/a/g/d;",
            "Lc/b/a/o<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lc/b/a/g/g;",
            ")",
            "Lc/b/a/g/c;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v4, p3

    move-object/from16 v10, p5

    .line 21
    iget-object v0, v9, Lc/b/a/k;->l:Lc/b/a/k;

    if-eqz v0, :cond_4

    .line 22
    iget-boolean v1, v9, Lc/b/a/k;->q:Z

    if-nez v1, :cond_3

    .line 23
    iget-object v1, v0, Lc/b/a/k;->i:Lc/b/a/o;

    .line 24
    iget-boolean v0, v0, Lc/b/a/k;->o:Z

    if-eqz v0, :cond_0

    move-object/from16 v14, p4

    goto :goto_0

    :cond_0
    move-object v14, v1

    .line 25
    :goto_0
    iget-object v0, v9, Lc/b/a/k;->l:Lc/b/a/k;

    iget-object v0, v0, Lc/b/a/k;->h:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, v9, Lc/b/a/k;->l:Lc/b/a/k;

    iget-object v0, v0, Lc/b/a/k;->h:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->q()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v10}, Lc/b/a/k;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_1
    move-object v15, v0

    .line 27
    iget-object v0, v9, Lc/b/a/k;->l:Lc/b/a/k;

    iget-object v0, v0, Lc/b/a/k;->h:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->j()I

    move-result v0

    .line 28
    iget-object v1, v9, Lc/b/a/k;->l:Lc/b/a/k;

    iget-object v1, v1, Lc/b/a/k;->h:Lc/b/a/g/g;

    invoke-virtual {v1}, Lc/b/a/g/g;->i()I

    move-result v1

    .line 29
    invoke-static/range {p6 .. p7}, Lc/b/a/i/k;->b(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v9, Lc/b/a/k;->l:Lc/b/a/k;

    iget-object v2, v2, Lc/b/a/k;->h:Lc/b/a/g/g;

    .line 30
    invoke-virtual {v2}, Lc/b/a/g/g;->E()Z

    move-result v2

    if-nez v2, :cond_2

    .line 31
    invoke-virtual/range {p8 .. p8}, Lc/b/a/g/g;->j()I

    move-result v0

    .line 32
    invoke-virtual/range {p8 .. p8}, Lc/b/a/g/g;->i()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    .line 33
    new-instance v13, Lc/b/a/g/j;

    invoke-direct {v13, v4}, Lc/b/a/g/j;-><init>(Lc/b/a/g/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 34
    invoke-virtual/range {v0 .. v8}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;II)Lc/b/a/g/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v9, Lc/b/a/k;->q:Z

    .line 36
    iget-object v10, v9, Lc/b/a/k;->l:Lc/b/a/k;

    iget-object v1, v10, Lc/b/a/k;->h:Lc/b/a/g/g;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v2, v13

    move-object/from16 v18, v1

    .line 37
    invoke-virtual/range {v10 .. v18}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;IILc/b/a/g/g;)Lc/b/a/g/c;

    move-result-object v1

    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v9, Lc/b/a/k;->q:Z

    .line 39
    invoke-virtual {v2, v0, v1}, Lc/b/a/g/j;->a(Lc/b/a/g/c;Lc/b/a/g/c;)V

    return-object v2

    .line 40
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_4
    iget-object v0, v9, Lc/b/a/k;->n:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 42
    new-instance v11, Lc/b/a/g/j;

    invoke-direct {v11, v4}, Lc/b/a/g/j;-><init>(Lc/b/a/g/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 43
    invoke-virtual/range {v0 .. v8}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;II)Lc/b/a/g/c;

    move-result-object v12

    .line 44
    invoke-virtual/range {p8 .. p8}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    iget-object v1, v9, Lc/b/a/k;->n:Ljava/lang/Float;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lc/b/a/g/g;->a(F)Lc/b/a/g/g;

    move-result-object v3

    .line 46
    invoke-virtual {v9, v10}, Lc/b/a/k;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 47
    invoke-virtual/range {v0 .. v8}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;II)Lc/b/a/g/c;

    move-result-object v0

    .line 48
    invoke-virtual {v11, v12, v0}, Lc/b/a/g/j;->a(Lc/b/a/g/c;Lc/b/a/g/c;)V

    return-object v11

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 49
    invoke-virtual/range {v0 .. v8}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;Lc/b/a/g/g;Lc/b/a/g/d;Lc/b/a/o;Lcom/bumptech/glide/Priority;II)Lc/b/a/g/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lc/b/a/g/f;)Lc/b/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/g/f<",
            "TTranscodeType;>;)",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/b/a/k;->k:Ljava/util/List;

    .line 2
    invoke-virtual {p0, p1}, Lc/b/a/k;->a(Lc/b/a/g/f;)Lc/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lc/b/a/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lc/b/a/k;->j:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lc/b/a/k;->p:Z

    return-object p0
.end method

.method public clone()Lc/b/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/k<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/k;

    .line 3
    iget-object v1, v0, Lc/b/a/k;->h:Lc/b/a/g/g;

    invoke-virtual {v1}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v1

    iput-object v1, v0, Lc/b/a/k;->h:Lc/b/a/g/g;

    .line 4
    iget-object v1, v0, Lc/b/a/k;->i:Lc/b/a/o;

    invoke-virtual {v1}, Lc/b/a/o;->clone()Lc/b/a/o;

    move-result-object v1

    iput-object v1, v0, Lc/b/a/k;->i:Lc/b/a/o;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/k;->clone()Lc/b/a/k;

    move-result-object v0

    return-object v0
.end method
