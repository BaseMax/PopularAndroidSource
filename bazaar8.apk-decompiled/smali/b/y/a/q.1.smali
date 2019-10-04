.class public Lb/y/a/q;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/y/a/s;


# direct methods
.method public constructor <init>(Lb/y/a/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/y/a/q;->a:Lb/y/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/y/a/q;->a:Lb/y/a/s;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lb/y/a/s;->a(I)V

    return-void
.end method
