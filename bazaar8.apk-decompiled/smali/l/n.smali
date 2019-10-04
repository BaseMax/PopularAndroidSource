.class public Ll/n;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/p;->a(Ll/b;Ll/D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll/D;

.field public final synthetic b:Ll/p;


# direct methods
.method public constructor <init>(Ll/p;Ll/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/n;->b:Ll/p;

    iput-object p2, p0, Ll/n;->a:Ll/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/n;->b:Ll/p;

    iget-object v0, v0, Ll/p;->b:Ll/q$a;

    iget-object v0, v0, Ll/q$a;->b:Ll/b;

    invoke-interface {v0}, Ll/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ll/n;->b:Ll/p;

    iget-object v1, v0, Ll/p;->a:Ll/d;

    iget-object v0, v0, Ll/p;->b:Ll/q$a;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ll/d;->a(Ll/b;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ll/n;->b:Ll/p;

    iget-object v1, v0, Ll/p;->a:Ll/d;

    iget-object v0, v0, Ll/p;->b:Ll/q$a;

    iget-object v2, p0, Ll/n;->a:Ll/D;

    invoke-interface {v1, v0, v2}, Ll/d;->a(Ll/b;Ll/D;)V

    :goto_0
    return-void
.end method
