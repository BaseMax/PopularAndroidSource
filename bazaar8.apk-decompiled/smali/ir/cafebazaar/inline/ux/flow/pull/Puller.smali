.class public Lir/cafebazaar/inline/ux/flow/pull/Puller;
.super Ljava/lang/Object;
.source "Puller.java"

# interfaces
.implements Lf/a/a/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;,
        Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;,
        Lir/cafebazaar/inline/ux/flow/pull/Puller$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

.field public e:Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->c:Ljava/lang/String;

    .line 4
    sget-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->medium:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    iput-object v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    .line 5
    sget-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->once:Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->f()Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->e:Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->f:Z

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ux/flow/pull/Puller;)I
    .locals 0

    .line 1
    iget p0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->b:I

    return p0
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ux/flow/pull/Puller;I)I
    .locals 0

    .line 2
    iput p1, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->b:I

    return p1
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ux/flow/pull/Puller;Landroid/os/Handler;Lf/a/a/e/g;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Landroid/os/Handler;Lf/a/a/e/g;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lir/cafebazaar/inline/ux/flow/pull/Puller;)I
    .locals 2

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->b:I

    return v0
.end method

.method public static synthetic c(Lir/cafebazaar/inline/ux/flow/pull/Puller;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->f:Z

    return p0
.end method

.method public static synthetic d(Lir/cafebazaar/inline/ux/flow/pull/Puller;)Lir/cafebazaar/inline/ux/flow/pull/Puller$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->e:Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

    return-object p0
.end method

.method public static synthetic e(Lir/cafebazaar/inline/ux/flow/pull/Puller;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->f:Z

    return-void
.end method

.method public final a(Landroid/os/Handler;Lf/a/a/e/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Landroid/os/Handler;Lf/a/a/e/g;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lf/a/a/e/g;Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance v0, Lf/a/a/g/d/b/c;

    invoke-direct {v0, p0, p3, p2, p1}, Lf/a/a/g/d/b/c;-><init>(Lir/cafebazaar/inline/ux/flow/pull/Puller;Ljava/lang/String;Lf/a/a/e/g;Landroid/os/Handler;)V

    iget-object p2, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    .line 14
    invoke-virtual {p2}, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->f()I

    move-result p2

    int-to-long p2, p2

    .line 15
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lf/a/a/e/g;)V
    .locals 2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->f:Z

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0, p1}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Landroid/os/Handler;Lf/a/a/e/g;)V

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->f()Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/flow/pull/Puller;->a(Lir/cafebazaar/inline/ux/flow/pull/Puller$a;)V

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->d:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/flow/pull/Puller$a;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->e:Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller;->c:Ljava/lang/String;

    return-void
.end method
