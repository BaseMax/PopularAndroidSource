.class public Lb/b/a/B;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Lb/b/a/n;


# instance fields
.field public a:Lb/b/a/o;

.field public final b:Lb/i/k/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lb/b/a/B;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lb/b/a/A;

    invoke-direct {v0, p0}, Lb/b/a/A;-><init>(Lb/b/a/B;)V

    iput-object v0, p0, Lb/b/a/B;->b:Lb/i/k/d$a;

    .line 3
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    .line 4
    invoke-static {p1, p2}, Lb/b/a/B;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lb/b/a/o;->d(I)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lb/b/a;->dialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 7
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    return p1
.end method


# virtual methods
.method public a()Lb/b/a/o;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/a/B;->a:Lb/b/a/o;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0, p0}, Lb/b/a/o;->a(Landroid/app/Dialog;Lb/b/a/n;)Lb/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/B;->a:Lb/b/a/o;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/b/a/B;->a:Lb/b/a/o;

    return-object v0
.end method

.method public a(Lb/b/f/b$a;)Lb/b/f/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lb/b/f/b;)V
    .locals 0

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->b(I)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/o;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lb/b/f/b;)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/b/a/B;->b:Lb/i/k/d$a;

    invoke-static {v1, v0, p0, p1}, Lb/i/k/d;->a(Lb/i/k/d$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->f()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->e()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/o;->j()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/o;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lb/b/a/B;->a()Lb/b/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/o;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
