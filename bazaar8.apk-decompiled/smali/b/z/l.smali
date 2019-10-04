.class public Lb/z/l;
.super Lb/z/f$a;
.source "MultiInstanceInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/z/r;


# direct methods
.method public constructor <init>(Lb/z/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/z/l;->a:Lb/z/r;

    invoke-direct {p0}, Lb/z/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/l;->a:Lb/z/r;

    iget-object v0, v0, Lb/z/r;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lb/z/k;

    invoke-direct {v1, p0, p1}, Lb/z/k;-><init>(Lb/z/l;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
