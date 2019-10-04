.class public Lf/a/a/c/b/h;
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

.field public final synthetic b:Lf/a/a/c/b/o;


# direct methods
.method public constructor <init>(Lf/a/a/c/b/o;Lf/a/a/c/b/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/b/h;->b:Lf/a/a/c/b/o;

    iput-object p2, p0, Lf/a/a/c/b/h;->a:Lf/a/a/c/b/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/c/b/h;->a:Lf/a/a/c/b/o$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lf/a/a/c/e;->a()V

    :cond_0
    return-void
.end method
