.class public Lf/a/a/g/d/d;
.super Ljava/lang/Object;
.source "BackStackManager.java"

# interfaces
.implements Lf/a/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/g/d/d$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lf/a/a/g/d/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lir/cafebazaar/inline/ux/flow/FlowSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lf/a/a/e/g;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lf/a/a/g/d/d;->a:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lf/a/a/g/d/d;->c:I

    .line 5
    iput-object p1, p0, Lf/a/a/g/d/d;->d:Lf/a/a/e/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 9
    iget v0, p0, Lf/a/a/g/d/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/a/a/g/d/d;->c:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "flowBackStack"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/flow/FlowSnapshot;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lf/a/a/g/d/d;->d:Lf/a/a/e/g;

    invoke-static {v0, p1}, Lf/a/a/e/l;->a(Lf/a/a/e/g;Ljava/lang/String;)Lf/a/a/e/l;

    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lf/a/a/g/d/d;->d:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object v0

    sget v1, Lf/a/a/e;->container:I

    .line 6
    invoke-virtual {v0, v1, p1}, Lb/o/a/C;->b(ILandroidx/fragment/app/Fragment;)Lb/o/a/C;

    .line 7
    invoke-virtual {v0}, Lb/o/a/C;->a()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/g/d/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/a/a/g/d/d;->c:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "flowBackStack"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lir/cafebazaar/inline/ui/InlineActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/g/d/d;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/d;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/d;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/d/d$a;

    invoke-interface {v0}, Lf/a/a/g/d/d$a;->m()V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/a/a/g/d/d;->d:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lf/a/a/g/d/d;->d:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v0

    new-instance v2, Lf/a/a/g/d/a/d;

    invoke-direct {v2}, Lf/a/a/g/d/a/d;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public g()Lir/cafebazaar/inline/ux/flow/FlowSnapshot;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    .line 3
    iget-object v1, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    .line 4
    iget-object v2, p0, Lf/a/a/g/d/d;->b:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    sget-object v0, Lir/cafebazaar/inline/ui/InlineActivity;->q:Ljava/lang/String;

    return-object v0
.end method
