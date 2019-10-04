.class public Lc/b/a/i;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/k;->a(II)Lc/b/a/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/g/e;

.field public final synthetic b:Lc/b/a/k;


# direct methods
.method public constructor <init>(Lc/b/a/k;Lc/b/a/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/i;->b:Lc/b/a/k;

    iput-object p2, p0, Lc/b/a/i;->a:Lc/b/a/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/i;->a:Lc/b/a/g/e;

    invoke-virtual {v0}, Lc/b/a/g/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/i;->b:Lc/b/a/k;

    iget-object v1, p0, Lc/b/a/i;->a:Lc/b/a/g/e;

    invoke-virtual {v0, v1, v1}, Lc/b/a/k;->a(Lc/b/a/g/a/h;Lc/b/a/g/f;)Lc/b/a/g/a/h;

    :cond_0
    return-void
.end method
