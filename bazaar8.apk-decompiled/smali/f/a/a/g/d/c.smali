.class public Lf/a/a/g/d/c;
.super Lf/a/a/g/d/h;
.source "BackActionCallListener.java"


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/d/h;-><init>(Lf/a/a/e/g;)V

    .line 2
    iget-object p1, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v2

    invoke-interface {v2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lf/a/a/c/d;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v2

    invoke-interface {v2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lf/a/a/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/InlineActivity;->a(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/g/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Lf/a/a/g/d/h;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/a/g/d/d;->h()V

    :cond_0
    return-void
.end method
