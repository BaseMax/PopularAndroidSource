.class public Ll/o;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/p;->a(Ll/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Ll/p;


# direct methods
.method public constructor <init>(Ll/p;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/o;->b:Ll/p;

    iput-object p2, p0, Ll/o;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll/o;->b:Ll/p;

    iget-object v1, v0, Ll/p;->a:Ll/d;

    iget-object v0, v0, Ll/p;->b:Ll/q$a;

    iget-object v2, p0, Ll/o;->a:Ljava/lang/Throwable;

    invoke-interface {v1, v0, v2}, Ll/d;->a(Ll/b;Ljava/lang/Throwable;)V

    return-void
.end method
