.class public abstract Lf/a/a/g/d/a;
.super Ljava/lang/Object;
.source "ActionCallListener.java"

# interfaces
.implements Lf/a/a/c/b/o$a;


# instance fields
.field public a:Lf/a/a/e/g;

.field public b:Lf/a/a/e/m;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/d/a;->a:Lf/a/a/e/g;

    .line 3
    new-instance v0, Lf/a/a/e/m;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/a/a/e/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    new-instance v0, Lf/a/a/e/j;

    iget-object v1, p0, Lf/a/a/g/d/a;->a:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/g/d/a;->a:Lf/a/a/e/g;

    .line 6
    invoke-interface {v2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lf/a/a/c/d;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lf/a/a/g/d/a;->a:Lf/a/a/e/g;

    .line 7
    invoke-interface {v3}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lf/a/a/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, p2}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lf/a/a/g/c;->f()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lf/a/a/g/d/a;->a:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public b()Lf/a/a/e/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/a;->a:Lf/a/a/e/g;

    return-object v0
.end method
