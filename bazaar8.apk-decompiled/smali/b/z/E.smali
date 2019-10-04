.class public Lb/z/E;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/z/F;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lb/z/F;


# direct methods
.method public constructor <init>(Lb/z/F;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/z/E;->b:Lb/z/F;

    iput-object p2, p0, Lb/z/E;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/z/E;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lb/z/E;->b:Lb/z/F;

    invoke-virtual {v0}, Lb/z/F;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/z/E;->b:Lb/z/F;

    invoke-virtual {v1}, Lb/z/F;->a()V

    throw v0
.end method
