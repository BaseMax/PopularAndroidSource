.class public Lf/a/a/c/b/f;
.super Ljava/lang/Object;
.source "CachedAPICallHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/c/b/g;->a(Lf/a/a/c/b/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/c/b/o$a;

.field public final synthetic b:Lf/a/a/c/b/g;


# direct methods
.method public constructor <init>(Lf/a/a/c/b/g;Lf/a/a/c/b/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/b/f;->b:Lf/a/a/c/b/g;

    iput-object p2, p0, Lf/a/a/c/b/f;->a:Lf/a/a/c/b/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/c/b/f;->b:Lf/a/a/c/b/g;

    iget-object v1, p0, Lf/a/a/c/b/f;->a:Lf/a/a/c/b/o$a;

    invoke-static {v0, v1}, Lf/a/a/c/b/g;->c(Lf/a/a/c/b/g;Lf/a/a/c/b/o$a;)V

    return-void
.end method
