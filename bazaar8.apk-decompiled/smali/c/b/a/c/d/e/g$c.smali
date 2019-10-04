.class public Lc/b/a/c/d/e/g$c;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/d/e/g;


# direct methods
.method public constructor <init>(Lc/b/a/c/d/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/c/d/e/g$c;->a:Lc/b/a/c/d/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/d/e/g$a;

    .line 3
    iget-object v0, p0, Lc/b/a/c/d/e/g$c;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0, p1}, Lc/b/a/c/d/e/g;->a(Lc/b/a/c/d/e/g$a;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/d/e/g$a;

    .line 5
    iget-object v0, p0, Lc/b/a/c/d/e/g$c;->a:Lc/b/a/c/d/e/g;

    iget-object v0, v0, Lc/b/a/c/d/e/g;->d:Lc/b/a/n;

    invoke-virtual {v0, p1}, Lc/b/a/n;->a(Lc/b/a/g/a/h;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
