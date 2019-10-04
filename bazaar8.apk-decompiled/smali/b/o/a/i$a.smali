.class public Lb/o/a/i$a;
.super Lb/o/a/m;
.source "FragmentActivity.java"

# interfaces
.implements Lb/r/I;
.implements Lb/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/o/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/o/a/m<",
        "Lb/o/a/i;",
        ">;",
        "Lb/r/I;",
        "Lb/a/g;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lb/o/a/i;


# direct methods
.method public constructor <init>(Lb/o/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    .line 2
    invoke-direct {p0, p1}, Lb/o/a/m;-><init>(Lb/o/a/i;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 7
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0, p1}, Lb/o/a/i;->b(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/o/a/i;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 3
    iget-object v1, v0, Lb/o/a/i$a;->f:Lb/o/a/i;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lb/o/a/i;->a(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lb/o/a/i;->a(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/o/a/i;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-static {v0, p1}, Lb/i/a/b;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    iget-object v0, v0, Lb/o/a/i;->h:Lb/r/m;

    return-object v0
.end method

.method public b(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 2
    iget-object p1, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0}, Lb/a/c;->c()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public e()Lb/r/H;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0}, Lb/a/c;->e()Lb/r/H;

    move-result-object v0

    return-object v0
.end method

.method public h()Lb/o/a/i;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/o/a/i$a;->h()Lb/o/a/i;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/i$a;->f:Lb/o/a/i;

    invoke-virtual {v0}, Lb/o/a/i;->u()V

    return-void
.end method
