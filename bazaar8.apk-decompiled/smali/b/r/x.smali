.class public Lb/r/x;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Lb/r/A$a;


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
    iput-object p1, p0, Lb/r/x;->a:Lb/r/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/r/x;->a:Lb/r/z;

    invoke-virtual {v0}, Lb/r/z;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/r/x;->a:Lb/r/z;

    invoke-virtual {v0}, Lb/r/z;->e()V

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method
