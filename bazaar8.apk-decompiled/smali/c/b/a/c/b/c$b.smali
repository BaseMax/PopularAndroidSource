.class public final Lc/b/a/c/b/c$b;
.super Ljava/lang/ref/WeakReference;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lc/b/a/c/b/x<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/c;

.field public final b:Z

.field public c:Lc/b/a/c/b/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/D<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/c/c;Lc/b/a/c/b/x;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/b/x<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lc/b/a/c/b/x<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/c;

    iput-object p1, p0, Lc/b/a/c/b/c$b;->a:Lc/b/a/c/c;

    .line 3
    invoke-virtual {p2}, Lc/b/a/c/b/x;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p2}, Lc/b/a/c/b/x;->e()Lc/b/a/c/b/D;

    move-result-object p1

    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/b/D;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc/b/a/c/b/c$b;->c:Lc/b/a/c/b/D;

    .line 5
    invoke-virtual {p2}, Lc/b/a/c/b/x;->f()Z

    move-result p1

    iput-boolean p1, p0, Lc/b/a/c/b/c$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/b/a/c/b/c$b;->c:Lc/b/a/c/b/D;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
