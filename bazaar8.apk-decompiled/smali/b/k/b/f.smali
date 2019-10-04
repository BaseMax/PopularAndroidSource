.class public Lb/k/b/f;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/k/b/g;


# direct methods
.method public constructor <init>(Lb/k/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/k/b/f;->a:Lb/k/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/k/b/f;->a:Lb/k/b/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/k/b/g;->e(I)V

    return-void
.end method
