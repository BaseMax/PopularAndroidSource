.class public Lc/b/a/c/b/a;
.super Ljava/lang/Object;
.source "ActiveResources.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/c;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/c/b/a;->a:Lc/b/a/c/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/c/b/a;->a:Lc/b/a/c/b/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/b/c$b;

    invoke-virtual {v0, p1}, Lc/b/a/c/b/c;->a(Lc/b/a/c/b/c$b;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
