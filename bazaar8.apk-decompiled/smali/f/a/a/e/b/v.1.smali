.class public Lf/a/a/e/b/v;
.super Ljava/lang/Object;
.source "ListInflater.java"

# interfaces
.implements Lf/a/a/e/b/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/y;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Lf/a/a/g/e/b;

.field public final synthetic c:Lf/a/a/g/e/c;

.field public final synthetic d:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic e:Lf/a/a/e/b/y;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/y;Lf/a/a/e/g;Lf/a/a/g/e/b;Lf/a/a/g/e/c;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    iput-object p2, p0, Lf/a/a/e/b/v;->a:Lf/a/a/e/g;

    iput-object p3, p0, Lf/a/a/e/b/v;->b:Lf/a/a/g/e/b;

    iput-object p4, p0, Lf/a/a/e/b/v;->c:Lf/a/a/g/e/c;

    iput-object p5, p0, Lf/a/a/e/b/v;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {v0}, Lf/a/a/e/b/y;->a(Lf/a/a/e/b/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {v0}, Lf/a/a/e/b/y;->b(Lf/a/a/e/b/y;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {v0}, Lf/a/a/e/b/y;->a(Lf/a/a/e/b/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {v1}, Lf/a/a/e/b/y;->b(Lf/a/a/e/b/y;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lf/a/a/c/b/b;

    iget-object v2, p0, Lf/a/a/e/b/v;->a:Lf/a/a/e/g;

    invoke-interface {v2}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    iget-object v3, p0, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {v3}, Lf/a/a/e/b/y;->d(Lf/a/a/e/b/y;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lf/a/a/e/b/u;

    invoke-direct {v0, p0}, Lf/a/a/e/b/u;-><init>(Lf/a/a/e/b/v;)V

    invoke-virtual {v1, v0}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    :cond_0
    return-void
.end method
