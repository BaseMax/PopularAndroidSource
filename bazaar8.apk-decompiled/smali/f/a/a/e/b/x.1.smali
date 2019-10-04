.class public Lf/a/a/e/b/x;
.super Ljava/lang/Object;
.source "ListInflater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/y;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/e/b;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic c:Lf/a/a/e/g;

.field public final synthetic d:Lf/a/a/e/b/y$a;

.field public final synthetic e:Lf/a/a/e/b/y;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/y;Lf/a/a/g/e/b;Landroidx/recyclerview/widget/RecyclerView;Lf/a/a/e/g;Lf/a/a/e/b/y$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/x;->e:Lf/a/a/e/b/y;

    iput-object p2, p0, Lf/a/a/e/b/x;->a:Lf/a/a/g/e/b;

    iput-object p3, p0, Lf/a/a/e/b/x;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lf/a/a/e/b/x;->c:Lf/a/a/e/g;

    iput-object p5, p0, Lf/a/a/e/b/x;->d:Lf/a/a/e/b/y$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/x;->a:Lf/a/a/g/e/b;

    iget-object v1, p0, Lf/a/a/e/b/x;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lf/a/a/g/e/b;->c(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    new-instance v1, Lf/a/a/e/b/w;

    invoke-direct {v1, p0}, Lf/a/a/e/b/w;-><init>(Lf/a/a/e/b/x;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    return-void
.end method
