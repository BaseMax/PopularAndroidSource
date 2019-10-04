.class public final Lcom/bumptech/glide/e/a/f;
.super Lcom/bumptech/glide/e/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e/a/g<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final b:Landroid/os/Handler;


# instance fields
.field final a:Lcom/bumptech/glide/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/e/a/f$1;

    invoke-direct {v2}, Lcom/bumptech/glide/e/a/f$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/e/a/f;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/h;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/e/a/g;-><init>(II)V

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/e/a/f;->a:Lcom/bumptech/glide/h;

    return-void
.end method

.method public static obtain(Lcom/bumptech/glide/h;II)Lcom/bumptech/glide/e/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "II)",
            "Lcom/bumptech/glide/e/a/f<",
            "TZ;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/bumptech/glide/e/a/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/e/a/f;-><init>(Lcom/bumptech/glide/h;II)V

    return-object v0
.end method


# virtual methods
.method public final onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/e/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/e/b/b<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 52
    sget-object p1, Lcom/bumptech/glide/e/a/f;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
