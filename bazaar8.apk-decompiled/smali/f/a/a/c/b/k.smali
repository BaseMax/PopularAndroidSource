.class public Lf/a/a/c/b/k;
.super Ljava/lang/Object;
.source "SyncAPICallHandler.java"

# interfaces
.implements Lf/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/c/b/o;->a(Lf/a/a/c/b/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/a/a/c/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lf/a/a/c/b/o$a;

.field public final synthetic c:Lf/a/a/c/b/o;


# direct methods
.method public constructor <init>(Lf/a/a/c/b/o;JLf/a/a/c/b/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/b/k;->c:Lf/a/a/c/b/o;

    iput-wide p2, p0, Lf/a/a/c/b/k;->a:J

    iput-object p4, p0, Lf/a/a/c/b/k;->b:Lf/a/a/c/b/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/c/b/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lf/a/a/c/b/j;

    invoke-direct {v1, p0, p1}, Lf/a/a/c/b/j;-><init>(Lf/a/a/c/b/k;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "response"

    .line 1
    invoke-static {v0}, Lf/a/a/c/b/o;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lf/a/a/c/b/i;

    invoke-direct {v1, p0, p1}, Lf/a/a/c/b/i;-><init>(Lf/a/a/c/b/k;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
