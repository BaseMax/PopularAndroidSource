.class public Lc/b/a/c/d/e/g$a;
.super Lc/b/a/g/a/f;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/g/a/f<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Landroid/os/Handler;

.field public final e:I

.field public final f:J

.field public g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/g/a/f;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/e/g$a;->d:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lc/b/a/c/d/e/g$a;->e:I

    .line 4
    iput-wide p3, p0, Lc/b/a/c/d/e/g$a;->f:J

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lc/b/a/g/b/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc/b/a/g/b/b<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lc/b/a/c/d/e/g$a;->g:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lc/b/a/c/d/e/g$a;->d:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lc/b/a/c/d/e/g$a;->d:Landroid/os/Handler;

    iget-wide v0, p0, Lc/b/a/c/d/e/g$a;->f:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/b/a/g/b/b;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/d/e/g$a;->a(Landroid/graphics/Bitmap;Lc/b/a/g/b/b;)V

    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/g$a;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method
