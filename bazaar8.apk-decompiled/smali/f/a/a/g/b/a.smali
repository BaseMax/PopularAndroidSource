.class public Lf/a/a/g/b/a;
.super Ljava/lang/Object;
.source "InlineAudioManager.java"


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/media/session/MediaControllerCompat$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lf/a/a/g/b/a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/MediaControllerCompat$a;
    .locals 2

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/a;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lf/a/a/g/b/a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lf/a/a/g/b/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lf/a/a/g/b/a;->b:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/Integer;Landroid/support/v4/media/session/MediaControllerCompat$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lf/a/a/g/b/a;->b:Ljava/lang/Integer;

    return-void
.end method
