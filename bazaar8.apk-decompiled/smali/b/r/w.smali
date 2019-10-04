.class public Lb/r/w;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/r/z;


# direct methods
.method public constructor <init>(Lb/r/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/r/w;->a:Lb/r/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/r/w;->a:Lb/r/z;

    invoke-virtual {v0}, Lb/r/z;->h()V

    .line 2
    iget-object v0, p0, Lb/r/w;->a:Lb/r/z;

    invoke-virtual {v0}, Lb/r/z;->i()V

    return-void
.end method
