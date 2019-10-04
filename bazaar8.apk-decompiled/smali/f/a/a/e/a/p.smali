.class public abstract Lf/a/a/e/a/p;
.super Ljava/lang/Object;
.source "ViewChanger.java"

# interfaces
.implements Lf/a/a/d/a;


# instance fields
.field public a:Lf/a/a/e/a/q;

.field public b:Lf/a/a/e/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lf/a/a/e/a/p;->b()Lf/a/a/e/a/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/a/a/e/a/q;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()Lf/a/a/e/a/a/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/e/a/p;->b:Lf/a/a/e/a/a/a;

    return-object v0
.end method

.method public a(Landroid/view/View;Lf/a/a/e/g;)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Lf/a/a/e/a/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lf/a/a/e/a/p;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lf/a/a/e/a/p;->a()Lf/a/a/e/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p0, p1, p2}, Lf/a/a/e/a/a/a;->a(Lf/a/a/e/a/p;Landroid/view/View;Lf/a/a/e/g;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lf/a/a/e/a/p;->b(Landroid/view/View;Lf/a/a/e/g;)V
    :try_end_0
    .catch Lir/cafebazaar/inline/ui/changers/exceptions/ViewNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lir/cafebazaar/inline/ui/changers/exceptions/UnchangeablePropertyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 12
    new-instance v0, Lf/a/a/e/j;

    invoke-interface {p2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    sget v2, Lf/a/a/g;->error_general:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-interface {p2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    sget v3, Lf/a/a/g;->error_try_again_later:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, v1, v2, p1}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lf/a/a/e/a/a/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lf/a/a/e/a/p;->b:Lf/a/a/e/a/a/a;

    return-void
.end method

.method public a(Lf/a/a/e/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/p;->a:Lf/a/a/e/a/q;

    return-void
.end method

.method public b()Lf/a/a/e/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/p;->a:Lf/a/a/e/a/q;

    return-object v0
.end method

.method public abstract b(Landroid/view/View;Lf/a/a/e/g;)V
.end method

.method public abstract c()Z
.end method
