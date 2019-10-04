.class public final Lc/c/a/d/d/e;
.super Ljava/lang/Object;
.source "NetworkManager.kt"

# interfaces
.implements Lc/c/a/e/d/i/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/d/e$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/d/d/e$a;


# instance fields
.field public final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/d/d/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/d/d/e$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/d/d/e;->a:Lc/c/a/d/d/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/d/d/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Li/a/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lc/c/a/d/e/a;->c:Lc/c/a/d/e/a;

    invoke-virtual {v0}, Lc/c/a/d/e/a;->b()Li/a/b/t;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lc/c/a/d/e/b;->b:Lc/c/a/d/e/b$a;

    invoke-virtual {v0}, Lc/c/a/d/e/b$a;->a()Li/a/b/t;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lc/c/a/d/d/b;->b:Lc/c/a/d/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/d/d/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc/c/a/d/d/b;->b:Lc/c/a/d/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/d/d/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/d/d/e;->a:Lc/c/a/d/d/e$a;

    iget-object v1, p0, Lc/c/a/d/d/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc/c/a/d/d/e$a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
