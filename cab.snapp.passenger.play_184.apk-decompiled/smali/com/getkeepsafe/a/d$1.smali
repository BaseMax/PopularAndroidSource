.class final Lcom/getkeepsafe/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/a/d;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/getkeepsafe/a/c$c;

.field final synthetic e:Lcom/getkeepsafe/a/d;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/a/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/c$c;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/getkeepsafe/a/d$1;->e:Lcom/getkeepsafe/a/d;

    iput-object p2, p0, Lcom/getkeepsafe/a/d$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/getkeepsafe/a/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/getkeepsafe/a/d$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/getkeepsafe/a/d$1;->d:Lcom/getkeepsafe/a/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/getkeepsafe/a/d$1;->e:Lcom/getkeepsafe/a/d;

    iget-object v1, p0, Lcom/getkeepsafe/a/d$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/getkeepsafe/a/d$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/getkeepsafe/a/d$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/getkeepsafe/a/d;->a(Lcom/getkeepsafe/a/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/getkeepsafe/a/d$1;->d:Lcom/getkeepsafe/a/c$c;

    invoke-interface {v0}, Lcom/getkeepsafe/a/c$c;->success()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/getkeepsafe/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/getkeepsafe/a/d$1;->d:Lcom/getkeepsafe/a/c$c;

    invoke-interface {v1, v0}, Lcom/getkeepsafe/a/c$c;->failure(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 145
    iget-object v1, p0, Lcom/getkeepsafe/a/d$1;->d:Lcom/getkeepsafe/a/c$c;

    invoke-interface {v1, v0}, Lcom/getkeepsafe/a/c$c;->failure(Ljava/lang/Throwable;)V

    return-void
.end method
