.class public Lc/b/a/c/b/b;
.super Ljava/lang/Object;
.source "ActiveResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/c;->b()Ljava/lang/ref/ReferenceQueue;
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
    iput-object p1, p0, Lc/b/a/c/b/b;->a:Lc/b/a/c/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object v0, p0, Lc/b/a/c/b/b;->a:Lc/b/a/c/b/c;

    invoke-virtual {v0}, Lc/b/a/c/b/c;->a()V

    return-void
.end method
