.class public abstract Lf/a/a/g/c;
.super Ljava/lang/Object;
.source "InlineDialog.java"


# instance fields
.field public a:Lb/b/a/l;

.field public b:Lf/a/a/e/g;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/c;->b:Lf/a/a/e/g;

    return-void
.end method


# virtual methods
.method public abstract a()Lb/b/a/l;
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->d()Lb/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public c()Lf/a/a/e/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/c;->b:Lf/a/a/e/g;

    return-object v0
.end method

.method public d()Lb/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/c;->a:Lb/b/a/l;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/a/a/g/c;->a:Lb/b/a/l;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lf/a/a/g/c;->a()Lb/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/c;->a:Lb/b/a/l;

    .line 4
    iget-object v0, p0, Lf/a/a/g/c;->a:Lb/b/a/l;

    new-instance v1, Lf/a/a/g/b;

    invoke-direct {v1, p0}, Lf/a/a/g/b;-><init>(Lf/a/a/g/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->b()V

    .line 7
    iget-object v0, p0, Lf/a/a/g/c;->a:Lb/b/a/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
