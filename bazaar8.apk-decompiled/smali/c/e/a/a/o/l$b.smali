.class public final Lc/e/a/a/o/l$b;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/o/l$b;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lc/e/a/a/o/l$b;->b:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/o/l$b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/o/l$b;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/o/l$b;->c:Z

    return-void
.end method

.method public a(Lc/e/a/a/o/l$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/o/l$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/e/a/a/o/l$b;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/o/a;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/o/a;-><init>(Lc/e/a/a/o/l$b;Lc/e/a/a/o/l$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic b(Lc/e/a/a/o/l$a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/o/l$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/o/l$b;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lc/e/a/a/o/l$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
