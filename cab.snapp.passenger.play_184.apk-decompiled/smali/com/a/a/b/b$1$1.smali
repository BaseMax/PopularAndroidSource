.class final Lcom/a/a/b/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/b/b$1;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/b$1;


# direct methods
.method constructor <init>(Lcom/a/a/b/b$1;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/a/a/b/b$1$1;->a:Lcom/a/a/b/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/a/a/b/b$1$1;->a:Lcom/a/a/b/b$1;

    iget-object v0, v0, Lcom/a/a/b/b$1;->a:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()V

    return-void
.end method
