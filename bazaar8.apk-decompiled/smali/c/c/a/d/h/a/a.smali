.class public final Lc/c/a/d/h/a/a;
.super Ljava/lang/Object;
.source "CustomTabsActivityLifecycleCallbacks.kt"

# interfaces
.implements Lc/c/a/d/g/a/a$a;


# instance fields
.field public a:Lc/c/a/d/h/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    iget-object p2, p0, Lc/c/a/d/h/a/a;->a:Lc/c/a/d/h/a/c;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lc/c/a/d/h/a/c;->a(Landroid/app/Activity;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/a/a;->a:Lc/c/a/d/h/a/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lc/c/a/d/h/a/c;->b(Landroid/app/Activity;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
