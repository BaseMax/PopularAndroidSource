.class final Lcom/a/a/c/i$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/i;


# direct methods
.method constructor <init>(Lcom/a/a/c/i;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/a/a/c/i$11;->a:Lcom/a/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/a/a/c/i$11;->a:Lcom/a/a/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/c/i;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
