.class public Lf/a/a/c/b/n;
.super Ljava/lang/Object;
.source "SyncAPICallHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/c/b/o;->a(Lf/a/a/c/b/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/c/b/o$a;

.field public final synthetic b:Ljava/lang/Exception;

.field public final synthetic c:Lf/a/a/c/b/o;


# direct methods
.method public constructor <init>(Lf/a/a/c/b/o;Lf/a/a/c/b/o$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/b/n;->c:Lf/a/a/c/b/o;

    iput-object p2, p0, Lf/a/a/c/b/n;->a:Lf/a/a/c/b/o$a;

    iput-object p3, p0, Lf/a/a/c/b/n;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/c/b/n;->a:Lf/a/a/c/b/o$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    iget-object v2, p0, Lf/a/a/c/b/n;->b:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lf/a/a/c/e;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
