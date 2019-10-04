.class public Lb/b/a/E;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/a/G;


# direct methods
.method public constructor <init>(Lb/b/a/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/E;->a:Lb/b/a/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/E;->a:Lb/b/a/G;

    invoke-virtual {v0}, Lb/b/a/G;->n()V

    return-void
.end method
