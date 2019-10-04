.class public Lf/a/a/g/d/g;
.super Lf/a/a/g/d/h;
.source "FwdActionCallListener.java"


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/d/h;-><init>(Lf/a/a/e/g;)V

    .line 2
    iput-object p2, p0, Lf/a/a/g/d/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/g/d/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-super {p0, p1}, Lf/a/a/g/d/h;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lf/a/a/g/d/d;->g()Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lf/a/a/g/d/d;->h()V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_0
    new-instance v0, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    iget-object v1, p0, Lf/a/a/g/d/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lf/a/a/g/d/d;->a(Lir/cafebazaar/inline/ux/flow/FlowSnapshot;)V

    :cond_1
    return-void
.end method
