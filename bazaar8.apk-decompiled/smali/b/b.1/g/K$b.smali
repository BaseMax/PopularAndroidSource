.class public Lb/b/g/K$b;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/g/K;


# direct methods
.method public constructor <init>(Lb/b/g/K;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/g/K$b;->a:Lb/b/g/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/K$b;->a:Lb/b/g/K;

    invoke-virtual {v0}, Lb/b/g/K;->e()V

    return-void
.end method
