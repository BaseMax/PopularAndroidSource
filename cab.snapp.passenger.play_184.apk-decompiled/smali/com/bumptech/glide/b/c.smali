.class public final Lcom/bumptech/glide/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST:I = -0x1

.field public static final NETSCAPE_LOOP_COUNT_FOREVER:I


# instance fields
.field a:[I

.field b:I

.field c:I

.field d:Lcom/bumptech/glide/b/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/b/b;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/b/c;->a:[I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/bumptech/glide/b/c;->b:I

    .line 26
    iput v0, p0, Lcom/bumptech/glide/b/c;->c:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/bumptech/glide/b/c;->m:I

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/bumptech/glide/b/c;->g:I

    return v0
.end method

.method public final getNumFrames()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/bumptech/glide/b/c;->c:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/bumptech/glide/b/c;->b:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/bumptech/glide/b/c;->f:I

    return v0
.end method
