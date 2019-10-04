.class public Lc/f/a/s;
.super Lc/f/a/a;
.source "FetchAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/f/a/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/Object;

.field public n:Lc/f/a/l;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lc/f/a/G;IILjava/lang/Object;Ljava/lang/String;Lc/f/a/l;)V
    .locals 12

    move-object v11, p0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lc/f/a/a;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lc/f/a/G;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v11, Lc/f/a/s;->m:Ljava/lang/Object;

    move-object/from16 v0, p7

    .line 3
    iput-object v0, v11, Lc/f/a/s;->n:Lc/f/a/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    invoke-super {p0}, Lc/f/a/a;->a()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc/f/a/s;->n:Lc/f/a/l;

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/f/a/s;->n:Lc/f/a/l;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lc/f/a/l;->onSuccess()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/f/a/s;->n:Lc/f/a/l;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lc/f/a/l;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public i()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/s;->m:Ljava/lang/Object;

    return-object v0
.end method
