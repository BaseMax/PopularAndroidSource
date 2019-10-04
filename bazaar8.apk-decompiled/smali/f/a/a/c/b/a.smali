.class public Lf/a/a/c/b/a;
.super Ljava/lang/Object;
.source "APICallHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/c/b/o$a;

.field public final synthetic b:Lf/a/a/c/b/b;


# direct methods
.method public constructor <init>(Lf/a/a/c/b/b;Lf/a/a/c/b/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/b/a;->b:Lf/a/a/c/b/b;

    iput-object p2, p0, Lf/a/a/c/b/a;->a:Lf/a/a/c/b/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/c/b/a;->b:Lf/a/a/c/b/b;

    iget-object v1, p0, Lf/a/a/c/b/a;->a:Lf/a/a/c/b/o$a;

    invoke-static {v0, v1}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/b;Lf/a/a/c/b/o$a;)V

    return-void
.end method
