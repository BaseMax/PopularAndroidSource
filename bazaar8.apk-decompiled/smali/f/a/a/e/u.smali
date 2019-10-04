.class public Lf/a/a/e/u;
.super Ljava/lang/Object;
.source "SplashPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/v;->Ma()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/v;


# direct methods
.method public constructor <init>(Lf/a/a/e/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/u;->a:Lf/a/a/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/u;->a:Lf/a/a/e/v;

    invoke-static {v0}, Lf/a/a/e/v;->a(Lf/a/a/e/v;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/a/a/e/u;->a:Lf/a/a/e/v;

    invoke-virtual {v0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lf/a/a/e/u;->a:Lf/a/a/e/v;

    invoke-virtual {v0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/u;->a:Lf/a/a/e/v;

    invoke-static {v1}, Lf/a/a/e/v;->b(Lf/a/a/e/v;)Lf/a/a/g/d/a/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lf/a/a/e/u;->a:Lf/a/a/e/v;

    invoke-static {v0}, Lf/a/a/e/v;->c(Lf/a/a/e/v;)V

    :goto_0
    return-void
.end method
