.class public Lc/e/a/c/k/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/c/k/e;->b(Lc/e/a/c/k/e$d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc/e/a/c/k/e$d;

.field public final synthetic c:Lc/e/a/c/k/e;


# direct methods
.method public constructor <init>(Lc/e/a/c/k/e;ZLc/e/a/c/k/e$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/k/c;->c:Lc/e/a/c/k/e;

    iput-boolean p2, p0, Lc/e/a/c/k/c;->a:Z

    iput-object p3, p0, Lc/e/a/c/k/c;->b:Lc/e/a/c/k/e$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/e/a/c/k/c;->c:Lc/e/a/c/k/e;

    const/4 v0, 0x0

    iput v0, p1, Lc/e/a/c/k/e;->h:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lc/e/a/c/k/e;->i:Landroid/animation/Animator;

    .line 3
    iget-object p1, p0, Lc/e/a/c/k/c;->b:Lc/e/a/c/k/e$d;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lc/e/a/c/k/e$d;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/c;->c:Lc/e/a/c/k/e;

    iget-object v0, v0, Lc/e/a/c/k/e;->B:Lc/e/a/c/l/r;

    iget-boolean v1, p0, Lc/e/a/c/k/c;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lc/e/a/c/l/r;->a(IZ)V

    .line 2
    iget-object v0, p0, Lc/e/a/c/k/c;->c:Lc/e/a/c/k/e;

    const/4 v1, 0x2

    iput v1, v0, Lc/e/a/c/k/e;->h:I

    .line 3
    iput-object p1, v0, Lc/e/a/c/k/e;->i:Landroid/animation/Animator;

    return-void
.end method
