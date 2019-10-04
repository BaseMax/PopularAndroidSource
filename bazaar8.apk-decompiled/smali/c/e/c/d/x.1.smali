.class public final Lc/e/c/d/x;
.super Lc/e/a/b/g/e/e;


# instance fields
.field public final synthetic a:Lc/e/c/d/u;


# direct methods
.method public constructor <init>(Lc/e/c/d/u;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/c/d/x;->a:Lc/e/c/d/u;

    invoke-direct {p0, p2}, Lc/e/a/b/g/e/e;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/c/d/x;->a:Lc/e/c/d/u;

    invoke-static {v0, p1}, Lc/e/c/d/u;->a(Lc/e/c/d/u;Landroid/os/Message;)V

    return-void
.end method
