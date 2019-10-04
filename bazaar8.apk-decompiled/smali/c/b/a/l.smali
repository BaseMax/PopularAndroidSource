.class public Lc/b/a/l;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/n;


# direct methods
.method public constructor <init>(Lc/b/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/l;->a:Lc/b/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/l;->a:Lc/b/a/n;

    iget-object v1, v0, Lc/b/a/n;->f:Lc/b/a/d/i;

    invoke-interface {v1, v0}, Lc/b/a/d/i;->a(Lc/b/a/d/j;)V

    return-void
.end method
